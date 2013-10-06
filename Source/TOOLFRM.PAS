unit toolfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StrUtils, StdCtrls, ExtCtrls, ComCtrls, IBDatabase, Db,
  IBCustomDataSet, IBQuery, IBStoredProc ;

type
  TToolsForm = class(TForm)
    Notebook: TNotebook;
    pnlBottom: TPanel;
    rgToolKind: TRadioGroup;
    btnPrev: TButton;
    btnNext: TButton;
    edtDBTemplate: TEdit;
    Label1: TLabel;
    btnOpenDBTemplate: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edtDBCopy: TComboBox;
    btnOpenDBCopy: TButton;
    btnCopyProduct: TCheckBox;
    btnCopyClient: TCheckBox;
    btnCopySklad: TCheckBox;
    btnCopyOstatok: TCheckBox;
    btnCopyDebit: TCheckBox;
    btnCopyScheta: TCheckBox;
    dlgOpen: TOpenDialog;
    dlgSave: TSaveDialog;
    Label3: TLabel;
    edtDBFileName: TEdit;
    btnSaveDBFileName: TButton;
    Label4: TLabel;
    edtDBName: TEdit;
    barProgress: TProgressBar;
    mLog: TMemo;
    Label5: TLabel;
    edtDBSourceA: TComboBox;
    btnOpenDBSourceA: TButton;
    Label6: TLabel;
    btnSaveDBDestA: TButton;
    edtDBDestA: TEdit;
    btnMetaData: TCheckBox;
    Label7: TLabel;
    edtPasswordA: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    btnOpenDBSourceR: TButton;
    btnSaveDBDestR: TButton;
    edtDBDestR: TEdit;
    Label10: TLabel;
    edtPasswordR: TEdit;
    edtDBSourceR: TEdit;
    Label12: TLabel;
    edtPasswordO: TEdit;
    Label11: TLabel;
    edtDBSourceO: TComboBox;
    btnOpenDBSourceO: TButton;
    Label13: TLabel;
    btnCreateCopy: TCheckBox;
    btnStoreArchiv: TCheckBox;
    dbSrc: TIBDatabase;
    dbDest: TIBDatabase;
    trDef: TIBTransaction;
    Label14: TLabel;
    edtPasswordC: TEdit;
    Image1: TImage;
    GroupBox2: TGroupBox;
    edtCopySrcDB: TComboBox;
    Label15: TLabel;
    edtCopySQL: TMemo;
    GroupBox3: TGroupBox;
    edtCopyDestDB: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    edtCopyDestTable: TEdit;
    Panel1: TPanel;
    Label16: TLabel;
    edtCopyPassword: TEdit;
    Panel2: TPanel;
    Label18: TLabel;
    edtDBCor: TComboBox;
    Label21: TLabel;
    edtPsswordCor: TEdit;
    btnOpenDBCor: TButton;
    Label17: TLabel;
    btnCorOstatok: TCheckBox;
    btnCorDebit: TCheckBox;
    btnCorPrice: TCheckBox;
    btnCorDocProd: TCheckBox;
    btnCorGen: TCheckBox;
    procedure btnOpenClick(Sender: TObject);
    procedure NotebookPageChanged(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtChange(Sender: TObject);
  private
    lock, brk: boolean;
    procedure ProcessExecute(cmd:string);
    procedure Execute();
    procedure progress(msg:string; per:integer=-1);
    procedure correctGen(sql, gen: string; db: TIBDatabase);
    procedure correct(sql:string; pers:integer);
    procedure copyData(sql, table:string; pers:integer);
    procedure copyOstatok(pers:integer);
    procedure copyDebit(pers:integer);
  public
  end;

var
  ToolsForm: TToolsForm;


implementation
uses dataunit,config,basefrm,registry, dyutils;
{$R *.DFM}

procedure TToolsForm.FormCreate(Sender: TObject);
var
    y,m,d:word;
    i:integer;
begin
    lock:=false;
    DecodeDate(Date,y,m,d);
    //0
    edtDBName.Text:='sklad_'+IntToStr(y);
    edtDBFileName.Text:='database\'+edtDBName.Text+'.gdb';
    edtDBTemplate.Text:=CurrentConfig.getString('options.dbtemplate');
    edtDBCopy.Text:='';
    edtDBCopy.Items.Clear;
    for i:=0 to Databases.Count-1 do edtDBCopy.Items.Add(Databases.Values[Databases.Names[i]]);
    //1
    edtDBSourceA.Items:=edtDBCopy.Items;
    edtDBSourceA.Text:='';
    edtDBDestA.Text:='';
    //2
    edtDBSourceR.Text:='';
    edtDBDestR.Text:='';
    //3
    edtDBSourceO.Items:=edtDBCopy.Items;
    edtDBSourceO.Text:='';
    //5
    edtDBCor.Items:=edtDBCopy.Items;
    edtDBCor.Text:='';
    //6
    edtCopySrcDB.Items:=edtDBCopy.Items;
    edtCopySrcDB.Text:='';
    edtCopyDestDB.Items:=edtDBCopy.Items;
    edtCopyDestDB.Text:='';
    edtCopyDestTable.Text:='';
    //
    Notebook.PageIndex:=0;
    NotebookPageChanged(Notebook);
end;

procedure TToolsForm.NotebookPageChanged(Sender: TObject);
begin
    case Notebook.PageIndex of
        0: begin
            Caption:='Утилиты';
            btnPrev.Tag:=-1;
            btnNext.Tag:=0;
        end;
        1: begin
            btnPrev.Tag:=0;
            btnNext.Tag:=-1;
        end;
        2: begin
            btnPrev.Tag:=0;
            btnNext.Tag:=1;
        end;
        3: begin
            btnPrev.Tag:=0;
            btnNext.Tag:=1;
        end;
        4: begin
            btnPrev.Tag:=0;
            btnNext.Tag:=1;
        end;
        5: begin
            btnPrev.Tag:=0;
            btnNext.Tag:=1;
        end;
        6: begin
            btnPrev.Tag:=0;
            btnNext.Tag:=1;
        end;
        7: begin
            btnPrev.Tag:=0;
            btnNext.Tag:=1;
        end;
    end;
end;

procedure TToolsForm.btnNextClick(Sender: TObject);
var id:integer;
begin
    brk := true;
    if lock then Exit;
    if TButton(Sender).ModalResult<>mrNone then Exit;
    if (Sender=btnNext) and (Notebook.PageIndex=0) then begin
        btnNext.Tag:=rgToolKind.ItemIndex+2;
        Caption:=rgToolKind.Items[rgToolKind.ItemIndex];
    end;
    id:=Notebook.PageIndex;
    Notebook.PageIndex:=TButton(Sender).Tag;
    if (Sender=btnNext) and (Notebook.PageIndex=1) then btnPrev.Tag:=id;
    btnPrev.Enabled:=btnPrev.Tag>=0;
    //btnNext.Enabled:=btnNext.Tag>=0;
    if btnNext.Tag>=0 then btnNext.Caption:='Далее >>' else btnNext.Caption:='Отмена';
    btnNext.ModalResult:=mrNone;
    if Notebook.PageIndex=1 then Execute;
end;

procedure TToolsForm.btnOpenClick(Sender: TObject);
begin
    if (Sender=btnOpenDBTemplate) then begin
        dlgOpen.FileName:=edtDBTemplate.Text;
        dlgOpen.Filter:='InterBase database (*.gdb)|*.gdb';
    end else if (Sender=btnOpenDBCopy) then begin
        dlgOpen.FileName:=edtDBCopy.Text;
        dlgOpen.Filter:='InterBase database (*.gdb)|*.gdb';
    end else if (Sender=btnOpenDBSourceA) then begin
        dlgOpen.FileName:=edtDBSourceA.Text;
        dlgOpen.Filter:='InterBase database (*.gdb)|*.gdb';
    end else if (Sender=btnOpenDBSourceR) then begin
        dlgOpen.FileName:=edtDBSourceR.Text;
        dlgOpen.Filter:='InterBase archiv (*.gbk)|*.gbk';
    end else if (Sender=btnOpenDBSourceO) then begin
        dlgOpen.FileName:=edtDBSourceO.Text;
        dlgOpen.Filter:='InterBase database (*.gdb)|*.gdb';
    end else if (Sender=btnOpenDBCor) then begin
        dlgOpen.FileName:=edtDBCor.Text;
        dlgOpen.Filter:='InterBase database (*.gdb)|*.gdb';
    end;
    if dlgOpen.FileName='' then dlgOpen.InitialDir:=AppPath else dlgOpen.InitialDir:='';
    if not dlgOpen.Execute then Exit;
    if (Sender=btnOpenDBTemplate) then begin
        edtDBTemplate.Text:=dlgOpen.FileName;
    end else if (Sender=btnOpenDBCopy) then begin
        edtDBCopy.Text:=dlgOpen.FileName;
    end else if (Sender=btnOpenDBSourceA) then begin
        edtDBSourceA.Text:=dlgOpen.FileName;
    end else if (Sender=btnOpenDBSourceR) then begin
        edtDBSourceR.Text:=dlgOpen.FileName;
    end else if (Sender=btnOpenDBSourceO) then begin
        edtDBSourceO.Text:=dlgOpen.FileName;
    end else if (Sender=btnOpenDBCor) then begin
        edtDBCor.Text:=dlgOpen.FileName;
    end;
end;

procedure TToolsForm.btnSaveClick(Sender: TObject);
begin
    if (Sender=btnSaveDBFileName) then begin
        dlgSave.FileName:=edtDBFileName.Text;
        dlgSave.Filter:='InterBase database (*.gdb)|*.gdb';
        dlgSave.DefaultExt:='.gdb';
    end else if (Sender=btnSaveDBDestA) then begin
        dlgSave.FileName:=edtDBDestA.Text;
        dlgSave.Filter:='InterBase archiv (*.gbk)|*.gbk';
        dlgSave.DefaultExt:='.gbk';
    end else if (Sender=btnSaveDBDestR) then begin
        dlgSave.FileName:=edtDBDestR.Text;
        dlgSave.Filter:='InterBase database (*.gdb)|*.gdb';
        dlgSave.DefaultExt:='.gdb';
    end;
    if dlgSave.FileName='' then dlgSave.InitialDir:=AppPath else dlgSave.InitialDir:='';
    if not dlgSave.Execute then Exit;
    if (Sender=btnSaveDBFileName) then begin
        edtDBFileName.Text:=dlgSave.FileName;
    end else if (Sender=btnSaveDBDestA) then begin
        edtDBDestA.Text:=dlgSave.FileName;
    end else if (Sender=btnSaveDBDestR) then begin
        edtDBDestR.Text:=dlgSave.FileName;
    end;
end;

procedure TToolsForm.edtChange(Sender: TObject);
begin
    if Sender=edtDBSourceA then begin
        edtDBDestA.Text:=ChangeFileExt(edtDBSourceA.Text,'.gbk');
    end else if Sender=edtDBSourceR then begin
        edtDBDestR.Text:=ChangeFileExt(edtDBSourceR.Text,'.gdb');
    end else if Sender=edtDBName then begin
        edtDBFileName.Text:=ExtractFilePath(edtDBFileName.Text)+edtDBName.Text+'.gdb';
    end;
end;

procedure TToolsForm.Progress(msg:string; per:integer=-1);
var i:integer;
begin
    if msg<>'' then begin
        if mLog.Lines.Count>1000 then begin
            for i:=0 to 99 do mLog.Lines.Delete(0);
        end;
        mLog.Lines.Add(msg);
    end;
    if (per>=0) then barProgress.Position:=per;
    Application.ProcessMessages;
end;

procedure TToolsForm.ProcessExecute(cmd:string);
var
    pi:PROCESS_INFORMATION;
    si:STARTUPINFO;
    hw,hr:THandle;
    code:DWORD;
    stmp,buf,line:string;
    cnt:Cardinal;
    p:integer;
begin
    hw:=0;
    hr:=0;
    FillChar(si,SizeOf(si),0);
    FillChar(pi,SizeOf(pi),0);
    SetLength(buf,256);
    try
        stmp:=PChar(AppPath+'temp.~');
        hw:=CreateFile(PChar(stmp), GENERIC_WRITE, FILE_SHARE_READ, nil, CREATE_ALWAYS, FILE_ATTRIBUTE_TEMPORARY{+FILE_FLAG_DELETE_ON_CLOSE}, 0);
        if hw=INVALID_HANDLE_VALUE then raise Exception.Create(SysErrorMessage(GetLastError));
        hr:=CreateFile(PChar(stmp), GENERIC_READ, FILE_SHARE_READ+FILE_SHARE_WRITE, nil, OPEN_EXISTING, FILE_ATTRIBUTE_TEMPORARY, 0);
        if hr=INVALID_HANDLE_VALUE then raise Exception.Create(SysErrorMessage(GetLastError));
        si.cb:=SizeOf(si);
        si.dwFlags:=STARTF_USESTDHANDLES+STARTF_USESHOWWINDOW;
        si.hStdOutput:=hw;
        si.hStdError:=hw;
        si.wShowWindow:=SW_HIDE;
        if not CreateProcess(nil, PChar(cmd), nil, nil, true, 0, nil, nil, si, pi) then raise Exception.Create(SysErrorMessage(GetLastError));
        repeat
            //if not GetExitCodeProcess(pi.hProcess,code) then raise Exception.Create(SysErrorMessage(GetLastError));
            code:=WaitForSingleObject(pi.hProcess,1);
            if code=WAIT_FAILED then raise Exception.Create(SysErrorMessage(GetLastError));
            //if not FlushFileBuffers(hw) then raise Exception.Create(SysErrorMessage(GetLastError));
            while ReadFile(hr,PChar(buf)^,256,cnt,nil) and (cnt<>0) do begin
                line:=line+Copy(buf,1,cnt);
                repeat
                    p:=Pos(#13#10,line);
                    if (p<>0) then begin
                        progress(Copy(line,1,p-1));
                        line:=Copy(line,p+2,length(line));
                    end;
                until p=0;
            end;
            Application.ProcessMessages;
        until code<>WAIT_TIMEOUT; //code<>STILL_ACTIVE;
        if (line<>'') then progress(line);
    finally
        if (hr<>0) then CloseHandle(hr);
        if (hw<>0) then CloseHandle(hw);
        if pi.hProcess<>0 then CloseHandle(pi.hProcess);
        if pi.hThread<>0 then CloseHandle(pi.hThread);
        DeleteFile(stmp);
    end;
end;


procedure TToolsForm.CorrectGen(sql, gen: string; db: TIBDatabase);
var
    qry: TIBQuery;
    value:integer;
begin
    qry := TIBQuery.Create(nil);
    try
        qry.Database := db;
        qry.SQL.Text := sql;
        qry.Open;
        value := qry.Fields.Fields[0].AsInteger;
        qry.Close;
        qry.SQL.Text := 'set generator ' + gen + ' to ' + IntToStr(value);
        qry.ExecSQL;
    finally
        qry.Free;
    end;
end;

procedure TToolsForm.copyData(sql, table: string; pers:integer);
var
    src, qry: TIBQuery;
    str: string;
    i, per, peradd, maxcnt, cnt:integer;
begin
    src:=nil; qry:=nil;
    try
        src:=TIBQuery.Create(nil);
        src.Database:=dbSrc;
        qry:=TIBQuery.Create(nil);
        qry.Database:=dbDest;
        src.SQL.Text:=sql;
        src.Open;
        sql:='insert into '+table+' (';
        str:=' values (';
        for i:=0 to src.Fields.Count-1 do begin
            sql:=sql+src.Fields[i].FieldName+',';
            str:=str+':'+src.Fields[i].FieldName+',';
        end;
        sql[Length(sql)]:=')';
        str[Length(str)]:=')';
        sql:=sql+str;
        qry.SQL.text:=sql;
        qry.Prepare;
        src.FetchAll;

        maxcnt := src.RecordCount;
        per := barProgress.Position;
        cnt := 0; peradd := 0;

        while (not src.EOF) and (not brk) do begin
            for i:=0 to src.Fields.Count-1 do qry.Params[i].AssignField(src.Fields[i]);
            try
                qry.ExecSQL;
            except
                on E:Exception do progress(E.Message);
            end;
            src.Next;
            Inc(cnt);
            if (Trunc(cnt * pers / maxcnt) > peradd) then begin
                peradd := Trunc(cnt * pers / maxcnt);
                barProgress.Position := per + peradd;
                Application.ProcessMessages;
            end
        end;
        Progress('  Скопировано '+IntToStr(src.RecordCount)+' записей');
    finally
        src.Free;
        qry.Free;
    end;
end;

procedure TToolsForm.copyOstatok(pers:integer);
var
    src, qry, qryDoc, qryDocUpdate: TIBQuery;
    qryDocID: TIBStoredProc;
    sql, str: string;
    i, clntid, docid, recid: integer;
    cnt, sum0, sum1, sum2 : double;
    per, peradd, maxcnt, reccnt:integer;
begin
    src := nil; qry := nil; qryDoc := nil; qryDocID := nil; qryDocUpdate := nil;
    try
        src := TIBQuery.Create(nil);
        src.Database := dbSrc;
        src.SQL.Text :=
        'select doc_prod.docid, doc_prod.recid, doc_prod.clientid2, doc_prod.date1, ' +
        'doc_prod.prodid, doc_prod.kind, doc_prod.unit, cast((doc_prod.cnt - doc_prod.rcnt) as double precision) cnt, ' +
        '0.0 inprice, 0.0 inndsprice, ' +
        'cast(doc_prod.price as double precision) outprice, cast(doc_prod.price as double precision) price, cast(doc_prod.ndsprice as double precision) ndsprice, cast(doc_prod.newprice as double precision) newprice, ' +
        'doc_prod.nalogsum, doc_prod.comment, doc_prod.ntd ' +
        'from doc_prod ' +
        'left join product on product.prodid = doc_prod.prodid ' +
        'where doc_prod.kind = 0 and doc_prod.clientid2 in (select clientid from sklad) ' +
        'order by doc_prod.clientid2, product.name, product.classid, product.produserid ';
        src.Open;
        src.FetchAll;

        qry := TIBQuery.Create(nil);
        qry.Database := dbDest;
        sql := 'insert into doc_prod (';
        str := ' values (';
        for i:=0 to src.Fields.Count - 1 do begin
            sql := sql + src.Fields[i].FieldName + ',';
            str := str + ':' + src.Fields[i].FieldName + ',';
        end;
        sql[Length(sql)] := ')';
        str[Length(str)] := ')';
        sql := sql + str;
        qry.SQL.text := sql;
        qry.Prepare;

        qryDoc := TIBQuery.Create(nil);
        qryDoc.Database := dbDest;
        qryDoc.SQL.Text := 'insert into doc (docid, kind, skind, docno, date1, clientid1, clientid2, param1, sum0, sum1, sum2, ost) values (:docid, :kind, :skind, :docno, :date1, :clientid1, :clientid2, :param1, :sum0, :sum1, :sum2, :ost)';
        qryDoc.Prepare;

        qryDocUpdate := TIBQuery.Create(nil);
        qryDocUpdate.Database := dbDest;
        qryDocUpdate.SQL.Text := 'update doc set sum0 = :sum0, sum1 = :sum1, sum2 = :sum2 where docid = :docid';
        qryDocUpdate.Prepare;

        qryDocID := TIBStoredProc.Create(nil);
        qryDocID.Database := dbDest;
        qryDocID.StoredProcName := 'GEN_DOCID';

        clntid := -1;
        docid := 0;
        recid := 0;
        sum0 := 0.;
        sum1 := 0.;
        sum2 := 0.;

        maxcnt := src.RecordCount;
        per := barProgress.Position;
        reccnt := 0; peradd := 0;

        while (not src.EOF) and (not brk) do begin
            if (src.Fields[2].AsInteger <> clntid) then begin
                if sum0 <> 0. then begin
                    qryDocUpdate.Params.ParamByName('docid').AsInteger := docid;
                    qryDocUpdate.Params.ParamByName('sum0').AsFloat := sum0; //CurrRound
                    qryDocUpdate.Params.ParamByName('sum1').AsFloat := sum1;
                    qryDocUpdate.Params.ParamByName('sum2').AsFloat := sum2;
                    qryDocUpdate.ExecSQL;
                end;

                clntid := src.Fields[2].AsInteger;

                qryDocID.ExecProc;
                docid := qryDocID.Params[0].AsInteger;

                qryDoc.Params[0].AsInteger := docid;
                qryDoc.Params[1].AsInteger := docProduct;
                qryDoc.Params[2].AsInteger := docInner;
                qryDoc.Params[3].AsString := 'Остаток';
                qryDoc.Params[4].AsDate := Date;
                qryDoc.Params[5].AsInteger := 0;
                qryDoc.Params[6].AsInteger := clntid;
                qryDoc.Params[7].AsInteger := dpNds;
                qryDoc.Params[8].AsFloat := 0;
                qryDoc.Params[9].AsFloat := 0;
                qryDoc.Params[10].AsFloat := 0;
                qryDoc.Params[11].AsFloat := 0;
                qryDoc.ExecSQL;

                recid := 0;
                sum0 := 0.;
                sum1 := 0.;
                sum2 := 0.;
            end;
            Inc(recid, 10);

            qry.Params[0].AsInteger := docid;
            qry.Params[1].AsInteger := recid;
            qry.Params[2].AsInteger := clntid;
            for i := 3 to src.Fields.Count - 1 do qry.Params[i].AssignField(src.Fields[i]);
            cnt := src.Fields[6].AsFloat * src.Fields[7].AsFloat;;
            sum0 := sum0 + cnt * src.Fields[11].AsFloat;
            sum1 := sum1 + cnt * src.Fields[12].AsFloat;
            sum2 := sum2 + src.Fields[14].AsFloat;

            try
                qry.ExecSQL;
            except
                on E:Exception do progress(E.Message);
            end;
            src.Next;

            Inc(reccnt);
            if (Trunc(reccnt * pers / maxcnt) > peradd) then begin
                peradd := Trunc(reccnt * pers / maxcnt);
                barProgress.Position := per + peradd;
                Application.ProcessMessages;
            end
        end;

        if sum0 <> 0. then begin
            qryDocUpdate.Params.ParamByName('docid').AsInteger := docid;
            qryDocUpdate.Params.ParamByName('sum0').AsFloat := sum0; //CurrRound
            qryDocUpdate.Params.ParamByName('sum1').AsFloat := sum1;
            qryDocUpdate.Params.ParamByName('sum2').AsFloat := sum2;
            qryDocUpdate.ExecSQL;
        end;

        Progress('  Скопировано '+IntToStr(src.RecordCount)+' записей');
    finally
        src.Free;
        qry.Free;
        qryDoc.Free;
        qryDocUpdate.Free;
        qryDocID.Free;
    end;
end;

procedure TToolsForm.copyDebit(pers:integer);
var
    src, qry: TIBQuery;
    qryDocID: TIBStoredProc;
    per, peradd, maxcnt, reccnt:integer;
begin
    src := nil; qry := nil; qryDocID := nil;
    try
        src := TIBQuery.Create(nil);
        src.Database := dbSrc;
        src.SQL.Text :=
        'select doc.clientid1, doc.clientid2, max(doc.date1), sum(doc.ost) ' +
        'from doc left join scheta on scheta.schet = doc.param6 ' +
        'where (doc.ost < -0.001 or doc.ost > 0.001) ' +
        'and (doc.kind = 1 or (doc.kind = 2 and (scheta.oplata1 = 1 or scheta.oplata2 = 1))) ' +
        'and (exists(select * from sklad where clientid = doc.clientid1) or exists(select * from sklad where clientid = doc.clientid2)) ' +
        'group by doc.clientid1, doc.clientid2 ';
        src.Open;
        src.FetchAll;

        qry := TIBQuery.Create(nil);
        qry.Database := dbDest;
        qry.SQL.Text := 'select * from scheta where schet = ''Остаток''';
        qry.Active := true;
        qry.FetchAll;
        if (qry.RecordCount > 0) then qry.SQL.Text := 'update scheta set oplata1 = 1, oplata2 = 1 where schet = ''Остаток'''
        else qry.SQL.Text := 'insert into scheta (schet, name, oplata1, oplata2) values (''Остаток'', ''Задолженность за прошлый год'', 1, 1)';
        qry.ExecSQL;

        qry.SQL.Text := 'insert into doc (docid, kind, skind, docno, date1, clientid1, clientid2, param6, sum0, sum1, sum2, ost) values (:docid, :kind, :skind, :docno, :date1, :clientid1, :clientid2, :param6, :sum0, :sum1, :sum2, :ost)';
        qry.Prepare;

        qryDocID := TIBStoredProc.Create(nil);
        qryDocID.Database := dbDest;
        qryDocID.StoredProcName := 'GEN_DOCID';

        maxcnt := src.RecordCount;
        per := barProgress.Position;
        reccnt := 0; peradd := 0;

        while (not src.EOF) and (not brk) do begin
            qryDocID.ExecProc;

            qry.Params[0].AsInteger := qryDocID.Params[0].AsInteger;
            qry.Params[1].AsInteger := docCredit;
            qry.Params[2].AsInteger := docInner;
            qry.Params[3].AsString := 'Остаток';
            qry.Params[4].AssignField(src.Fields[2]);
            qry.Params[5].AssignField(src.Fields[0]);
            qry.Params[6].AssignField(src.Fields[1]);
            qry.Params[7].AsString := 'Остаток';
            qry.Params[8].AssignField(src.Fields[3]);
            qry.Params[9].AsFloat := 0;
            qry.Params[10].AsFloat := 0;
            qry.Params[11].AsFloat := 0;
            try
                qry.ExecSQL;
            except
                on E:Exception do progress(E.Message);
            end;
            src.Next;

            Inc(reccnt);
            if (Trunc(reccnt * pers / maxcnt) > peradd) then begin
                peradd := Trunc(reccnt * pers / maxcnt);
                barProgress.Position := per + peradd;
                Application.ProcessMessages;
            end
        end;

        Progress('  Скопировано '+IntToStr(src.RecordCount)+' записей');
    finally
        src.Free;
        qry.Free;
        qryDocID.Free;
    end;
end;

procedure TToolsForm.correct(sql:string; pers:integer);
var
    qry: TIBQuery;
    str: string;
    i, per, peradd, maxcnt, cnt:integer;
begin
    qry := nil;
    try
        qry := TIBQuery.Create(nil);
        qry.Database := dbSrc;
        qry.SQL.Text := sql;
        qry.Open;
        qry.FetchAll;

        maxcnt := qry.RecordCount;
        per := barProgress.Position;
        cnt := 0; peradd := 0;

        while (not qry.EOF) and (not brk) do begin
            str := '  Исправлена ошибка: ';
            for i := 0 to qry.Fields.Count - 1 do str := str + qry.Fields[i].FieldName + '=' + qry.Fields[i].AsString + '; ';
            Progress(str);
            qry.Next;

            Inc(cnt);
            if (Trunc(cnt * pers / maxcnt) > peradd) then begin
                peradd := Trunc(cnt * pers / maxcnt);
                barProgress.Position := per + peradd;
                Application.ProcessMessages;
            end
        end;


    finally
        qry.Free;
    end;
end;

procedure TToolsForm.Execute();
var
    src,dest,str:string;
    index:integer;
begin
    if lock then Exit;
    mLog.Lines.Clear;
    Progress('Подготовка ...',0);
    Screen.Cursor:=crAppStart;
    lock:=true;
    brk:=false;
    SetCurrentDir(AppPath);
    try case rgToolKind.ItemIndex of
        0: begin
            src:=ExpandFileName2(edtDBTemplate.Text);
            dest:=ExpandFileName2(edtDBFileName.Text);
            Progress('Копирование шаблона базы данных '+src+' ...',1);
            if not FileExists(src) then raise Exception.Create('Указанный шаблон базы данных '+src+' не существует.');
            if FileExists(dest) and (MessageBox(Handle,PChar('Файл '+dest+' уже существует. Заменить?'),msgQuestion,MB_ICONQUESTION + MB_YESNO)<>IDYES) then Exit;
            if not CopyFile(PChar(src),PChar(dest),false) then raise Exception.Create(SysErrorMessage(GetLastError));
            Progress('Регистрация базы данных ...',2);
            str:=edtDBName.Text;
            if str='' then str:=ChangeFileExt(ExtractFileName(dest),'');
            Databases.Values[str]:=edtDBFileName.Text;
            CurrentConfig.setMem('general.databases',Databases.Text);
            TBaseForm.appEventPost(nil,appConfig,nil);
            //copy data
            src:=ExpandFileNameDb(edtDBCopy.Text);
            if (src<>'') then try
                Progress('Копирование данных из '+src+' ...',3);
                Progress('Подключение к '+src+' ...',3);

                // correct src
                index := Pos(':',src);
                if (index > 0) and (PosEx(':', src, index + 1) <= 0) then src := ':' + src;

                dbSrc.DatabaseName:=src;
                dbSrc.Params.Values['password']:=edtPasswordC.Text;
                dbSrc.LoginPrompt := edtPasswordC.Text = '';
                dbSrc.Connected:=true;
                Progress('Подключение к '+dest+' ...',4);

                // correct dest
                index := Pos(':',dest);
                if (index > 0) and (PosEx(':', dest, index + 1) <= 0) then dest := ':' + dest;

                dbDest.DatabaseName:=dest;
                dbDest.Params.Values['password']:=edtPasswordC.Text;
                dbDest.LoginPrompt := edtPasswordC.Text = '';
                dbDest.DefaultTransaction := trDef;
                dbDest.Connected:=true;
                if not brk and btnCopyProduct.Checked then begin
                    Progress('Копирование видов товаров ...');
                    CopyData('select * from class', 'class', 3);
                    CorrectGen('select max(classid) from class', 'genclassid', dbDest);

                    Progress('Копирование производителей ...', 7);
                    CopyData('select * from produser', 'produser', 3);
                    CorrectGen('select max(produserid) from produser', 'genproduserid', dbDest);

                    Progress('Копирование товаров ...', 10);
                    CopyData('select * from product', 'product', 20);
                    CorrectGen('select max(prodid) from product', 'genprodid', dbDest);
                end;
                Progress('', 30);
                if not brk and btnCopyClient.Checked then begin
                    Progress('Копирование клиентов ...');
                    CopyData('select * from client', 'client', 16);
                    CorrectGen('select max(clientid) from client', 'genclientid', dbDest);
                end;
                Progress('', 46);
                if not brk and btnCopySklad.Checked then begin
                    Progress('Копирование складов ...');
                    CopyData('select * from sklad', 'sklad', 2);
                end;
                Progress('', 48);
                if not brk and btnCopyScheta.Checked then begin
                    Progress('Копирование счетов ...');
                    CopyData('select * from scheta', 'scheta', 2);
                end;
                Progress('', 50);
                if not brk and btnCopyOstatok.Checked then begin
                    Progress('Копирование остатка ...');
                    copyOstatok(20);
                end;
                Progress('', 70);
                if not brk and btnCopyDebit.Checked then begin
                    Progress('Копирование долгов ...');
                    copyDebit(20);
                end;
                Progress('', 95);
            finally
                dbSrc.Connected:=false;
                dbDest.Connected:=false;
            end;
        end;
        1: begin
            src:=ExpandFileName2(edtDBSourceA.Text);
            dest:=ExpandFileName2(edtDBDestA.Text);
            Progress('Создание архива базы данных ...',5);
            if not FileExists(src) then raise Exception.Create('Указанная база данных '+src+' не существует.');
            if FileExists(dest) and (MessageBox(Handle,PChar('Файл '+dest+' уже существует. Заменить?'),msgQuestion,MB_ICONQUESTION + MB_YESNO)<>IDYES) then Exit;
            str:=getIBPath('gbak.exe');
            if not FileExists(str) then raise Exception.Create('Ненайдена программа архивации '+str);
            str:=str+' -b -v';
            if (btnMetaData.Checked) then str:=str+' -m';
            str:=str+' -user SYSDBA -pas '+edtPasswordA.Text+' '+src+' '+dest;
            ProcessExecute(str);
        end;
        2: begin
            src:=ExpandFileName2(edtDBSourceR.Text);
            dest:=ExpandFileName2(edtDBDestR.Text);
            Progress('Восстановление базы данных из архива ...',5);
            if not FileExists(src) then raise Exception.Create('Указанный архив базы данных '+src+' не существует.');
            if FileExists(dest) and (MessageBox(Handle,PChar('Файл '+dest+' уже существует. Заменить?'),msgQuestion,MB_ICONQUESTION + MB_YESNO)<>IDYES) then Exit;
            str:=getIBPath('gbak.exe');
            if not FileExists(str) then raise Exception.Create('Ненайдена программа архивации '+str);
            str:=str+' -r -v -user SYSDBA -pas '+edtPasswordR.Text+' '+src+' '+dest;
            ProcessExecute(str);
        end;
        3: begin
            src:=ExpandFileName2(edtDBSourceO.Text);
            if not FileExists(src) then raise Exception.Create('Указанная база данных '+src+' не существует.');
            //create copy
            if btnCreateCopy.Checked then begin
                dest:=ChangeFileExt(src,'~.gdb');
                Progress('Создание копии базы данных '+dest+' ...',1);
                if FileExists(dest) and (MessageBox(Handle,PChar('Файл '+dest+' уже существует. Заменить?'),msgQuestion,MB_ICONQUESTION + MB_YESNO)<>IDYES) then Exit;
                if not CopyFile(PChar(src),PChar(dest),false) then raise Exception.Create(SysErrorMessage(GetLastError));
            end;
            //create archiv
            dest:=ChangeFileExt(src,'.gbk');
            Progress('Создание архива базы данных '+dest+' ...',2);
            if FileExists(dest) and (MessageBox(Handle,PChar('Файл '+dest+' уже существует. Заменить?'),msgQuestion,MB_ICONQUESTION + MB_YESNO)<>IDYES) then Exit;
            str:=getIBPath('gbak.exe');
            if not FileExists(str) then raise Exception.Create('Ненайдена программа архивации '+str);
            str:=str+' -b -v -user SYSDBA -pas '+edtPasswordO.Text+' '+src+' '+dest;
            ProcessExecute(str);
            //delete source
            Progress('Удаление исходной базы данных '+src+' ...',50);
            if not DeleteFile(src) then raise Exception.Create(SysErrorMessage(GetLastError));
            //restore database
            Progress('Восстановление базы данных из архива ...',51);
            str:=getIBPath('gbak.exe');
            if not FileExists(str) then raise Exception.Create('Ненайдена программа архивации '+str);
            str:=str+' -r -v -user SYSDBA -pas '+edtPasswordO.Text+' '+dest+' '+src;
            ProcessExecute(str);
            //delete archiv
            if not btnStoreArchiv.Checked then begin
                Progress('Удаление архива базы данных '+dest+' ...',99);
                if not DeleteFile(dest) then raise Exception.Create(SysErrorMessage(GetLastError));
            end;
        end;
        4: begin
            src := ExpandFileNameDb(edtDBCor.Text);
            try
                dbDest.DefaultTransaction := nil;

                Progress('Подключение к ' + src + ' ...', 1);
                dbSrc.DatabaseName := src;
                dbSrc.Params.Values['password'] := edtPsswordCor.Text;
                dbSrc.LoginPrompt := edtPsswordCor.Text = '';
                dbSrc.Connected := true;

                if not brk and btnCorOstatok.Checked then begin
                    Progress('Проверка: ' + btnCorOstatok.Caption + ' ...');
                    correct('select * from correct_ostatok(null, null, null, 1)', 30);
                end;
                Progress('', 30);

                if not brk and btnCorDebit.Checked then begin
                    Progress('Корректировка (без проверки): ' + btnCorDebit.Caption + ' ...');
                    correct('execute procedure correct_debit', 30);
                end;
                Progress('', 60);

                if not brk and btnCorPrice.Checked then begin
                    Progress('Проверка: ' + btnCorPrice.Caption + ' ...');
                    correct('select * from correct_price(1)', 20);
                end;
                Progress('', 80);

                if not brk and btnCorDocProd.Checked then begin
                    Progress('Проверка: ' + btnCorDocProd.Caption + ' ...');
                    correct('select * from correct_doc_prod(1)', 10);
                end;
                Progress('', 90);

                if not brk and btnCorGen.Checked then begin
                    Progress('Корректировка (без проверки): Значения генераторов ...');

                    Progress('  Class ID ...');
                    CorrectGen('select max(classid) from class', 'genclassid', dbSrc);

                    Progress('  Produser ID ...');
                    CorrectGen('select max(produserid) from produser', 'genproduserid', dbSrc);

                    Progress('  Product ID ...');
                    CorrectGen('select max(prodid) from product', 'genprodid', dbSrc);

                    Progress('  Client ID ...');
                    CorrectGen('select max(clientid) from client', 'genclientid', dbSrc);

                    Progress('  Doc ID ...');
                    CorrectGen('select max(docid) from doc', 'gendocid', dbSrc);
                end;
                Progress('', 100);
            finally
                dbSrc.Connected:=false;
            end;
        end;
        5: begin
            src:=ExpandFileNameDb(edtCopySrcDB.Text);
            dest:=ExpandFileNameDb(edtCopyDestDB.Text);
            try
                Progress('Копирование данных из ' + src + ' в ' + dest + ' ...', 1);

                Progress('Подключение к ' + src + ' ...', 1);
                dbSrc.DatabaseName := src;
                dbSrc.Params.Values['password'] := edtCopyPassword.Text;
                dbSrc.LoginPrompt := edtCopyPassword.Text = '';
                dbSrc.Connected := true;

                Progress('Подключение к ' + dest + ' ...', 2);
                dbDest.DatabaseName := dest;
                dbDest.Params.Values['password'] := edtCopyPassword.Text;
                dbDest.LoginPrompt := edtCopyPassword.Text = '';
                dbDest.DefaultTransaction := trDef;
                dbDest.Connected := true;

                Progress('Копирование данных ...');
                CopyData(edtCopySQL.Text, edtCopyDestTable.Text, 90);

                Progress('',95);
            finally
                dbSrc.Connected:=false;
                dbDest.Connected:=false;
            end;
        end;
    end finally
        lock:=false;
        Screen.Cursor:=crDefault;
    end;
    if brk then mLog.Lines.Add('Процесс остановлен')
    else mLog.Lines.Add('Процесс успешно завершён');
    barProgress.Position:=100;
    //btnNext.Enabled:=true;
    btnNext.Caption:='Готово';
    btnNext.ModalResult:=mrOk;
    btnNext.SetFocus;
end;

end.
