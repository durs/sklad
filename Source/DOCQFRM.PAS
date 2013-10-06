unit docqfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  basefrm, editfrm, variants,
  IBStoredProc, Menus, ActnList, IBCustomDataSet, IBUpdateSQL, Db, IBQuery,
  ComCtrls, ToolWin, DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, wwdblook, Mask, Buttons, wwdbdatetimepicker;

type

  TQueryDocForm = class(TBaseForm)
    qryDoc: TIBQuery;
    srcDoc: TDataSource;
    qryProd: TIBQuery;
    srcRec: TDataSource;
    qryRec: TIBQuery;
    updRec: TIBUpdateSQL;
    pnlTop: TPanel;
    edtNo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtClient2: TwwDBLookupCombo;
    grdRec: TwwDBGrid;
    edtProd: TwwDBLookupCombo;
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
    mPrint: TPopupMenu;
    PrintOut1Item: TMenuItem;
    PrintOut2Item: TMenuItem;
    PrintOut3Item: TMenuItem;
    PrintOrderItem: TMenuItem;
    procCreateDoc: TIBStoredProc;
    btnClient2: TSpeedButton;
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
    edtDate: TwwDBDateTimePicker;
    Label5: TLabel;
    btnClient1: TSpeedButton;
    edtClient1: TwwDBLookupCombo;
    actRefresh: TAction;
    qryProdPRODID: TIntegerField;
    qryProdUNIT: TFloatField;
    qryProdPRODUCT: TIBStringField;
    qryDocDOCID: TIntegerField;
    qryDocPDOCID: TIntegerField;
    qryDocKIND: TIntegerField;
    qryDocDOCNO: TIBStringField;
    qryDocDATE1: TDateTimeField;
    qryDocDATE2: TDateTimeField;
    qryDocCLIENTID1: TIntegerField;
    qryDocCLIENTID2: TIntegerField;
    qryDocCLIENTNAME1: TIBStringField;
    qryDocCLIENTNAME2: TIBStringField;
    qryDocPARAM1: TIntegerField;
    qryDocPARAM2: TFloatField;
    qryDocPARAM3: TFloatField;
    qryRecDOCID: TIntegerField;
    qryRecRECID: TIntegerField;
    qryRecPDOCID: TIntegerField;
    qryRecPRECID: TIntegerField;
    qryRecINDOCID: TIntegerField;
    qryRecINRECID: TIntegerField;
    qryRecPRODID: TIntegerField;
    qryRecKIND: TSmallintField;
    qryRecUNIT: TFloatField;
    qryRecRCNT: TFloatField;
    qryRecUCNT: TFloatField;
    qryRecPRODUCT: TIBStringField;
    qryRecALLCNT: TFloatField;
    qryRecCNT: TFloatField;
    btnRezerv: TCheckBox;
    actDoc: TAction;
    btnDoc: TToolButton;
    actSaveDesktop: TAction;
    actRestoreDesktop: TAction;
    qryDocCOMMENT: TBlobField;
    pnlBottom: TPanel;
    Label1: TLabel;
    edtComment: TDBEdit;
    lbDocID: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionExecute(Sender: TObject);
    procedure DataModified(DataSet: TDataSet);
    procedure srcDocDataChange(Sender: TObject; Field: TField);
    procedure qryRecAfterInsert(DataSet: TDataSet);
    procedure qryRecAfterOpen(DataSet: TDataSet);
    procedure qryRecBeforePost(DataSet: TDataSet);
    procedure qryRecCalcFields(DataSet: TDataSet);
    procedure qryDocBeforePost(DataSet: TDataSet);
    procedure qryDocAfterInsert(DataSet: TDataSet);
    procedure qryRecRECIDSetText(Sender: TField; const Text: String);
    procedure srcRecDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryDocBeforeOpen(DataSet: TDataSet);
    procedure qryDocAfterOpen(DataSet: TDataSet);
    procedure qryRecBeforeOpen(DataSet: TDataSet);
    procedure ReadOnlyFieldSetText(Sender: TField;
      const Text: String);
    procedure qryRecAfterPost(DataSet: TDataSet);
    procedure edtEnter(Sender: TObject);
    procedure btnClientClick(Sender: TObject);
    procedure qryClientBeforePost(DataSet: TDataSet);
    procedure qryClientAfterInsert(DataSet: TDataSet);
    procedure qryClientAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBlobSetText(Sender: TField; const Text: String);
    procedure DataChanged(Sender: TObject);
    procedure grdRecKeyPress(Sender: TObject; var Key: Char);
    procedure qryDocDOCNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryDocDOCNOSetText(Sender: TField; const Text: String);
  private
    Modified,ParamLock:boolean;
    OldRecID:integer;
    frmEdit:TfrmEdit;
    Desktop:integer;
    procedure SetModified(Value:boolean);
    procedure frmEditClose(Sender: TObject);
    procedure qryClientRefresh;
    procedure qryProdRefresh;
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
uses dataunit,config,dyutils,docfrm;
{$R *.DFM}

