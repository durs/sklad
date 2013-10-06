unit doccfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  basefrm, editfrm, Variants,
  IBStoredProc, Menus, ActnList, IBCustomDataSet, IBUpdateSQL, Db, IBQuery,
  ComCtrls, ToolWin, DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, wwdblook, Mask, Buttons, wwdbdatetimepicker, wwdbedit,
  Wwdotdot, Wwdbcomb;

type

  TCreditDocForm = class(TBaseForm)
    qryDoc: TIBQuery;
    srcDoc: TDataSource;
    srcClient: TDataSource;
    ActionList: TActionList;
    actCancel: TAction;
    actApply: TAction;
    actNew: TAction;
    actDelete: TAction;
    actEdit: TAction;
    actPrint: TAction;
    ControlBar: TControlBar;
    barNavigator: TDBNavigator;
    ToolBar: TToolBar;
    btnPrint: TToolButton;
    ToolSep1: TToolButton;
    btnNew: TToolButton;
    btnDelete: TToolButton;
    btnEdit: TToolButton;
    btnCancel: TToolButton;
    btnApply: TToolButton;
    ToolButton3: TToolButton;
    updDoc: TIBUpdateSQL;
    qryClient: TIBQuery;
    qryClientCLIENTID: TIntegerField;
    qryClientNAME: TStringField;
    qryClientFULLNAME: TStringField;
    qryClientPHONE: TStringField;
    qryClientINN: TStringField;
    qryClientRS: TStringField;
    qryClientKS: TStringField;
    qryClientSKS: TStringField;
    qryClientMFO: TStringField;
    qryClientOKONX: TStringField;
    qryClientOKPO: TStringField;
    qryClientREG: TStringField;
    qryClientADRESS: TStringField;
    qryClientBANK: TStringField;
    qryClientKORBANK: TStringField;
    updClient: TIBUpdateSQL;
    actRefresh: TAction;
    qryDocDOCID: TIntegerField;
    qryDocPDOCID: TIntegerField;
    qryDocKIND: TIntegerField;
    qryDocDOCNO: TIBStringField;
    qryDocDATE1: TDateTimeField;
    qryDocDATE2: TDateTimeField;
    qryDocCLIENTID1: TIntegerField;
    qryDocCLIENTID2: TIntegerField;
    qryDocSUM1: TFloatField;
    qryDocSUM2: TFloatField;
    qryDocCLIENTNAME1: TIBStringField;
    qryDocCLIENTNAME2: TIBStringField;
    qryDocPARAM1: TIntegerField;
    qryDocPARAM2: TFloatField;
    qryDocPARAM3: TFloatField;
    actRecalc: TAction;
    actSaveDesktop: TAction;
    actRestoreDesktop: TAction;
    qryDocCOMMENT: TBlobField;
    qryDocPARAM4: TSmallintField;
    qryDocPARAM5: TBlobField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnClient2: TSpeedButton;
    Label5: TLabel;
    btnClient1: TSpeedButton;
    edtNo: TDBEdit;
    edtClient2: TwwDBLookupCombo;
    edtDate: TwwDBDateTimePicker;
    edtClient1: TwwDBLookupCombo;
    btnRezerv: TCheckBox;
    lbNalog: TLabel;
    edtNalog: TDBComboBox;
    edtNDS: TDBComboBox;
    lbNds: TLabel;
    Label1: TLabel;
    lbNdsSum: TLabel;
    lbNalogSum: TLabel;
    edtSum: TDBEdit;
    edtNdsSum: TDBEdit;
    edtNalogSum: TDBEdit;
    edtOplata: TwwDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    lbComment: TLabel;
    edtScheta: TwwDBLookupCombo;
    btnScheta: TSpeedButton;
    qryScheta: TIBQuery;
    srcScheta: TDataSource;
    updScheta: TIBUpdateSQL;
    qrySchetaSCHET: TIBStringField;
    qrySchetaNAME: TIBStringField;
    qrySchetaNDS: TSmallintField;
    qrySchetaNALOG: TSmallintField;
    qrySchetaDEBIT: TSmallintField;
    qryDocPARAM6: TIBStringField;
    qryDocSUM0: TFloatField;
    barDesktop: TPanel;
    edtDesktop: TComboBox;
    lbSchetName: TDBText;
    qryDocSCHETNAME: TIBStringField;
    qryDebit: TIBQuery;
    srcDebit: TDataSource;
    qryDebitDOCID: TIntegerField;
    qryDebitSUM0: TFloatField;
    qryDebitOST: TFloatField;
    qryDocSCHETNDS: TSmallintField;
    qryDocSCHETNALOG: TSmallintField;
    qryDocSCHETDEBIT: TSmallintField;
    qryDebitCLIENTID1: TIntegerField;
    qryDebitCLIENTID2: TIntegerField;
    edtDebit: TwwDBLookupCombo;
    edtDebit2: TDBEdit;
    btnDebit: TSpeedButton;
    lbDebit: TLabel;
    edtComment: TDBEdit;
    qryDocSKIND: TSmallintField;
    qryDocDEBIT: TIBStringField;
    qryDebitDOC: TIBStringField;
    qryClientCLIENT: TIBStringField;
    qryDocCLIENT1: TIBStringField;
    qryDocCLIENT2: TIBStringField;
    qryDebitKIND: TSmallintField;
    qryDebitSUM1: TFloatField;
    qryDebitSUM2: TFloatField;
    btnNo: TSpeedButton;
    qrySklad: TIBQuery;
    qrySkladCLIENTID: TIntegerField;
    qrySkladNOCHECK: TIntegerField;
    qrySkladNOORDER: TIntegerField;
    srcSklad: TDataSource;
    updSklad: TIBUpdateSQL;
    qrySkladNORORDER: TIntegerField;
    qrySkladNOPLAT: TIntegerField;
    qryDebitPARAM3: TFloatField;
    qrySchetaPREDOPLATA: TSmallintField;
    qrySchetaOPLATADOLGA: TSmallintField;
    qrySchetaOPLATA1: TSmallintField;
    qrySchetaOPLATA2: TSmallintField;
    lbDocID: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionExecute(Sender: TObject);
    procedure DataModified(DataSet: TDataSet);
    procedure srcDocDataChange(Sender: TObject; Field: TField);
    procedure PerFieldGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PerFieldSetText(Sender: TField; const Text: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryBeforeOpen(DataSet: TDataSet);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure ReadOnlyFieldSetText(Sender: TField;
      const Text: String);
    procedure btnEditClick(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qryAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataChanged(Sender: TObject);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBlobSetText(Sender: TField; const Text: String);
    procedure edtDesktopChange(Sender: TObject);
    procedure edtDebitEnter(Sender: TObject);
    procedure qryCalcFields(DataSet: TDataSet);
    procedure btnDebitClick(Sender: TObject);
    procedure srcClientDataChange(Sender: TObject; Field: TField);
    procedure edtChange(Sender: TObject);
    procedure qryDOCNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryDOCNOSetText(Sender: TField; const Text: String);
    procedure qryDocSUMGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryDocSUMSetText(Sender: TField; const Text: String);
  private
    ParamLock,SumLock:boolean;
    IsReadonly: boolean;
    Modified:boolean;
    frmEdit:TfrmEdit;
    Desktop:integer;
    debitSKind,debitClientID1,debitClientID2:integer;
    procedure SetModified(Value:boolean);
    procedure frmEditClose(Sender: TObject);
    procedure qryClientRefresh;
    procedure qryDebitRefresh;
  protected
    procedure DestroyCancel; override;
  public
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure open(id:integer; desktop:integer=0);
    procedure setClient1(id:integer);
    procedure setClient2(id:integer);
    procedure setDesktop(id:integer);
  end;

implementation
uses dataunit,config,dyutils,print;
{$R *.DFM}

constructor TCreditDocForm.Create(AOwner:TComponent);
begin
    inherited;
    btnEdit.Down:=false;
    actEdit.Execute;
end;

procedure TCreditDocForm.DestroyCancel;
begin
    inherited;
end;

destructor TCreditDocForm.Destroy;
begin
    inherited;
end;

procedure TCreditDocForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: actApply.Execute;
        mrNo: SetModified(false);
        mrCancel: CanClose:=false;
    end;
end;

procedure TCreditDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DestroyTimeout;
end;

procedure TCreditDocForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
    inherited;
    case Event of
        appClientChange: qryClientRefresh;
        appClientSelect: if not (fsInactive in self.State) and btnEdit.Down and (Desktop in [deskInDoc,deskOutDoc]) then begin
            qryClient.Active:=true;
            if qryClient.Locate('CLIENTID',TDataSet(Data)['CLIENTID'],[]) then begin
                qryDoc.Edit;
                if Desktop=deskInDoc then qryDocCLIENTNAME1.Value:=qryClientNAME.Value
                else qryDocCLIENTNAME2.Value:=qryClientNAME.Value;
            end;
        end;
    end;
end;

procedure TCreditDocForm.open(id:integer; desktop:integer=0);
begin
    if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: actApply.Execute;
        mrNo: ;
        mrCancel: Exit;
    end;
    qryDoc.ParamByName('DOCID').Value:=id;
    actRefresh.Execute;
    if qryDocDOCID.IsNull then begin
        if id>0 then raise Exception.create(msgDocNotFound);
        qryDoc.Insert;
        qryDoc.ParamByName('DOCID').Value:=qryDocDOCID.Value;
        IsReadonly:=false;
        btnEdit.Down:=true;
        actEdit.Execute;
        SetModified(true);
    end else begin
        IsReadonly:=Data.IsDocReadonly(qryDocDATE1.Value);
        if (btnEdit.Down and IsReadonly) then btnEdit.Down:=false;
        actEdit.Execute;
    end;
    setDesktop(desktop);
end;

procedure TCreditDocForm.setClient1(id:integer);
begin
    qryDoc.Edit;
    if (qryClientCLIENTID.Value=id) or qryClient.Locate('CLIENTID',id,[]) then begin
        qryDocCLIENTNAME1.Value:=qryClientNAME.Value;
    end else begin
        qryDocCLIENTNAME1.AsVariant:=null;
    end;
end;

procedure TCreditDocForm.setClient2(id:integer);
begin
    qryDoc.Edit;
    if (qryClientCLIENTID.Value=id) or qryClient.Locate('CLIENTID',id,[]) then begin
        qryDocCLIENTNAME2.Value:=qryClientNAME.Value;
    end else begin
        qryDocCLIENTNAME2.AsVariant:=null;
    end;
end;

procedure TCreditDocForm.setDesktop(id:integer);
begin
    edtDesktop.ItemIndex:=id;
    Desktop:=id;
    actRestoreDesktop.Execute;
end;
//-----------------action routens--------------------------
procedure TCreditDocForm.SetModified(Value:boolean);
begin
    Modified:=Value;
    actApply.Enabled:=Modified;
    actCancel.Enabled:=Modified;
end;

procedure TCreditDocForm.ActionExecute(Sender: TObject);
var
    readonly:boolean;
    B1,B2:boolean;
    id:integer;
begin
    if Sender=actEdit then begin
        if (btnEdit.Down and IsReadonly) then
        begin
            if (Data.CanDocModify(qryDocDATE1.Value)) then IsReadonly := false
            else btnEdit.Down:=false;
        end;
        readonly:=not btnEdit.Down;
        edtOplata.ReadOnly:=readonly;
        edtNo.ReadOnly:=readonly;
        edtDate.ReadOnly:=readonly;
        edtClient1.ReadOnly:=readonly;
        edtClient2.ReadOnly:=readonly;
        edtScheta.ReadOnly:=readonly;
        edtSum.ReadOnly:=readonly;
        edtNds.ReadOnly:=readonly;
        edtNdsSum.ReadOnly:=readonly;
        edtNalog.ReadOnly:=readonly;
        edtNalogSum.ReadOnly:=readonly;
        edtDebit.ReadOnly:=readonly;
        edtComment.ReadOnly:=readonly;
    end else if Sender=actApply then begin
        if not Modified then Exit;
        //if edtNo.Focused then edtDate.SetFocus else edtNo.SetFocus;
        qryDoc.CheckBrowseMode; B1:=qryDoc.UpdatesPending;
        qryClient.CheckBrowseMode; B2:=qryClient.UpdatesPending;
        qryScheta.CheckBrowseMode;
        if qrySklad.Active then qrySklad.CheckBrowseMode;
        Data.ApplyUpdates([qrySklad,qryClient,qryScheta,qryDoc]);
        SetModified(false);
        if B1 then begin
            appEventPost(Self,appDocChange,nil);
            appEventPost(Self,appDebitChange,nil);
        end;
        if B2 then appEventPost(Self,appClientChange,nil);
        qryDebit.Active:=false; qryDebitRefresh;
        actEdit.Execute;
        TCrackDataSet(qryDoc).RefreshControls;  //refresh
    end else if Sender=actCancel then begin
        if not Modified or (MessageBox(MsgCancel, MsgQuestion, MB_ICONQUESTION or MB_YESNO)<>mrYes) then Exit;
        if qryDoc.UpdateStatus=usInserted then begin
            SetModified(false);
            Close;
        end else begin
            if not Modified then Exit;
            qryClient.CheckBrowseMode; if qryClient.UpdatesPending then qryClient.Active:=false;
            qryScheta.CheckBrowseMode; if qryScheta.UpdatesPending then qryScheta.Active:=false;
            qrySklad.Active:=false;
            SetModified(false);
            actRefresh.Execute;
        end;
    end else if Sender=actNew then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: actApply.Execute;
            mrNo: ;
            mrCancel: Exit;
        end;
        id:=0;
        if qryDoc.Active then case Desktop of
            deskInDoc: id:=qryDocCLIENTID2.Value;
            deskOutDoc: id:=qryDocCLIENTID1.Value;
        end;
        open(0,Desktop);
        case Desktop of
            deskInDoc: setClient2(id);
            deskOutDoc: setClient1(id);
        end;
    end else if Sender=actDelete then begin
        if (IsReadonly and not Data.CanDocModify(qryDocDATE1.Value)) then Exit;
        if MessageBox(MsgDeleteDoc,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
        if qryDoc.UpdateStatus<>usInserted then begin
            Data.ExecuteSQL2('delete from doc where docid='+qryDocDOCID.AsString);
            appEventPost(Self,appDocChange,nil);
            appEventPost(Self,appDebitChange,nil);
        end;
        SetModified(false);
        Close;
    end else if Sender=actRefresh then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        qryDoc.Active:=false;
        if not (fsInactive in self.State) then begin
            qryClient.Active:=true;
            qryScheta.Active:=true;
            qryDoc.Active:=true;
        end;
        TCrackDataSet(qryDoc).RefreshControls;  //refresh
    end else if Sender=actPrint then begin
        case qryDocSKIND.Value of
            docOrder: if (qryDocSUM0.Value<=0) then printOrder(qryDocDOCID.Value,qryDoc) else printROrder(qryDocDOCID.Value,qryDoc);
            docBeznal: printPlat(qryDocDOCID.Value,qryDoc);
        end;
    end else if Sender=actSaveDesktop then begin
        //CurrentConfig.writeFields(key+'.'+IntToStr(Desktop)+'.rec',qryRec);
    end else if Sender=actRestoreDesktop then begin
        //CurrentConfig.readFields(key+'.'+IntToStr(Desktop)+'.rec',qryRec);
    end;
end;

procedure TCreditDocForm.edtDesktopChange(Sender: TObject);
begin
    setDesktop(edtDesktop.ItemIndex);
end;

procedure TCreditDocForm.edtDebitEnter(Sender: TObject);
begin
    qryDebitRefresh;
end;

procedure TCreditDocForm.edtChange(Sender: TObject);
begin
    if not btnEdit.Down or not qryDoc.Active or not(qryDoc.State in [dsEdit,dsInsert]) then exit;
    if (Sender=edtOplata) and (qryDocSKIND.Text<>edtOplata.Value) then begin
        qryDocSKIND.Text:=edtOplata.Value;
    end else if (Sender=edtNds) and (qryDocPARAM2.Text<>edtNds.Text) then begin
        qryDocPARAM2.Text:=edtNds.Text;
    end else if (Sender=edtNalog) and (qryDocPARAM3.Text<>edtNalog.Text) then begin
        qryDocPARAM3.Text:=edtNalog.Text;
    end;
end;
//---------------------queries routens------------------------------
procedure TCreditDocForm.DataModified(DataSet: TDataSet);
begin
  SetModified(true);
end;

procedure TCreditDocForm.PerFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=FormatFloat(FormatPer,Sender.AsFloat);
end;

procedure TCreditDocForm.PerFieldSetText(Sender: TField;
  const Text: String);
var
  P1,P2:integer;
  F:Double;
begin
  P1:=Pos(' ',Text); P2:=Pos('%',Text);
  if (P2<>0) and (P2<P1) then P1:=P2;
  if P1>1 then F:=StrToFloat(Copy(Text,1,P1-1)) else F:=StrToFloat(Text);
  Sender.AsFloat:=F;
end;

procedure TCreditDocForm.ReadOnlyFieldSetText(Sender: TField;
  const Text: String);
begin
  //
end;

procedure TCreditDocForm.qryBlobGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TCreditDocForm.qryBlobSetText(Sender: TField;
  const Text: String);
begin
    data.setBlobValue(Sender as TBlobField,Text);
end;

procedure TCreditDocForm.qryDOCNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if Sender.IsNull then Text:=docSAutoNo else Text:=Sender.AsString;
end;

procedure TCreditDocForm.qryDOCNOSetText(Sender: TField;
  const Text: String);
begin
    if (Text='') or (Text=docSAutoNo) then Sender.AsVariant:=null else Sender.AsString:=Text;
end;

procedure TCreditDocForm.qryDocSUMGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=FloatToStr(-Sender.AsFloat);
end;

procedure TCreditDocForm.qryDocSUMSetText(Sender: TField;
  const Text: String);
begin
    if (Text='') then Sender.AsVariant:=null  else Sender.AsFloat:=-StrToFloat(Text);
end;

procedure TCreditDocForm.qryClientRefresh;
begin
    qryClient.Active:=false;
    qryClient.Active:=true;
end;

procedure TCreditDocForm.qryDebitRefresh();
begin
    if (qryDocSKIND.Value<>debitSKind) or (qryDocCLIENTID1.Value<>debitClientID1) or (qryDocCLIENTID2.Value<>debitClientID2) then qryDebit.Active:=false;
    if edtDebit.Enabled then qryDebit.Active:=true;
end;

procedure TCreditDocForm.qryBeforeOpen(DataSet: TDataSet);
var s:string;
begin
    if DataSet=qryDoc then begin
        SetModified(false);
    end else if DataSet=qryDebit then begin
        if (qryDocSKIND.Value in docProductOplataList) then begin
            s:='(ost<>0) and (clientid1='+IntToStr(qryDocCLIENTID1.AsInteger)+' and clientid2='+IntToStr(qryDocCLIENTID2.AsInteger)+') or '
              +'(ost<>0) and (clientid1='+IntToStr(qryDocCLIENTID2.AsInteger)+' and clientid2='+IntToStr(qryDocCLIENTID1.AsInteger)+')';
        end else begin
            s:='(ost<0 and clientid1='+IntToStr(qryDocCLIENTID1.AsInteger)+' and clientid2='+IntToStr(qryDocCLIENTID2.AsInteger)+') or '
              +'(ost>0 and clientid1='+IntToStr(qryDocCLIENTID2.AsInteger)+' and clientid2='+IntToStr(qryDocCLIENTID1.AsInteger)+')';
        end;
        qryDebit.SQL[3]:=s;
    end;
end;

procedure TCreditDocForm.qryAfterOpen(DataSet: TDataSet);
begin
    if DataSet=qryDebit then begin
        debitSKind:=qryDocSKIND.Value;
        debitClientID1:=qryDocCLIENTID1.Value;
        debitClientID2:=qryDocCLIENTID2.Value;
    end;
end;

procedure TCreditDocForm.qryAfterInsert(DataSet: TDataSet);
begin
    if DataSet=qryDoc then begin
        qryDocDOCID.Value:=Data.GenID('GEN_DOCID');
        qryDocKIND.Value:=docCredit;
        qryDocSKIND.Value:=docOrder;
        qryDocDATE1.Value:=Date;
    end else if DataSet=qryClient then begin
        qryClientCLIENTID.Value:=0;
    end else if DataSet=qryScheta then begin
    end;
end;

procedure TCreditDocForm.qryBeforePost(DataSet: TDataSet);
begin
    if DataSet=qryDoc then begin
        if qryDocSUM0.IsNull then qryDocSUM0.Value:=0;
        if qryDocSUM1.IsNull then qryDocSUM1.Value:=0;
        if qryDocSUM2.IsNull then qryDocSUM2.Value:=0;
    end else if DataSet=qryClient then begin
        if (qryClientCLIENTID.Value=0) and (qryClientNAME.Value<>'') then begin
            qryClientCLIENTID.Value:=Data.GenID('GEN_CLIENTID');
        end;
    end else if DataSet=qryScheta then begin
        if qrySchetaSCHET.IsNull then qrySchetaSCHET.Value:=' ';
    end;

end;

procedure TCreditDocForm.qryAfterPost(DataSet: TDataSet);
begin
    if DataSet=qryClient then begin
        if (qryClientCLIENTID.Value=0) then qryClient.Delete;
    end else if DataSet=qryScheta then begin
        if qrySchetaSCHET.Value=' ' then qryScheta.Delete;
    end;
end;

procedure TCreditDocForm.qryCalcFields(DataSet: TDataSet);
begin
    {
    if DataSet=qryDoc then begin
        if qryDocPDOCID.IsNull
            then qryDocDEBIT.AsVariant:=null
            else qryDocDEBIT.Value:=data.getDocumentCaption(qryDocDEBITKIND.Value,qryDocDEBITSKIND.Value,qryDocDEBITDOCNO.Value,qryDocDEBITDATE1.AsString);
    end else if DataSet=qryDebit then begin
        qryDebitDOC.Value:=data.getDocumentCaption(qryDebitKIND.Value,qryDebitSKIND.Value,qryDebitDOCNO.Value,qryDebitDATE1.AsString);
    end;
    }
end;
//------------------------qryDoc-------------------------------
procedure TCreditDocForm.srcDocDataChange(Sender: TObject; Field: TField);
var
  v:string;
  id,k:integer;
  nds,nalog:double;
begin
    if (Field=nil) or (Field=qryDocKIND) then begin
        ParamLock:=true;
        try
            btnRezerv.Checked:=qryDocKIND.Value and docRezervMask <> 0;
        finally
            ParamLock:=false;
        end;
    end;
    if (Field=nil) or (Field=qryDocSCHETNDS) then begin
        edtNds.Enabled:=qryDocSCHETNDS.Value=1;
        lbNds.Enabled:=edtNds.Enabled;
    end;
    if (Field=nil) or (Field=qryDocSCHETNALOG) then begin
        edtNalog.Enabled:=qryDocSCHETNALOG.Value=1;
        lbNalog.Enabled:=edtNalog.Enabled;
    end;
    if (Field=nil) or (Field=qryDocSCHETDEBIT) then begin
        edtDebit.Enabled:=qryDocSCHETDEBIT.Value=1;
        lbDebit.Enabled:=edtDebit.Enabled;
        qryDebitRefresh();
    end;
    if (Field=nil) or (Field=qryDocPARAM2) then begin
        edtNdsSum.Enabled:=edtNds.Enabled and (qryDocPARAM2.Value<>0);
        lbNdsSum.Enabled:=edtNdsSum.Enabled;
    end;
    if (Field=nil) or (Field=qryDocPARAM3) then begin
        edtNalogSum.Enabled:=edtNalog.Enabled and (qryDocPARAM3.Value<>0);
        lbNalogSum.Enabled:=edtNalogSum.Enabled;
    end;
    if (Field=nil) or (Field=qryDocPDOCID) then begin
        edtDebit.Visible:=qryDocPDOCID.IsNull;
        edtDebit2.Visible:=not edtDebit.Visible;
    end;
    //wnen fields modified
    if (Field=nil) then exit;
    if (Field=qryDocCLIENTNAME1) then begin
        v:=qryDocCLIENTNAME1.Value;
        if (v<>'') and ((qryClientNAME.Value=v) or qryClient.Locate('NAME',v,[])) then begin
            qryDocCLIENTID1.Value:=qryClientCLIENTID.Value;
            qryDocCLIENT1.Value:=qryClientCLIENT.Value;
        end else begin
            qryDocCLIENTID1.AsVariant:=Null;
            qryDocCLIENT1.AsVariant:=Null;
            if v<>'' then qryDocCLIENTNAME1.AsVariant:=Null;
        end;
        qryDebitRefresh();
    end else if (Field=qryDocCLIENTNAME2) then begin
        v:=qryDocCLIENTNAME2.Value;
        if (v<>'') and ((qryClientNAME.Value=v) or qryClient.Locate('NAME',v,[])) then begin
            qryDocCLIENTID2.Value:=qryClientCLIENTID.Value;
            qryDocCLIENT2.Value:=qryClientCLIENT.Value;
        end else begin
            qryDocCLIENTID2.AsVariant:=Null;
            qryDocCLIENT2.AsVariant:=Null;
            if v<>'' then qryDocCLIENTNAME2.AsVariant:=Null;
        end;
        qryDebitRefresh();
    end else if (Field=qryDocCLIENTID1) then begin
        qrySklad.Active:=false;
    end else if (Field=qryDocSKIND) then begin
        qryDebitRefresh();
        qryDocPDOCID.AsVariant:=null;
        qryDocSUM0.Value:=0;
    end else if (Field=qryDocPARAM6) then begin
        v:=qryDocPARAM6.Value;
        if (v<>'') and ((qrySchetaSCHET.Value=v) or qryScheta.Locate('SCHET',v,[])) then begin
            qryDocSCHETNAME.Value:=qrySchetaNAME.Value;
            qryDocSCHETNDS.Value:=qrySchetaNDS.Value;
            qryDocSCHETNALOG.Value:=qrySchetaNALOG.Value;
            qryDocSCHETDEBIT.Value:=qrySchetaDEBIT.Value;
        end else begin
            qryDocSCHETNAME.AsVariant:=Null;
            qryDocSCHETNDS.AsVariant:=Null;
            qryDocSCHETNALOG.AsVariant:=Null;
            qryDocSCHETDEBIT.AsVariant:=Null;
            if v<>'' then qryDocPARAM6.AsVariant:=Null;
        end;
    end else if (Field=qryDocPDOCID) then begin
        id:=qryDocPDOCID.Value;
        if (id<>0) and ((qryDebitDOCID.Value=id) or qryDebit.Locate('DOCID',id,[])) then begin
            qryDocDEBIT.Value:=qryDebitDOC.Value;
            if (qryDebitCLIENTID1.Value=qryDocCLIENTID1.Value) then k:=-1 else k:=1;
            qryDocSUM0.Value:=k*qryDebitOST.Value;
            //ndssum
            if (qryDebitKIND.Value=docProduct) and (abs(qryDebitSUM0.Value-qryDebitOST.Value)<0.001) then try
                SumLock:=true;
                if (qryDocSCHETNALOG.Value=1) then begin
                    qryDocPARAM3.Value:=qryDebitPARAM3.Value;
                    qryDocSUM2.Value:=k*qryDebitSUM2.Value;
                end;
                if (qryDocSCHETNDS.Value=1) then qryDocSUM1.Value:=k*qryDebitSUM1.Value;
            finally
                SumLock:=false;
            end;
            if edtDebit2.Visible and edtDebit.Enabled and not edtDebit2.Focused then edtDebit2.SetFocus;
        end else begin
            qryDocDEBIT.AsVariant:=Null;
            if v<>'' then qryDocPDOCID.AsVariant:=Null;
            if edtDebit.Visible and edtDebit.Enabled and not edtDebit.Focused then edtDebit.SetFocus;
        end;
    end else if (Field=qryDocSCHETNDS) then begin
        if qryDocSCHETNDS.Value=1
            then qryDocPARAM2.Value:=CreditDocNDS
            else qryDocPARAM2.AsVariant:=null;
    end else if (Field=qryDocSCHETNALOG) then begin
        if (qryDocSCHETNALOG.Value=1) and data.setActiveSklad(qryDocCLIENTID1.Value)
            then qryDocPARAM3.Value:=data.qrySkladDOCPARAM3.Value
            else qryDocPARAM3.AsVariant:=null;
    end else if (Field=qryDocSCHETDEBIT) then begin
        if qryDocSCHETDEBIT.Value<>1 then qryDocPDOCID.AsVariant:=null;
    end else if not SumLock and ((Field=qryDocSUM0) or (Field=qryDocSUM1) or (Field=qryDocSUM2) or (Field=qryDocPARAM2) or (Field=qryDocPARAM3)) then try
        SumLock:=true;
        nds:=qryDocParam2.Value;
        nalog:=qryDocParam3.Value;
        if (Field<>qryDocSUM2) then qryDocSUM2.Value:=CurrRound(FloatInPer(qryDocSUM0.Value,nalog));
        if (Field<>qryDocSUM1) then qryDocSUM1.Value:=CurrRound(FloatInPer(qryDocSUM0.Value-qryDocSUM2.Value,nds));
    finally
        SumLock:=false;
    end;
end;

procedure TCreditDocForm.DataChanged(Sender: TObject);
begin
    if ParamLock then exit;
    if not btnEdit.Down then srcDocDataChange(nil,nil)
    else if Sender=btnRezerv then begin
        if btnRezerv.Checked then qryDocKIND.Value:=docProduct or docRezervMask
        else qryDocKIND.Value:=docProduct;
    end;
end;
//-------------------------qryClient---------------------------------
procedure TCreditDocForm.srcClientDataChange(Sender: TObject; Field: TField);
begin
    if (Field=qryClientNAME) or (Field=qryClientFULLNAME) then begin
        if qryClientFULLNAME.AsString='' then qryClientCLIENT.AsString:=qryClientNAME.AsString
        else qryClientCLIENT.AsString:=qryClientFULLNAME.AsString;
    end;
end;
//-------------------------edit routens---------------------------------
procedure TCreditDocForm.btnDebitClick(Sender: TObject);
begin
    if not btnEdit.Down then exit;
    qryDoc.Edit;
    qryDocPDOCID.AsVariant:=null;
end;

procedure TCreditDocForm.btnEditClick(Sender: TObject);
var
    value:string;
    ctrl:TWinControl;
begin
    if frmEdit=nil then begin
        frmEdit:=TfrmEdit.Create(self);
        frmEdit.Parent:=self;
        frmEdit.onClose:=frmEditClose;
    end;
    if frmEdit.visible then begin
        frmEdit.Hide;
        Exit;
    end;
    if sender=btnClient1 then begin
        ctrl:=edtClient1;
        ctrl.setFocus;
        value:=qryDocCLIENTNAME1.value;
        if ((value='') or ((qryClientNAME.value<>value) and not qryClient.Locate('NAME',value,[]))) and btnEdit.Down and qryClient.CanModify then qryClient.Insert;
        frmEdit.Tag:=1;
        frmEdit.DataSource:=srcClient;
    end else if sender=btnClient2 then begin
        ctrl:=edtClient2;
        ctrl.setFocus;
        value:=qryDocCLIENTNAME2.value;
        if ((value='') or ((qryClientNAME.value<>value) and not qryClient.Locate('NAME',value,[]))) and btnEdit.Down and qryClient.CanModify then qryClient.Insert;
        frmEdit.Tag:=2;
        frmEdit.DataSource:=srcClient;
    end else if sender=btnScheta then begin
        ctrl:=edtScheta;
        ctrl.setFocus;
        value:=qryDocPARAM6.value;
        if ((value='') or ((qrySchetaSCHET.value<>value) and not qryScheta.Locate('SCHET',value,[]))) and btnEdit.Down and qryScheta.CanModify then qryScheta.Insert;
        frmEdit.Tag:=3;
        frmEdit.DataSource:=srcScheta;
     end else if sender=btnNo then begin
        ctrl:=edtNo;
        ctrl.setFocus;
        if qrySklad.Params[0].AsInteger<>qryDocCLIENTID1.Value then begin
            qrySklad.Active:=false;
            qrySklad.Params[0].AsInteger:=qryDocCLIENTID1.Value;
        end;
        qrySklad.Active:=true;
        if qrySkladCLIENTID.IsNull then exit;
        frmEdit.Tag:=4;
        frmEdit.DataSource:=srcSklad;
    end else Exit;
    frmEdit.Top:=TControl(Sender).Top+TControl(Sender).Height;
    frmEdit.Left:=ctrl.Left;
    frmEdit.Width:=ctrl.Width+TControl(Sender).Width;
    if frmEdit.Width<frmEdit.Constraints.MinWidth then frmEdit.Width:=frmEdit.Constraints.MinWidth;
    frmEdit.Readonly:=not btnEdit.Down;
    frmEdit.Show;
    frmEdit.SetFocus;
end;

procedure TCreditDocForm.frmEditClose(Sender: TObject);
begin
    case frmEdit.Tag of
        1: begin
            if btnEdit.Down and frmEdit.Applied then begin
                qryDoc.Edit;
                qryDocCLIENTNAME1.Value:=qryClientNAME.Value;
            end;
            if Visible then edtClient1.SetFocus;
        end;
        2: begin
            if btnEdit.Down and frmEdit.Applied then begin
                qryDoc.Edit;
                qryDocCLIENTNAME2.Value:=qryClientNAME.Value;
            end;
            if Visible then edtClient2.SetFocus;
        end;
        3: begin
            if btnEdit.Down and frmEdit.Applied then begin
                qryDoc.Edit;
                qryDocPARAM6.Value:=qrySchetaSCHET.Value;
            end;
            if Visible then edtScheta.SetFocus;
        end;
        4: begin
            if btnEdit.Down and frmEdit.Applied then begin
                qryDoc.Edit;
                qryDocDOCNO.AsVariant:=null;
            end;
            if not qrySklad.UpdatesPending then qrySklad.Active:=false;
            if Visible then edtNo.SetFocus;
        end;
    end;
end;
//-----------------------key routens-----------------------------
procedure TCreditDocForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case data.getKeyAction(key,shift) of
        keyNew : actNew.Execute;
        keyDelete : actDelete.Execute;
        keyEdit : begin btnEdit.Down:=not btnEdit.Down; actEdit.Execute; end;
        keyRefresh : actRefresh.Execute;
        keyApply : actApply.Execute;
        keyCancel : actCancel.Execute;
        keyPrint : actPrint.Execute;
        keySearch : ;
        keyProcess : ;
        else begin
            if (Key=VK_RETURN) then begin
                if (ssCtrl in Shift) then begin
                    if (Sender=edtClient1) then btnClient1.Click
                    else if (Sender=edtClient2) then btnClient2.Click
                    else if (Sender=edtScheta) then btnScheta.Click
                    else if (Sender=edtDebit2) then btnDebit.Click
                    else if (Sender=edtNo) then btnNo.Click
                end;
            end else if (Key=VK_INSERT) and (ssCtrl in Shift) then begin
                if (Sender=edtClient1) then begin qryDocCLIENTID1.AsVariant:=null; btnClient1.Click; end
                else if (Sender=edtClient2) then begin qryDocCLIENTID2.AsVariant:=null; btnClient2.Click; end
                else if (Sender=edtScheta) then begin qryDocPARAM6.AsVariant:=null; btnScheta.Click; end
                else if (Sender=edtDebit2) then btnDebit.Click;
            end else exit;
        end;
    end;
    key:=0;
end;

end.