constructor TQueryDocForm.Create(AOwner:TComponent);
begin
    inherited;
    grdRec.OnCalcCellColors:=Data.GridCalcCellColors;
    TCrackLookup(edtProd).Grid.OnCalcCellColors:=Data.GridCalcCellColors;
end;

procedure TQueryDocForm.DestroyCancel;
begin
    inherited;
end;

destructor TQueryDocForm.Destroy;
begin
    inherited;
end;

procedure TQueryDocForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: actApply.Execute;
        mrNo: SetModified(false);
        mrCancel: CanClose:=false;
    end;
end;

procedure TQueryDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DestroyTimeout;
end;

procedure TQueryDocForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
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
        appProductChange: if qryProd.Active then qryProdRefresh;
        appProductSelect: if not (fsInactive in self.State) and btnEdit.Down and not qryRec.Locate('PRODID',TDataset(Data)['PRODID'],[]) then begin
            qryProd.Active:=true;
            if qryProd.Locate('PRODID',TDataset(Data)['PRODID'],[]) then begin
                qryRec.Append;
                srcRecDataChange(nil,qryRecPRODUCT);
                qryRec.CheckBrowseMode;
            end;
        end;
    end;
end;

procedure TQueryDocForm.open(id:integer; desktop:integer=deskNone);
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
        btnEdit.Down:=true;
        actEdit.Execute;
        SetModified(true);
    end else begin
        btnEdit.Down:=false;
        actEdit.Execute;
    end;
    setDesktop(desktop);
end;

procedure TQueryDocForm.setClient1(id:integer);
begin
    qryClient.Active:=true;
    qryDoc.Edit;
    if (qryClientCLIENTID.Value=id) or qryClient.Locate('CLIENTID',id,[]) then begin
        qryDocCLIENTNAME1.Value:=qryClientNAME.Value;
    end else begin
        qryDocCLIENTNAME1.AsVariant:=null;
    end;
end;


procedure TQueryDocForm.setClient2(id:integer);
begin
    qryClient.Active:=true;
    qryDoc.Edit;
    if (qryClientCLIENTID.Value=id) or qryClient.Locate('CLIENTID',id,[]) then begin
        qryDocCLIENTNAME2.Value:=qryClientNAME.Value;
    end else begin
        qryDocCLIENTNAME2.AsVariant:=null;
    end;
end;

procedure TQueryDocForm.setDesktop(id:integer);
begin
    Desktop:=id;
    actRestoreDesktop.Execute;
end;

procedure TQueryDocForm.SetModified(Value:boolean);
begin
    Modified:=Value;
    actApply.Enabled:=Modified;
    actCancel.Enabled:=Modified;
end;

procedure TQueryDocForm.ActionExecute(Sender: TObject);
var
    readonly:boolean;
    B1,B2,B3:boolean;
    CurBookmark:string;
    id:integer;
    frm:TForm;
begin
    if Sender=actEdit then begin
        readonly:=not btnEdit.Down;
        edtNo.ReadOnly:=readonly;
        edtDate.ReadOnly:=readonly;
        edtClient1.ReadOnly:=readonly;
        edtClient2.ReadOnly:=readonly;
        edtComment.ReadOnly:=readonly;
        grdRec.ReadOnly:=readonly;
        with grdRec do if readonly then Options:=Options - [dgEditing] else Options:=Options + [dgEditing];
        if grdRec.Focused then qryProd.Active:=true;        
    end else if Sender=actApply then begin
        if not Modified then Exit;
        //if edtNo.Focused then edtDate.SetFocus else edtNo.SetFocus;
        qryDoc.CheckBrowseMode; B1:=qryDoc.UpdatesPending;
        qryRec.CheckBrowseMode; B2:=qryRec.UpdatesPending;
        if qryClient.Active then qryClient.CheckBrowseMode; B3:=qryClient.Active and qryClient.UpdatesPending;
        Data.ApplyUpdates([qryClient,qryDoc,qryRec]);
        SetModified(false);
        if B1 then appEventPost(Self,appDocChange,nil);
        if B2 then ;
        if B3 then appEventPost(Self,appClientChange,nil);
        actEdit.Execute;
    end else if Sender=actCancel then begin
        if qryDoc.UpdateStatus=usInserted then begin
            SetModified(false);
            Close;
        end else begin
            if not Modified then Exit;
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
        if MessageBox(MsgDeleteDoc,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
        if not qryDocDOCID.IsNull and (qryDoc.UpdateStatus<>usInserted) then begin
            Data.ExecuteSQL2('delete from doc where docid='+qryDocDOCID.AsString);
            appEventPost(Self,appDocChange,nil);
            qryProd.Active:=false;
        end;
        SetModified(false);
        Close;
    end else if Sender=actRefresh then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        try
            if qryRec.Active and not qryRecRECID.IsNull then CurBookmark:=qryRec.Bookmark;
            qryDoc.DisableControls;
            qryRec.DisableControls;
            qryDoc.Active:=false;
            qryRec.Active:=false;
            if not (fsInactive in self.State) then begin
                qryDoc.Active:=true;
                qryRec.Active:=true;
                qryRec.Bookmark:=CurBookmark;
            end;
        finally
            qryDoc.EnableControls;
            qryRec.EnableControls;
        end;
    end else if Sender=actDoc then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        try
            msgStatus(msgWait);
            procCreateDoc.ParamByName('PDOCID').AsInteger:=qryDocDOCID.Value;
            procCreateDoc.ExecProc;
            if Data.trApply.InTransaction then Data.trApply.Commit;
            id:=procCreateDoc.ParamByName('DOCID').AsInteger;
            if id>0 then begin
                frm:=Load(TDocForm);
                if frm is TDocForm then TDocForm(frm).open(id,deskOutDoc);
                appEventPost(Self,appDocChange,nil);
                appEventPost(Self,appOstatokChange,nil);
            end else begin
                MessageBox(msgNotCreateDocProduct,msgInfo,MB_ICONEXCLAMATION or MB_OK);
            end;
        finally
            msgStatus('');
        end;
    end else if Sender=actSaveDesktop then begin
        CurrentConfig.writeFields(key+'.'+IntToStr(Desktop)+'.rec',qryRec);
    end else if Sender=actRestoreDesktop then begin
        CurrentConfig.readFields(key+'.'+IntToStr(Desktop)+'.rec',qryRec);
    end;
end;

procedure TQueryDocForm.edtEnter(Sender: TObject);
begin
    if (Sender=edtClient1) or (Sender=edtClient2) then qryClient.Active:=true
    else if (Sender=grdRec) and not grdRec.ReadOnly then qryProd.Active:=true;
end;
//---------------------queries routens------------------------------
procedure TQueryDocForm.DataModified(DataSet: TDataSet);
begin
    SetModified(true);
end;

procedure TQueryDocForm.ReadOnlyFieldSetText(Sender: TField;
  const Text: String);
begin
  //
end;

procedure TQueryDocForm.qryBlobGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TQueryDocForm.qryBlobSetText(Sender: TField;
  const Text: String);
begin
    data.setBlobValue(Sender  as TBlobField,Text);
end;

procedure TQueryDocForm.qryDocDOCNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if Sender.IsNull then Text:=docSAutoNo else Text:=Sender.AsString;
end;

procedure TQueryDocForm.qryDocDOCNOSetText(Sender: TField;
  const Text: String);
begin
    if (Text='') or (Text=docSAutoNo) then Sender.AsVariant:=null else Sender.AsString:=Text;
end;

procedure TQueryDocForm.qryProdRefresh;
begin
    qryProd.Active:=false;
    if grdRec.Focused and not grdRec.ReadOnly then qryProd.Active:=true;
end;

procedure TQueryDocForm.qryClientRefresh;
begin
    qryClient.Active:=false;
    if edtClient1.Focused or edtClient2.Focused then qryClient.Active:=true;
end;
//----------------------qryClient-----------------------------------
procedure TQueryDocForm.qryClientAfterInsert(DataSet: TDataSet);
begin
    qryClientCLIENTID.Value:=0;
end;

procedure TQueryDocForm.qryClientBeforePost(DataSet: TDataSet);
begin
    if (qryClientCLIENTID.Value=0) and (qryClientNAME.Value<>'') then begin
        qryClientCLIENTID.Value:=Data.GenID('GEN_CLIENTID');
    end;
end;

procedure TQueryDocForm.qryClientAfterPost(DataSet: TDataSet);
begin
    if (qryClientCLIENTID.Value=0) then qryClient.Delete;
end;
//------------------------qryDoc-------------------------------
procedure TQueryDocForm.qryDocBeforeOpen(DataSet: TDataSet);
begin
    SetModified(false);
end;

procedure TQueryDocForm.qryDocAfterOpen(DataSet: TDataSet);
begin
    //
end;

procedure TQueryDocForm.qryDocAfterInsert(DataSet: TDataSet);
begin
    qryDocDOCID.Value:=Data.GenID('GEN_DOCID');
    qryDocKIND.Value:=docQuery;
    qryDocDATE1.Value:=Date;
end;

procedure TQueryDocForm.qryDocBeforePost(DataSet: TDataSet);
begin
    //
end;

procedure TQueryDocForm.srcDocDataChange(Sender: TObject; Field: TField);
var
    v:string;
begin
    if (Field=nil) or (Field=qryDocKIND) then begin
        ParamLock:=true;
        try
            btnRezerv.Checked:=qryDocKIND.Value and docRezervMask <> 0;
        finally
            ParamLock:=false;
        end;
    end;
    if (Field=qryDocCLIENTNAME1) then begin
        v:=qryDocCLIENTNAME1.Value;
        if (v<>'') and ((qryClientNAME.Value=v) or qryClient.Locate('NAME',v,[])) then begin
            qryDocCLIENTID1.Value:=qryClientCLIENTID.Value;
        end else begin
            qryDocCLIENTID1.AsVariant:=Null;
            if v<>'' then qryDocCLIENTNAME1.AsVariant:=Null;
        end;
    end else if (Field=qryDocCLIENTNAME2) then begin
        v:=qryDocCLIENTNAME2.Value;
        if (v<>'') and ((qryClientNAME.Value=v) or qryClient.Locate('NAME',v,[])) then begin
            qryDocCLIENTID2.Value:=qryClientCLIENTID.Value;
        end else begin
            qryDocCLIENTID2.AsVariant:=Null;
            if v<>'' then qryDocCLIENTNAME2.AsVariant:=Null;
        end;
    end;
end;

procedure TQueryDocForm.DataChanged(Sender: TObject);
begin
    if ParamLock then exit;
    if not btnEdit.Down then srcDocDataChange(nil,nil)
    else if Sender=btnRezerv then begin
        if btnRezerv.Checked then qryDocKIND.Value:=docQuery or docRezervMask
        else qryDocKIND.Value:=docQuery;
    end;
end;
//--------------------qryRec----------------------------------
procedure TQueryDocForm.qryRecBeforeOpen(DataSet: TDataSet);
begin
    qryRec.Params[0].Value:=qryDocDOCID.Value;
end;

procedure TQueryDocForm.qryRecAfterOpen(DataSet: TDataSet);
begin
    qryRec.Last;
    OldRecID:=qryRecRECID.AsInteger;
    //qryRecRECID.Visible:=ExtendedInfo;
    //qryRecPRODID.Visible:=ExtendedInfo;
end;

procedure TQueryDocForm.qryRecAfterInsert(DataSet: TDataSet);
begin
    Inc(OldRecID,10);
    qryRecDOCID.Value:=qryDocDOCID.Value;
    qryRecRECID.Value:=OldRecID;
    qryRecDOCID.Value:=qryRecDOCID.Value;
    grdRec.SetActiveField('PRODUCT');
end;

procedure TQueryDocForm.qryRecBeforePost(DataSet: TDataSet);
begin
    if qryRecPRODID.IsNull then exit;
    if qryRecCNT.IsNull then qryRecCNT.Value:=0;
    if qryRecUNIT.IsNull then qryRecUNIT.Value:=1;
end;

procedure TQueryDocForm.qryRecAfterPost(DataSet: TDataSet);
begin
    if qryRecPRODID.IsNull then qryRec.Delete;
end;

procedure TQueryDocForm.qryRecCalcFields(DataSet: TDataSet);
begin
    qryRecALLCNT.Value:=qryRecCNT.Value*qryRecUNIT.Value;
end;

procedure TQueryDocForm.srcRecDataChange(Sender: TObject; Field: TField);
begin
    if (Field=nil) then begin
        edtProd.ReadOnly:=not qryRecPRODID.IsNull and (qryRec.UpdateStatus<>usInserted);
    end;
    if Field=qryRecPRODUCT then begin
        qryRecPRODID.AsVariant:=qryProdPRODID.AsVariant;
        qryRecUNIT.value:=qryProdUNIT.value;
        qryRecCNT.value:=1;
    end;
end;

procedure TQueryDocForm.qryRecRECIDSetText(Sender: TField; const Text: String);
begin
  if qryRec.UpdateStatus=usInserted then Sender.AsString:=Text;
end;
//-------------------------client edit routens---------------------------------
procedure TQueryDocForm.btnClientClick(Sender: TObject);
var value:string;
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
        edtClient1.setFocus;
        value:=qryDocCLIENTNAME1.value;
        if ((value='') or ((qryClientNAME.value<>value) and not qryClient.Locate('NAME',value,[]))) and btnEdit.Down and qryClient.CanModify then qryClient.Insert;
        frmEdit.Tag:=1;
        frmEdit.DataSource:=srcClient;
    end else if sender=btnClient2 then begin
        edtClient2.setFocus;
        value:=qryDocCLIENTNAME2.value;
        if ((value='') or ((qryClientNAME.value<>value) and not qryClient.Locate('NAME',value,[]))) and btnEdit.Down and qryClient.CanModify then qryClient.Insert;
        frmEdit.Tag:=2;
        frmEdit.DataSource:=srcClient;
    end else Exit;
    frmEdit.Top:=pnlTop.Top+TControl(Sender).Top+TControl(Sender).Height;
    frmEdit.Left:=pnlTop.Left+edtClient1.Left;
    frmEdit.Width:=edtClient1.Width+btnClient1.Width;
    frmEdit.Show;
    frmEdit.SetFocus;
end;

procedure TQueryDocForm.frmEditClose(Sender: TObject);
begin
    case frmEdit.Tag of
        1: begin
            if btnEdit.Down and frmEdit.Applied then begin
                qryDoc.Edit;
                qryDocCLIENTNAME1.Value:=qryClientNAME.Value;
            end;
            edtClient1.SetFocus;
        end;
        2: begin
            if btnEdit.Down and frmEdit.Applied then begin
                qryDoc.Edit;
                qryDocCLIENTNAME2.Value:=qryClientNAME.Value;
            end;
            edtClient2.SetFocus;
        end;
    end;
end;
//-----------------------key routens-----------------------------
procedure TQueryDocForm.FormKeyDown(Sender: TObject; var Key: Word;
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
                if (Sender=edtProd) then grdRec.SetActiveField('CNT')
                else if (ssCtrl in Shift) then begin
                    if (Sender=edtClient1) then btnClient1.Click
                    else if (Sender=edtClient2) then btnClient2.Click
                end;
            end else if (Key=VK_INSERT) and (ssCtrl in Shift) then begin
                if (Sender=edtClient1) then begin qryDocCLIENTID1.AsVariant:=null; btnClient1.Click; end
                else if (Sender=edtClient2) then begin qryDocCLIENTID2.AsVariant:=null; btnClient2.Click; end
            end else exit;
        end;
    end;
    key:=0;
end;

procedure TQueryDocForm.grdRecKeyPress(Sender: TObject; var Key: Char);
begin
    if not btnEdit.Down then Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

end.
