unit docfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  basefrm, editfrm, DyLook, math, variants, msxml_tlb, comobj,
  IBStoredProc, Menus, ActnList, IBCustomDataSet, IBUpdateSQL, Db, IBQuery,
  ComCtrls, ToolWin, DBCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, wwdblook, Mask, Buttons, wwdbdatetimepicker, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDataInspector;

type

TDocForm = class(TBaseForm)
    qryDoc: TIBQuery;
    srcDoc: TDataSource;
    qryProd: TIBQuery;
    srcRec: TDataSource;
    qryRec: TIBQuery;
    updRec: TIBUpdateSQL;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    Label1: TLabel;
    edtSum: TDBEdit;
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
    mReportDoc1: TMenuItem;
    mReportDoc2: TMenuItem;
    mReportDoc3: TMenuItem;
    mReportOrder: TMenuItem;
    lbNdsSum: TLabel;
    edtNdsSum: TDBEdit;
    procExport: TIBStoredProc;
    edtNalogSum: TDBEdit;
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
    edtDate1: TwwDBDateTimePicker;
    Label5: TLabel;
    btnClient1: TSpeedButton;
    edtClient1: TwwDBLookupCombo;
    lbNalogSum: TLabel;
    actRefresh: TAction;
    qryProdINDOCID: TIntegerField;
    qryProdINRECID: TIntegerField;
    qryProdPRODID: TIntegerField;
    qryProdCNT: TFloatField;
    qryProdUNIT: TFloatField;
    qryProdINPRICE: TFloatField;
    qryProdPRODUCT: TIBStringField;
    qryProdNDS: TFloatField;
    qryProdCOUNTRY: TIBStringField;
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
    qryDocCLIENT1: TIBStringField;
    qryDocCLIENT2: TIBStringField;
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
    qryRecINPRICE: TFloatField;
    qryRecINNDSPRICE: TFloatField;
    qryRecPRICE: TFloatField;
    qryRecOUTPRICE: TFloatField;
    qryRecNDSPRICE: TFloatField;
    qryRecNALOGSUM: TFloatField;
    qryRecNEWPRICE: TFloatField;
    qryRecPRODUCT: TIBStringField;
    qryRecALLCNT: TFloatField;
    qryProdINNDSPRICE: TFloatField;
    qryRecCNT: TFloatField;
    qryRecSUMM: TFloatField;
    qryRecNDSSUM: TFloatField;
    qryRecNDS: TFloatField;
    actRecalc: TAction;
    btnCalc: TToolButton;
    qryProdDATE1: TDateTimeField;
    barDesktop: TPanel;
    edtDesktop: TComboBox;
    mDesktop: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actSaveDesktop: TAction;
    actRestoreDesktop: TAction;
    qryDocCOMMENT: TBlobField;
    qryRecCOMMENT: TBlobField;
    qryDocPARAM4: TSmallintField;
    qryDocPARAM5: TBlobField;
    qryDocPARAM6: TIBStringField;
    qryDocSUM0: TFloatField;
    qryDocOST: TFloatField;
    Label8: TLabel;
    edtOplataSum: TDBEdit;
    qryCredit: TIBQuery;
    srcCredit: TDataSource;
    updCredit: TIBUpdateSQL;
    qryCreditDOCID: TIntegerField;
    qryCreditPDOCID: TIntegerField;
    qryCreditKIND: TSmallintField;
    qryCreditDOCNO: TIBStringField;
    qryCreditDATE1: TDateTimeField;
    qryCreditDATE2: TDateTimeField;
    qryCreditCLIENTID1: TIntegerField;
    qryCreditCLIENTID2: TIntegerField;
    qryCreditPARAM1: TSmallintField;
    qryCreditPARAM2: TFloatField;
    qryCreditPARAM3: TFloatField;
    qryCreditSUM1: TFloatField;
    qryCreditSUM2: TFloatField;
    qryCreditSUM3: TFloatField;
    qryCreditCOMMENT: TBlobField;
    qryCreditPARAM4: TSmallintField;
    qryCreditPARAM5: TBlobField;
    qryCreditPARAM6: TIBStringField;
    qryCreditSUM0: TFloatField;
    qryRecCLIENTID1: TIntegerField;
    qryDocSKIND: TSmallintField;
    qryCreditSKIND: TSmallintField;
    qryDocCLIENTNAME1: TIBStringField;
    qryDocCLIENTNAME2: TIBStringField;
    qryClientCLIENT: TIBStringField;
    qryProdCOMMENT: TBlobField;
    qryProdLEN: TIBStringField;
    lbCreditSum: TLabel;
    edtCreditSum: TDBEdit;
    qryRecSERTIFICAT: TBlobField;
    qryProdSERTIFICAT: TBlobField;
    qryRecDIM: TIBStringField;
    qryRecCOUNTRY: TIBStringField;
    qryProdDIM: TIBStringField;
    qryProdPRODUCT2: TIBStringField;
    qryRecPRODUCT2: TIBStringField;
    btnNo: TSpeedButton;
    qrySklad: TIBQuery;
    qrySkladNODOCPROD: TIntegerField;
    qrySkladNODOCPROD1: TIntegerField;
    qrySkladNOCHECK: TIntegerField;
    qrySkladNOORDER: TIntegerField;
    srcSklad: TDataSource;
    updSklad: TIBUpdateSQL;
    qrySkladCLIENTID: TIntegerField;
    qryProdPDOCID: TIntegerField;
    qryProdPRECID: TIntegerField;
    qryRecPRICEPER: TFloatField;
    mReportDoc4: TMenuItem;
    qrySkladNOVDOCPROD: TIntegerField;
    qryProdNTD: TBlobField;
    qryRecNTD: TBlobField;
    qryProdINPRICE_Calc: TFloatField;
    qryProdOUTPRICE_Calc: TFloatField;
    mRecalc: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actRecalcSum: TAction;
    actRecalcAll: TAction;
    pnlSearch: TPanel;
    btnFilter: TSpeedButton;
    edtSearch: TEdit;
    cbFields: TwwDBComboBox;
    mReportDoc3_Nalog: TMenuItem;
    pnlTop3: TPanel;
    GroupBox3: TGroupBox;
    edtNalog: TDBComboBox;
    btnNalogInPrice: TCheckBox;
    GroupBox2: TGroupBox;
    edtSkidka: TDBComboBox;
    GroupBox1: TGroupBox;
    btnVozvrat: TCheckBox;
    edtProductSrc: TwwDBLookupCombo;
    btnNDS: TCheckBox;
    btnExportPrice: TCheckBox;
    pnlTop2: TPanel;
    Label7: TLabel;
    lbCreditNo: TLabel;
    btnEditCredit: TSpeedButton;
    btnCreditNo: TSpeedButton;
    edtOplata: TwwDBComboBox;
    edtCreditNo: TDBEdit;
    btnCredit: TCheckBox;
    pnlParams: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    btnRezerv: TCheckBox;
    edtUser: TDBEdit;
    edtDate2: TwwDBDateTimePicker;
    qrySkladNOQUERY: TIntegerField;
    procCreateDoc: TIBStoredProc;
    miBreak: TMenuItem;
    miCreateDoc: TMenuItem;
    actCreateDoc: TAction;
    N4: TMenuItem;
    mSave: TMenuItem;
    mLoad: TMenuItem;
    qryClientADDRESS2: TIBStringField;
    qryDocADDRESS2: TIBStringField;
    qryProdWEIGHT: TFloatField;
    qryRecWEIGHT: TFloatField;
    qryProdOUTPRICE: TFloatField;
    qryProdLASTPRICE: TFloatField;
    mRec: TPopupMenu;
    miRecOut: TMenuItem;
    miRecField: TMenuItem;
    N3: TMenuItem;
    miPrintFile: TMenuItem;
    pnlDocID: TPanel;
    lbDocID: TDBText;
    qryDocSKLADID: TIntegerField;
    qryRecNEWPRICE2: TFloatField;
    qryRecNEWPRICE3: TFloatField;
    qryRecPRICEPER2: TFloatField;
    qryRecPRICEPER3: TFloatField;
    Label10: TLabel;
    edtPrice: TComboBox;
    qryProdOUTPRICE2: TFloatField;
    qryProdOUTPRICE3: TFloatField;
    qryProdOUTPRICE2_Calc: TFloatField;
    qryProdOUTPRICE3_Calc: TFloatField;
    qryRecLEN: TIBStringField;
    qryDocSUM3: TFloatField;
    GroupBox4: TGroupBox;
    edtTransportPer: TDBComboBox;
    qryDocPARAM7: TFloatField;
    Label11: TLabel;
    edtTransportSum: TDBEdit;
    qryProdLASTPRICE2: TFloatField;
    qryProdLASTPRICE3: TFloatField;
    qryDebit: TIBQuery;
    qryDebitDOC: TIBStringField;
    qryDebitSUM0: TFloatField;
    qryDebitOST: TFloatField;
    qryDebitDOCID: TIntegerField;
    qryDebitCLIENTID1: TIntegerField;
    qryDebitCLIENTID2: TIntegerField;
    qryDebitKIND: TSmallintField;
    qryDebitSUM1: TFloatField;
    qryDebitSUM2: TFloatField;
    qryDebitPARAM3: TFloatField;
    edtDebit: TwwDBLookupCombo;
    btnSelectCredit: TSpeedButton;
    edtComment: TDBEdit;
    N5: TMenuItem;
    N6: TMenuItem;
    miReportEnd: TMenuItem;
    qryProdOUTPRICE4: TFloatField;
    qryProdOUTPRICE5: TFloatField;
    qryProdLASTPRICE4: TFloatField;
    qryProdLASTPRICE5: TFloatField;
    qryProdOUTPRICE4_Calc: TFloatField;
    qryProdOUTPRICE5_Calc: TFloatField;
    qryRecNEWPRICE4: TFloatField;
    qryRecNEWPRICE5: TFloatField;
    qryRecPRICEPER4: TFloatField;
    qryRecPRICEPER5: TFloatField;
    qrySkladNODOCSCHET: TIntegerField;
    qryDocDOCNO2: TStringField;
    qryRecPRODUCTNAME: TIBStringField;
    qryRecPRODUSER: TIBStringField;
    qryRecCLASSNAME: TIBStringField;
    procedure edtDebitExit(Sender: TObject);
    procedure btnSelectCreditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionExecute(Sender: TObject);
    procedure DataModified(DataSet: TDataSet);
    procedure DocSumChange(Sender: TField);
    procedure srcDocDataChange(Sender: TObject; Field: TField);
    procedure qryRecAfterInsert(DataSet: TDataSet);
    procedure qryRecAfterOpen(DataSet: TDataSet);
    procedure qryRecBeforePost(DataSet: TDataSet);
    procedure qryRecCalcFields(DataSet: TDataSet);
    procedure PerFieldGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PerFieldSetText(Sender: TField; const Text: String);
    procedure qryProdBeforeOpen(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryAfterInsert(DataSet: TDataSet);
    procedure qryRecRECIDSetText(Sender: TField; const Text: String);
    procedure srcRecDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryBeforeOpen(DataSet: TDataSet);
    procedure qryRecBeforeOpen(DataSet: TDataSet);
    procedure ReadOnlyFieldSetText(Sender: TField;
      const Text: String);
    procedure qryRecBeforeEdit(DataSet: TDataSet);
    procedure qryRecBeforeDelete(DataSet: TDataSet);
    procedure qryRecAfterPost(DataSet: TDataSet);
    procedure edtEnter(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure qryClientBeforePost(DataSet: TDataSet);
    procedure qryClientAfterInsert(DataSet: TDataSet);
    procedure qryClientAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataChanged(Sender: TObject);
    procedure edtProductSrcChange(Sender: TObject);
    procedure edtDesktopChange(Sender: TObject);
    procedure qryBlobGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryBlobSetText(Sender: TField; const Text: String);
    procedure qryAfterOpen(DataSet: TDataSet);
    procedure edtChange(Sender: TObject);
    procedure qryRecUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure srcClientDataChange(Sender: TObject; Field: TField);
    procedure qryRecPRODUCTNAMEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnEditCreditClick(Sender: TObject);
    procedure print(Sender: TObject);
    procedure mPrintPopup(Sender: TObject);
    procedure qryDOCNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryDOCNOSetText(Sender: TField; const Text: String);
    procedure qryCreditSUM0GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryCreditSUM0SetText(Sender: TField; const Text: String);
    procedure grdRecKeyPress(Sender: TObject; var Key: Char);
    procedure qryProdCalcFields(DataSet: TDataSet);
    procedure grdRecTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure grdRecCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure grdRecCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure edtSearchChange(Sender: TObject);
    procedure cbFieldsChange(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFilterClick(Sender: TObject);
    procedure mLoadClick(Sender: TObject);
    procedure miRecOutClick(Sender: TObject);
    procedure grdRecIButtonClick(Sender: TObject);
    procedure miRecFieldClick(Sender: TObject);
    procedure qryRecAfterEdit(DataSet: TDataSet);
    procedure qryRecBeforeCancel(DataSet: TDataSet);
    procedure edtProdDropDown(Sender: TObject);
    procedure qryDocUpdateRecord(DataSet: TDataSet; UpdateKind: TUpdateKind;
      var UpdateAction: TIBUpdateAction);
    procedure edtProdPerformCustomSearch(Sender: TObject; LookupTable: TDataSet;
      SearchField, SearchValue: string; PerformLookup: Boolean;
      var Found: Boolean);
  private
    IsQuery: boolean;
    IsReadonly: boolean;

    lock, ParamLock, PriceLock, CalcLock, FieldCalcLock, RecalcData, LoadLock, ClientLock: boolean;
    DocParams, ExportParams: integer;
    PriceRoundKoef, PriceRoundKoef2, PriceRoundKoef3, PriceRoundKoef4, PriceRoundKoef5, PriceParam: integer;
    PriceRoundKoefIn, PriceRoundKoefIn2, PriceRoundKoefIn3, PriceRoundKoefIn4, PriceRoundKoefIn5, NewParams:integer;
    PricePercent, PricePercent2, PricePercent3, PricePercent4, PricePercent5: double;
    PriceVisible, PriceVisible2, PriceVisible3, PriceVisible4, PriceVisible5: boolean;
    PriceName, PriceName2, PriceName3, PriceName4, PriceName5: string;

    PricePercentIn, PricePercentIn2, PricePercentIn3, PricePercentIn4, PricePercentIn5, ExportPercent, NewNalog: double;
    PriceVisibleIn, PriceVisibleIn2, PriceVisibleIn3, PriceVisibleIn4, PriceVisibleIn5: boolean;
    PriceNameIn, PriceNameIn2, PriceNameIn3, PriceNameIn4, PriceNameIn5: string;

    Modified: boolean;
    OldSum, OldNdsSum, OldNalogSum, OldSum3: Double;
    OldRecID: integer;
    ProdSQL, ProdFilter: string;

    SQLParser: TDySQLParser;
    DBLookup: TDyDBLookup;
    frmEdit: TfrmEdit;
    Desktop: integer;
    procedure SetModified(Value: boolean);
    procedure SetIsQuery(isqry: boolean);
    procedure frmEditClose(Sender: TObject);
    procedure qryClientRefresh;
    procedure qryProdRefresh;
    procedure qryRecRefresh();
    procedure qryRefresh();
    procedure UpdateClient1;
    procedure UpdateClient2;
    procedure UpdateSklad;
    procedure UpdateGrid;
    procedure FilterRecords(Sender:TObject; const filter:string);
    procedure WMTimer(var Message:TWMTimer); message WM_TIMER;
  protected
    procedure DestroyCancel; override;
  public
    procedure appEvent(Sender:TObject; var Event:word; Data:pointer); override;
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure open(id: integer; desktop: integer = 0; isqry: boolean = false);
    procedure setClient1(id:integer);
    procedure setClient2(id:integer);
    procedure setDesktop(id:integer);
    procedure setParams(params:string);
    procedure SaveToFile(filename:string);
    procedure LoadFromFile(filename:string; params:integer);
  end;

implementation
uses dataunit, config, dyutils, dydbutil, print, repdataunit,
    printfrm, doccfrm, docoutfrm, gridfrm;
{$R *.DFM}

constructor TDocForm.Create(AOwner:TComponent);
begin
    LoadLock := false;
    ClientLock := false;
    lock := false;
    inherited;
    SetIsQuery(false);
    
    //init objects
    DBLookup := TDyDBLookup.Create(Data.QuoteChar);
    DBLookup.Style := DBLookup.Style + [lsSQLFilter];
    DBLookup.RecordCount := 5;
    DBLookup.DataSource := srcRec;
    DBLookup.Control := edtSearch;
    DBLookup.OnFilter := FilterRecords;
    SQLParser := TDySQLParser.Create(qryRec.SQL.Text);

    grdRec.OnCalcCellColors := Data.GridCalcCellColors;
    TCrackLookup(edtProd).Grid.OnCalcCellColors := Data.GridCalcCellColors;

    cbFields.Items.Text := getSearchFieldsMapped(qryRec);
    cbFields.Value := 'PRODUCT2';
    cbFields.Hint := msgFilterComboHint;
    //cbFieldsChange(cbFields);

    btnFilter.Down := CurrentConfig.getBoolean(Key+'.filtered');
    btnFilter.Hint := msgFilterBtnHint;
    btnFilterClick(btnFilter);

    qryDocSUM0.DisplayFormat:=FormatCur;
    qryDocSUM1.DisplayFormat:=FormatCur;
    qryDocSUM2.DisplayFormat:=FormatCur;
    qryDocSUM3.DisplayFormat:=FormatCur;
    qryDocOST.DisplayFormat:=FormatCur;
    //qryCreditSUM0.DisplayFormat:=FormatCur;
    qryRecUNIT.DisplayFormat:=FormatNum;
    qryRecUNIT.EditFormat:=FormatEditCur;
    qryRecCNT.DisplayFormat:=FormatNum;
    qryRecCNT.EditFormat:=FormatEditCur;
    qryRecALLCNT.DisplayFormat:=FormatNum;
    qryRecALLCNT.EditFormat:=FormatEditCur;
    qryRecINPRICE.DisplayFormat:=FormatCur;
    qryRecNDSPRICE.DisplayFormat:=FormatCur;
    qryRecOUTPRICE.DisplayFormat:=FormatCur;
    qryRecOUTPRICE.EditFormat:=FormatEditCur;
    qryRecPRICE.DisplayFormat:=FormatCur;
    qryRecPRICE.EditFormat:=FormatEditCur;
    qryRecSUMM.DisplayFormat:=FormatCur;
    qryRecSUMM.EditFormat:=FormatEditCur;
    qryRecNDSSUM.DisplayFormat:=FormatCur;
    qryRecNDSSUM.EditFormat:=FormatEditCur;
    qryRecNALOGSUM.DisplayFormat:=FormatCur;
    qryRecPRICEPER.DisplayFormat:=FormatPer;
    qryRecPRICEPER2.DisplayFormat:=FormatPer;
    qryRecPRICEPER3.DisplayFormat:=FormatPer;
    qryRecPRICEPER4.DisplayFormat:=FormatPer;
    qryRecPRICEPER5.DisplayFormat:=FormatPer;
    qryProdINPRICE_Calc.DisplayFormat:=FormatCur;
    qryProdOUTPRICE_Calc.DisplayFormat:=FormatCur;
    qryProdOUTPRICE2_Calc.DisplayFormat:=FormatCur;
    qryProdOUTPRICE3_Calc.DisplayFormat:=FormatCur;
    qryProdOUTPRICE4_Calc.DisplayFormat:=FormatCur;
    qryProdOUTPRICE5_Calc.DisplayFormat:=FormatCur;
    qryProdUNIT.DisplayFormat:=FormatNum;
    qryProdCNT.DisplayFormat:=FormatNum;
    btnExportPrice.Checked:=CurrentConfig.getBoolean(key+'.export_price',true);

    ProdSQL:=qryProd.SQL.Text;
    if UseFullSearch then begin
      edtProd.ShowMatchText := false;
      edtProd.OnPerformCustomSearch := edtProdPerformCustomSearch;
    end;

    btnEdit.Down:=false;
    actEdit.Execute;
end;

procedure TDocForm.DestroyCancel;
begin
    inherited;
end;

destructor TDocForm.Destroy;
begin
    CurrentConfig.setBoolean(Key + '.export_price', btnExportPrice.Checked);
    CurrentConfig.setBoolean(Key + '.filtered', btnFilter.Down);
    //CurrentConfig.setString(Key+'.orderby', SQLParser.OrderBy);
    SQLParser.Free;
    DBLookup.Free;
    inherited;
end;

procedure TDocForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: actApply.Execute;
        mrNo: SetModified(false);
        mrCancel: CanClose:=false;
    end;
end;

procedure TDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if (frmRecRef <> nil) then frmRecRef.Close;
    DestroyTimeout;
end;

procedure TDocForm.appEvent(Sender:TObject; var Event:word; Data:pointer);
begin
    inherited;
    case Event of
        appSkladChange: begin
            UpdateSklad;
            UpdateClient1;
            UpdateClient2;
        end;
        appClientChange: qryClientRefresh;
        appClientSelect: if not (fsInactive in self.State) and btnEdit.Down and (Desktop in [deskInDoc,deskOutDoc]) then begin
            qryClient.Active:=true;
            if qryClient.Locate('CLIENTID',TDataSet(Data)['CLIENTID'],[]) then begin
                qryDoc.Edit;
                if Desktop=deskInDoc then qryDocCLIENTNAME1.Value:=qryClientNAME.Value
                else qryDocCLIENTNAME2.Value:=qryClientNAME.Value;
            end;
        end;
        appProductChange: if qryProd.Active and qryProd.Params[0].IsNull then qryProdRefresh;
        appProductSelect: if not (fsInactive in self.State) and btnEdit.Down and not qryRec.Locate('PRODID',TDataset(Data)['PRODID'],[]) then begin
            if ProdFilter<>'' then begin
              ProdFilter:='';
              qryProd.Active:=false;
            end;
            qryProd.Active:=true;
            if not qryProd.Params[0].IsNull then exit;
            if qryProd.Locate('PRODID',TDataset(Data)['PRODID'],[]) then begin
                qryRec.Append;
                srcRecDataChange(nil,qryRecPRODUCT2);
                qryRec.CheckBrowseMode;
            end;
        end;
        appOstatokChange: if qryProd.Active and not qryProd.Params[0].IsNull then qryProdRefresh;
        appOstatokSelect: if not (fsInactive in self.State) and btnEdit.Down then begin
            if not qryRec.Locate('INDOCID;INRECID', VarArrayOf([TDataset(Data)['DOCID'], TDataset(Data)['RECID']]), []) then begin
                if ProdFilter<>'' then begin
                  ProdFilter:='';
                  qryProd.Active:=false;
                end;
                qryProd.Active:=true;
                if qryProd.Locate('INDOCID;INRECID', VarArrayOf([TDataset(Data)['DOCID'], TDataset(Data)['RECID']]), []) then begin
                    qryRec.Append;
                    srcRecDataChange(nil, qryRecPRODUCT2);
                    qryRec.CheckBrowseMode;
                end else begin
                    MessageBeep(MB_ICONERROR) 
                end;
            end;
        end;
    end;
end;

procedure TDocForm.SetIsQuery(isqry: boolean);
begin
    IsQuery := isqry;

    if IsQuery then begin
        Caption := 'Заказ';
        pnlBottom.Height := 32;
    end
    else begin
        Caption := 'Накладная';
        pnlBottom.Height := 58;
    end;
    pnlTop2.Visible := not IsQuery;
    pnlParams.Visible := not IsQuery;
    btnVozvrat.Enabled := not IsQuery;
    miCreateDoc.Visible := IsQuery;
    miBreak.Visible := IsQuery;

    AppEventSend(self, appRefresh, nil);
end;

procedure TDocForm.open(id: integer; desktop: integer = deskNone; isqry: boolean = false);
begin
    if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
        mrYes: actApply.Execute;
        mrNo: SetModified(false);
        mrCancel: Exit;
    end;
    qryDoc.ParamByName('DOCID').Value:=id;
    actRefresh.Execute;
    if qryDocDOCID.IsNull then begin
        if id > 0 then raise Exception.create(msgDocNotFound);
        SetIsQuery(isqry);
        qryDoc.Insert;
        qryDoc.ParamByName('DOCID').Value:=qryDocDOCID.Value;
        IsReadonly:=false;
        btnEdit.Down:=true;
        actEdit.Execute;
        SetModified(true);
    end else begin
        SetIsQuery((qryDocKIND.Value and docKindMask) = docQuery);
        IsReadonly:=Data.IsDocReadonly(qryDocDATE1.Value);
        if (btnEdit.Down and IsReadonly) then btnEdit.Down:=false;
        actEdit.Execute;
    end;
    setDesktop(desktop);
end;

procedure TDocForm.setClient1(id:integer);
begin
    qryClient.Active:=true;
    qryDoc.Edit;
    if (qryClientCLIENTID.Value=id) or qryClient.Locate('CLIENTID',id,[]) then begin
        qryDocCLIENTNAME1.Value:=qryClientNAME.Value;
    end else begin
        qryDocCLIENTNAME1.AsVariant:=null;
    end;
end;

procedure TDocForm.setClient2(id:integer);
begin
    qryClient.Active:=true;
    qryDoc.Edit;
    if (qryClientCLIENTID.Value=id) or qryClient.Locate('CLIENTID',id,[]) then begin
        qryDocCLIENTNAME2.Value:=qryClientNAME.Value;
    end else begin
        qryDocCLIENTNAME2.AsVariant:=null;
    end;
end;

procedure TDocForm.setParams(params:string);
var
  list:TStringList;
  skind,param1:integer;
begin
  list:=TStringList.Create;
  list.Delimiter:=';';
  list.DelimitedText:=params;

  if list.Count>0 then skind:=StrToIntDef(list[0],0) else skind:=0;
  if list.Count>1 then param1:=StrToIntDef(list[1],0) else param1:=0;

  qryDoc.Edit;
  if skind>0 then qryDocSKIND.AsInteger:=skind;
  if param1>0 then qryDocPARAM1.AsInteger:=qryDocPARAM1.AsInteger or param1;
end;

procedure TDocForm.setDesktop(id:integer);
begin
    edtDesktop.ItemIndex:=id;
    Desktop:=id;
    actRestoreDesktop.Execute;
    UpdateGrid;
end;

//-----------------action routens--------------------------

procedure TDocForm.SetModified(Value:boolean);
begin
    Modified:=Value;
    actApply.Enabled:=Modified;
    actCancel.Enabled:=Modified;
end;

procedure TDocForm.ActionExecute(Sender: TObject);
var
    readonly: boolean;
    B1,B2,B3,B4: boolean;
    CurBookmark: string;
    Sum,SumNDS,SumNalog: double;
    id, kind: integer;
    frm: TForm;
begin
    if Sender=actEdit then begin
        if (btnEdit.Down and IsReadonly) then
        begin
            if (Data.CanDocModify(qryDocDATE1.Value)) then IsReadonly := false
            else btnEdit.Down:=false;
        end;
        readonly:=not btnEdit.Down;
        edtProductSrc.ReadOnly:=readonly;
        edtNo.ReadOnly:=readonly;
        edtDate1.ReadOnly:=readonly;
        edtDate2.ReadOnly:=readonly;
        edtClient1.ReadOnly:=readonly;
        edtClient2.ReadOnly:=readonly;
        edtUser.ReadOnly:=readonly;
        edtComment.ReadOnly:=readonly;
        edtSkidka.ReadOnly:=readonly;
        edtNalog.ReadOnly:=readonly;
        edtSum.ReadOnly:=readonly;
        edtNdsSum.ReadOnly:=readonly;
        edtNalogSum.ReadOnly:=readonly;
        edtOplataSum.ReadOnly:=readonly;
        edtOplata.ReadOnly:=readonly;
        edtCreditNo.ReadOnly:=readonly;
        edtCreditSum.ReadOnly:=readonly;
        btnSelectCredit.Enabled:=not readonly;
        edtTransportPer.ReadOnly:=readonly;
        edtTransportSum.ReadOnly:=readonly;
        grdRec.ReadOnly:=readonly;
        with grdRec do if readonly then Options:=Options - [dgEditing] else Options:=Options + [dgEditing];
        if not readonly and grdRec.Focused then begin
          if ProdFilter<>'' then begin
            ProdFilter:='';
            qryProd.Active:=false;
          end;
          qryProd.Active:=true;
        end;
    end else if Sender=actApply then begin
        if not Modified then Exit;
        if Visible then SetFocus;

        // recalc records?
        if RecalcData and (qryRec.RecordCount > 0) then
            case MessageBox(MsgRecalc, MsgQuestion, MB_ICONQUESTION or MB_YESNOCANCEL) of
                mrYes: actRecalcAll.Execute;
                mrCancel: Exit;
            end;

        // update credit
        if qryCredit.Active and not qryCreditDOCID.IsNull and (qryCreditDOCID.Value = 0) then begin
            qryCredit.Edit;
            qryCreditDOCID.Value:=Data.GenID('GEN_DOCID');
            qryCreditPDOCID.Value:=qryDocDOCID.Value;
            qryCredit.Params[0].AsInteger:=qryCreditDOCID.Value;
            qryDoc.Edit;
            qryDocPDOCID.Value:=qryCreditDOCID.Value;
        end;
        qryDoc.CheckBrowseMode; B1:=qryDoc.UpdatesPending;
        if qryCredit.Active and not qryCreditDOCID.IsNull and (qryCredit.Tag = 0) then begin
            qryCredit.Edit;
            //qryCreditPDOCID.Value:=qryDocDOCID.Value;
            qryCreditCLIENTID1.Value:=qryDocCLIENTID1.Value;
            qryCreditCLIENTID2.Value:=qryDocCLIENTID2.Value;
            qryCreditKIND.Value:=docCredit or (qryDocKIND.Value and docRezervMask);
            qryCreditSKIND.Value:=qryDocSKIND.Value;
            if (qryCreditKIND.Value and docRezervMask <> 0) then qryCreditDOCNO.AsVariant := null;
            if (dpNds and DocParams)<>0 then qryCreditPARAM2.Value:=CreditDocNds else qryCreditPARAM2.Value:=0; //nds
            qryCreditPARAM3.AsVariant:=qryDocPARAM3.AsVariant; //nalog
            if (abs(qryDocSUM0.Value + qryCreditSUM0.Value) < 0.001) then begin
                qryCreditSUM2.Value:=-qryDocSUM2.Value; //nalogsum
                qryCreditSUM1.Value:=-qryDocSUM1.Value; //ndssum
            end else begin
                qryCreditSUM2.Value:=CurrRound(FloatInPer(qryCreditSUM0.Value,qryCreditPARAM3.Value)); //nalogsum
                qryCreditSUM1.Value:=CurrRound(FloatInPer(qryCreditSUM0.Value-qryCreditSUM2.Value,qryCreditPARAM2.Value)); //ndssum
            end;
            qryCreditPARAM6.Value:=CreditDocSchet;
            qryCreditDATE1.AsVariant:=qryDocDATE1.AsVariant;
        end;

        try
            // update transport rec
            {
            qryRec.DisableControls;
            if not qryRecRECID.IsNull then CurBookmark := qryRec.Bookmark;
            qryRec.First;
            while not qryRec.EOF do begin
                if (qryRecRECID.AsInteger = -1) then break;
                qryRec.Next;
            end;
            if (qryDocSUM3.AsFloat > 0) then begin
                if (qryRecRECID.AsInteger <> -1) then qryRec.Insert else qryRec.Edit;
                qryRecRECID.Value := -1;
                qryRecUNIT.Value := 1;
                qryRecCNT.Value := 1;
                qryRecNDS.Value := 0;
                qryRecPRICE.Value := qryDocSUM3.Value;
                qryRec.Post;
            end else if (qryRecRECID.AsInteger = -1) then begin
                qryRec.Delete;
            end;
            qryRec.Bookmark:=CurBookmark;
            }

            // apply changes
            qryRec.CheckBrowseMode; B2:=qryRec.UpdatesPending;
            if qryClient.Active then qryClient.CheckBrowseMode; B3:=qryClient.Active and qryClient.UpdatesPending;
            if qryCredit.Active then qryCredit.CheckBrowseMode; B4:=qryCredit.Active and qryCredit.UpdatesPending;
            if qrySklad.Active then qrySklad.CheckBrowseMode;
            Data.ApplyUpdates([qrySklad, qryClient, qryDoc, qryRec, qryCredit]);
        finally
            //qryRec.EnableControls;
        end;
        SetModified(false);

        // notify
        if B1 or B4 then begin
            appEventPost(Self,appDocChange,nil);
            appEventPost(Self,appDebitChange,nil);
        end;
        if B2 then begin
            if qryProd.Active {and not qryProd.Params[0].IsNull} then qryProdRefresh;
            appEventPost(Self,appOstatokChange,nil);
            if (PriceParam = 1) then appEventPost(Self,appProductChange,nil);
        end;
        if B3 then appEventPost(Self,appClientChange,nil);
        actEdit.Execute;
        TCrackDataSet(qryDoc).RefreshControls;      //refresh
        TCrackDataSet(qryRec).RefreshControls;      //refresh
        TCrackDataSet(qryCredit).RefreshControls;   //refresh
    end else if Sender=actCancel then begin
        if not Modified or (MessageBox(MsgCancel, MsgQuestion, MB_ICONQUESTION or MB_YESNO)<>mrYes) then Exit;
        if qryDoc.UpdateStatus=usInserted then begin
            SetModified(false);
            Close;
        end else begin
            if not Modified then Exit;
            SetModified(false);
            qrySklad.Active:=false;
            qryClient.CancelUpdates;
            actRefresh.Execute;
        end;
    end else if Sender=actNew then begin
        if Modified then case MessageBox(MsgApply,MsgQuestion,MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: actApply.Execute;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        id:=0;
        if qryDoc.Active then case Desktop of
            deskInDoc: id:=qryDocCLIENTID2.Value;
            deskOutDoc: id:=qryDocCLIENTID1.Value;
        end;
        open(0, Desktop, IsQuery);
        case Desktop of
            deskInDoc: setClient2(id);
            deskOutDoc: setClient1(id);
        end;
    end else if Sender=actDelete then begin
        if (IsReadonly and not Data.CanDocModify(qryDocDATE1.Value)) then Exit;
        if MessageBox(MsgDeleteDoc,MsgQuestion,MB_ICONQUESTION or MB_YESNO) <> mrYes then Exit;
        if qryDoc.UpdateStatus<>usInserted then begin
            Data.ExecuteSQL2('delete from doc where docid='+qryDocDOCID.AsString);
            if not qryDocPDOCID.IsNull then Data.ExecuteSQL2('delete from doc where docid='+qryDocPDOCID.AsString);
            appEventPost(Self,appDocChange,nil);
            appEventPost(Self,appOstatokChange,nil);
            appEventPost(Self,appDebitChange,nil);
            qryProd.Active:=false;
            ProdFilter:='';
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
            qryDoc.Active := false;
            qryRec.Active := false;
            qryCredit.Active := false;
            if not (fsInactive in self.State) then begin
                qryDoc.Active := true;
                qryRec.Active := true;
                qryRec.Bookmark := CurBookmark;
            end;
        finally
            qryDoc.EnableControls;
            qryRec.EnableControls;
            TCrackDataSet(qryDoc).RefreshControls;  //refresh
            TCrackDataSet(qryRec).RefreshControls;  //refresh
        end;
        SetModified(false);
    end else if (Sender=actRecalcAll) or (Sender=actRecalcSum) then begin
        if not qryRec.Active then Exit;
        if not btnEdit.Down then begin
            btnEdit.Down:=true;
            actEdit.Execute;
        end;
        Screen.Cursor:=crHourGlass;
        try
            CalcLock:=true;
            qryRec.DisableControls;
            if not qryRecRECID.IsNull then CurBookmark:=qryRec.Bookmark;
            Sum:=0; SumNDS:=0; SumNalog:=0;
            qryRec.First;
            while not qryRec.EOF do begin
                if (qryRecRECID.AsInteger > 0) then begin
                    qryRec.Edit;
                    if (Sender=actRecalcAll) then DocSumChange(qryRecOUTPRICE);
                    Sum := Sum + qryRecSUMM.value;
                    SumNDS := SumNDS + qryRecNDSSUM.value;
                    SumNalog := SumNalog+qryRecNALOGSUM.value;
                end;
                qryRec.Next;
            end;
            qryDoc.Edit;
            if (qryDocPARAM7.Value <> 0) then qryDocSUM3.Value := CurrRound(FloatPer(Sum, qryDocPARAM7.Value));
            qryDocSUM0.Value := Sum + qryDocSUM3.Value;
            qryDocSUM1.Value := SumNDS + CurrRound(FloatInPer(qryDocSUM3.Value, TransportNDS));
            qryDocSUM2.Value := SumNalog;
            qryRec.Bookmark:=CurBookmark;
        finally
            CalcLock:=false;
            qryRec.EnableControls;
            TCrackDataSet(qryRec).RefreshControls;  //refresh
            Screen.Cursor:=crDefault;
        end;
        if Sender = actRecalcAll then RecalcData := false;
    end else if Sender = actPrint then begin
        if (IsQuery) then begin
            //mReportQuery.Click;
            Exit;
        end;

        // recalc records?
        if RecalcData and (qryRec.RecordCount > 0) then
            case MessageBox(MsgRecalc, MsgQuestion, MB_ICONQUESTION or MB_YESNOCANCEL) of
                mrYes: actRecalcAll.Execute;
                mrCancel: Exit;
            end;

        if PrintForm = nil then PrintForm := TPrintForm.Create(Application);

        kind := 0;
        if IsQuery then kind := kind or $01;
        if not IsQuery and (qryDocSKIND.Value = docOrder) and qryCredit.Active and not qryCreditDOCID.IsNull then
        begin
            if qryDocSKIND.Value <> docOrder then kind := kind or $40
            else if qryCreditSUM0.Value > 0 then kind := kind or $20
            else kind := kind or $10;
        end;

        PrintForm.Execute(kind, qryDocDOCID.Value, qryDoc, qryRec, qryCredit);
        
    end else if Sender = actCreateDoc then begin
        if Modified then case MessageBox(MsgApply, MsgQuestion, MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: begin actApply.Execute; Exit; end;
            mrNo: SetModified(false);
            mrCancel: Exit;
        end;
        if MessageBox(PChar(TAction(Sender).Caption + '?'), msgQuestion, MB_ICONQUESTION + MB_YESNO) <> mrYes then Exit;
        try
            msgStatus(msgWait);
            procCreateDoc.ParamByName('PDOCID').AsInteger := qryDocDOCID.Value;
            procCreateDoc.ExecProc;
            if Data.trApply.InTransaction then Data.trApply.Commit;
            id := procCreateDoc.ParamByName('DOCID').AsInteger;
            if id > 0 then begin
                frm := Load(TDocForm);
                if frm is TDocForm then TDocForm(frm).open(id, deskOutDoc);
                appEventPost(Self, appDocChange, nil);
                appEventPost(Self, appOstatokChange, nil);
            end
            else begin
                MessageBox(msgNotCreateDocProduct, msgInfo, MB_ICONEXCLAMATION or MB_OK);
            end;
        finally
            msgStatus('');
        end;
    end else if Sender = actSaveDesktop then begin
        CurrentConfig.writeFields(key+'.'+IntToStr(Desktop)+'.rec',qryRec);
    end else if Sender = actRestoreDesktop then begin
        CurrentConfig.readFields(key+'.'+IntToStr(Desktop)+'.rec',qryRec);
    end;
end;

procedure TDocForm.mPrintPopup(Sender: TObject);
var
    i: integer;
    IsOrder: boolean;
begin
    IsOrder := not IsQuery and (qryDocSKIND.Value = docOrder) and qryCredit.Active and not qryCreditDOCID.IsNull;

    // Clear reports
    with miReportEnd.Parent do begin
        for i := IndexOf(miReportEnd) - 1 downto 0 do
            Items[i].Destroy;
    end;

    // Append reports
    miReportEnd.Visible := true;
    if miReportEnd.Visible then begin
        if not IsQuery then RepData.InitMenu(miReportEnd.Parent, miReportEnd.Parent.IndexOf(miReportEnd), 21, print);
        if IsOrder then RepData.InitMenu(miReportEnd.Parent, miReportEnd.Parent.IndexOf(miReportEnd), 22, print);
        if IsQuery then RepData.InitMenu(miReportEnd.Parent, miReportEnd.Parent.IndexOf(miReportEnd), 23, print);
    end;

    mReportDoc1.Visible := not IsQuery;
    mReportDoc2.Visible := not IsQuery;
    mReportDoc3.Visible := not IsQuery;
    mReportDoc3_Nalog.Visible := not IsQuery;
    mReportDoc4.Visible := not IsQuery;
    mReportOrder.Visible := IsOrder;
end;

procedure TDocForm.print(Sender: TObject);
var params: integer;
begin

    // recalc records?
    if RecalcData and (qryRec.RecordCount > 0) then
        case MessageBox(MsgRecalc, MsgQuestion, MB_ICONQUESTION or MB_YESNOCANCEL) of
            mrYes: actRecalcAll.Execute;
            mrCancel: Exit;
        end;

    params := 0;
    if (PreviewReports) then params := params or rpPreview;

    if Sender = mReportDoc1 then printDoc1(qryDocDOCID.Value, qryDoc, qryRec)
    else if Sender = mReportDoc2 then printDoc2(qryDocDOCID.Value, qryDoc, qryRec)
    else if Sender = mReportDoc3 then printDoc3(qryDocDOCID.Value, qryDoc, qryRec)
    else if Sender = mReportDoc3_Nalog then printDoc3_Nalog(qryDocDOCID.Value, qryDoc, qryRec)
    else if Sender = mReportDoc4 then printDoc4(qryDocDOCID.Value, qryDoc, qryRec)
    else if Sender = mReportOrder then begin
        //if qryCreditSUM0.Value>0 then printROrder(qryDocDOCID.Value, qryCredit)
        //else printOrder(qryDocDOCID.Value, qryCredit);
        if qryCreditSKIND.Value = docOrder then
        begin
            if qryCreditSUM0.Value>0 then printROrder(qryCreditDOCID.Value, qryCredit)
            else printOrder(qryCreditDOCID.Value, qryCredit);
        end
        else begin
            printPlat(qryCreditDOCID.Value, qryCredit);
        end;
    end
    else if (Sender = miPrintFile) then begin
        Data.save(grdRec, Caption + ' ' + edtClient1.Text + ' №' + edtNo.Text + ' от ' + edtDate1.Text + ' для ' + edtClient2.Text);
    end else begin
         RepData.printDoc((Sender as TMenuItem).Tag, params, qryDocDOCID.Value, qryDoc, qryRec)
    end;
end;

procedure TDocForm.edtDebitExit(Sender: TObject);
begin
  edtDebit.Visible := false;
end;

procedure TDocForm.edtDesktopChange(Sender: TObject);
begin
    setDesktop(edtDesktop.ItemIndex);
end;

procedure TDocForm.edtEnter(Sender: TObject);
begin
    if (Sender=edtClient1) or (Sender=edtClient2) then qryClient.Active:=true
    else if (Sender=grdRec) and not grdRec.ReadOnly then begin
      if ProdFilter<>'' then begin
        ProdFilter:='';
        qryProd.Active:=false;
      end;
      qryProd.Active:=true;
    end;
end;

procedure TDocForm.edtProductSrcChange(Sender: TObject);
begin
    qryProdRefresh;
end;

procedure TDocForm.edtChange(Sender: TObject);
begin
    if not btnEdit.Down or not qryDoc.Active or not(qryDoc.State in [dsEdit,dsInsert]) then exit;
    if (Sender=edtOplata) and (qryDocSKIND.Text<>edtOplata.Value) then begin
        qryDocSKIND.Text:=edtOplata.Value;
    end;
end;

//---------------------queries routens------------------------------

procedure TDocForm.DataModified(DataSet: TDataSet);
begin
  SetModified(true);
end;

procedure TDocForm.PerFieldGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=FormatFloat(FormatPer,Sender.AsFloat)+' %';
end;

procedure TDocForm.PerFieldSetText(Sender: TField;
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

procedure TDocForm.ReadOnlyFieldSetText(Sender: TField;
  const Text: String);
begin
  //
end;

procedure TDocForm.qryBlobGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    Text:=Sender.AsString;
end;

procedure TDocForm.qryBlobSetText(Sender: TField;
  const Text: String);
begin
    data.setBlobValue(Sender as TBlobField,Text);
end;

procedure TDocForm.qryDOCNOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    if Sender.IsNull then Text:=docSAutoNo else Text:=Sender.AsString;
end;

procedure TDocForm.qryDOCNOSetText(Sender: TField; const Text: String);
begin
    if (Text='') or (Text=docSAutoNo) then Sender.AsVariant:=null else Sender.AsString:=Text;
end;


procedure TDocForm.qryCreditSUM0GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
    Text:=FormatFloat(FormatCur, -Sender.AsFloat);
end;

procedure TDocForm.qryCreditSUM0SetText(Sender: TField;
  const Text: String);
begin
    if (Text='') then Sender.AsVariant:=null  else Sender.AsFloat:=-StrToFloat(Text);
end;

procedure TDocForm.qryProdRefresh;
begin
    qryProd.Active:=false;
    if grdRec.Focused and not grdRec.ReadOnly then qryProd.Active:=true
    else ProdFilter:='';
end;

procedure TDocForm.qryClientRefresh;
begin
    qryClient.Active:=false;
    if edtClient1.Focused or edtClient2.Focused then qryClient.Active:=true;
end;
//----------------------qryClient-----------------------------------
procedure TDocForm.qryClientAfterInsert(DataSet: TDataSet);
begin
    qryClientCLIENTID.Value:=0;
end;

procedure TDocForm.qryClientBeforePost(DataSet: TDataSet);
begin
    if (qryClientCLIENTID.Value=0) and (qryClientNAME.Value<>'') then begin
        qryClientCLIENTID.Value:=Data.GenID('GEN_CLIENTID');
    end;
end;

procedure TDocForm.qryClientAfterPost(DataSet: TDataSet);
begin
    if (qryClientCLIENTID.Value=0) then qryClient.Delete;
end;

procedure TDocForm.srcClientDataChange(Sender: TObject; Field: TField);
begin
    if (Field=qryClientNAME) or (Field=qryClientFULLNAME) then begin
        if qryClientFULLNAME.AsString='' then qryClientCLIENT.AsString:=qryClientNAME.AsString
        else qryClientCLIENT.AsString:=qryClientFULLNAME.AsString;
    end;
end;

procedure TDocForm.UpdateGrid;
begin
    qryRecNEWPRICE.Visible := (Desktop = 1) and PriceVisible;
    qryRecNEWPRICE2.Visible := (Desktop = 1) and PriceVisible2;
    qryRecNEWPRICE3.Visible := (Desktop = 1) and PriceVisible3;
    qryRecNEWPRICE4.Visible := (Desktop = 1) and PriceVisible4;
    qryRecNEWPRICE5.Visible := (Desktop = 1) and PriceVisible5;

    qryRecPRICEPER.Visible := qryRecNEWPRICE.Visible;
    qryRecPRICEPER2.Visible := qryRecNEWPRICE2.Visible;
    qryRecPRICEPER3.Visible := qryRecNEWPRICE3.Visible;
    qryRecPRICEPER4.Visible := qryRecNEWPRICE4.Visible;
    qryRecPRICEPER5.Visible := qryRecNEWPRICE5.Visible;

    qryRecNEWPRICE.DisplayLabel := PriceName + '~цена';
    qryRecNEWPRICE2.DisplayLabel := PriceName2 + '~цена';
    qryRecNEWPRICE3.DisplayLabel := PriceName3 + '~цена';
    qryRecNEWPRICE4.DisplayLabel := PriceName4 + '~цена';
    qryRecNEWPRICE5.DisplayLabel := PriceName5 + '~цена';

    qryRecPRICEPER.DisplayLabel := PriceName + '~наценка(%)';
    qryRecPRICEPER2.DisplayLabel := PriceName2 + '~наценка(%)';
    qryRecPRICEPER3.DisplayLabel := PriceName3 + '~наценка(%)';
    qryRecPRICEPER4.DisplayLabel := PriceName4 + '~наценка(%)';
    qryRecPRICEPER5.DisplayLabel := PriceName5 + '~наценка(%)';

    qryRecNTD.Visible := (Desktop = 1);
    qryRecRECID.Visible := (Desktop = 0);
end;

procedure TDocForm.UpdateClient1;
var index: integer;
begin
    if data.setActiveSklad(qryDocCLIENTID1.Value) then begin
        if not ClientLock and not LoadLock then edtProductSrc.LookupValue:=qryDocCLIENTID1.AsString;

        PriceVisibleIn := (data.qrySkladPRICE_NAME.AsString <> '') and not data.qrySkladPRICE_PERCENT.IsNull;
        PriceVisibleIn2 := (data.qrySkladPRICE_NAME2.AsString <> '') and not data.qrySkladPRICE_PERCENT2.IsNull;
        PriceVisibleIn3 := (data.qrySkladPRICE_NAME3.AsString <> '') and not data.qrySkladPRICE_PERCENT3.IsNull;
        PriceVisibleIn4 := (data.qrySkladPRICE_NAME4.AsString <> '') and not data.qrySkladPRICE_PERCENT4.IsNull;
        PriceVisibleIn5 := (data.qrySkladPRICE_NAME5.AsString <> '') and not data.qrySkladPRICE_PERCENT5.IsNull;

        PriceNameIn := data.qrySkladPRICE_NAME.AsString;
        PriceNameIn2 := data.qrySkladPRICE_NAME2.AsString;
        PriceNameIn3 := data.qrySkladPRICE_NAME3.AsString;
        PriceNameIn4 := data.qrySkladPRICE_NAME4.AsString;
        PriceNameIn5 := data.qrySkladPRICE_NAME5.AsString;

        PricePercentIn := data.qrySkladPRICE_PERCENT.Value;
        PricePercentIn2 := data.qrySkladPRICE_PERCENT2.Value;
        PricePercentIn3 := data.qrySkladPRICE_PERCENT3.Value;
        PricePercentIn4 := data.qrySkladPRICE_PERCENT4.Value;
        PricePercentIn5 := data.qrySkladPRICE_PERCENT5.Value;

        PriceRoundKoefIn := data.qrySkladPRICE_ROUND.Value;
        PriceRoundKoefIn2 := data.qrySkladPRICE_ROUND2.Value;
        PriceRoundKoefIn3 := data.qrySkladPRICE_ROUND3.Value;
        PriceRoundKoefIn4 := data.qrySkladPRICE_ROUND4.Value;
        PriceRoundKoefIn5 := data.qrySkladPRICE_ROUND5.Value;
    end else begin
        if not ClientLock and not LoadLock then edtProductSrc.LookupValue := '';

        PriceVisibleIn := false;
        PriceVisibleIn2 := false;
        PriceVisibleIn3 := false;
        PriceVisibleIn4 := false;
        PriceVisibleIn5 := false;

        PriceNameIn := '';
        PriceNameIn2 := '';
        PriceNameIn3 := '';
        PriceNameIn4 := '';
        PriceNameIn5 := '';

        PricePercentIn := 0;
        PricePercentIn2 := 0;
        PricePercentIn3 := 0;
        PricePercentIn4 := 0;
        PricePercentIn5 := 0;

        PriceRoundKoefIn := 0;
        PriceRoundKoefIn2 := 0;
        PriceRoundKoefIn3 := 0;
        PriceRoundKoefIn4 := 0;
        PriceRoundKoefIn5 := 0;
    end;

    if PriceRoundKoefIn = 0 then PriceRoundKoefIn := 100;
    if PriceRoundKoefIn2 = 0 then PriceRoundKoefIn2 := 100;
    if PriceRoundKoefIn3 = 0 then PriceRoundKoefIn3 := 100;
    if PriceRoundKoefIn4 = 0 then PriceRoundKoefIn4 := 100;
    if PriceRoundKoefIn5 = 0 then PriceRoundKoefIn5 := 100;

    if PriceNameIn = '' then PriceNameIn := 'Прайс 1';
    if PriceNameIn2 = '' then PriceNameIn2 := 'Прайс 2';
    if PriceNameIn3 = '' then PriceNameIn3 := 'Прайс 3';
    if PriceNameIn4 = '' then PriceNameIn4 := 'Прайс 4';
    if PriceNameIn5 = '' then PriceNameIn5 := 'Прайс 5';

    index := edtPrice.ItemIndex;
    edtPrice.Items.Clear();
    edtPrice.Items.Add('Приходная');
    edtPrice.Items.Add(PriceNameIn);
    edtPrice.Items.Add(PriceNameIn2);
    edtPrice.Items.Add(PriceNameIn3);
    edtPrice.Items.Add(PriceNameIn4);
    edtPrice.Items.Add(PriceNameIn5);
    edtPrice.ItemIndex := index;
end;

procedure TDocForm.UpdateClient2;
begin
    if data.setActiveSklad(qryDocCLIENTID2.Value) then begin
        PriceVisible := (data.qrySkladPRICE_NAME.AsString <> '') and not data.qrySkladPRICE_PERCENT.IsNull;
        PriceVisible2 := (data.qrySkladPRICE_NAME2.AsString <> '') and not data.qrySkladPRICE_PERCENT2.IsNull;
        PriceVisible3 := (data.qrySkladPRICE_NAME3.AsString <> '') and not data.qrySkladPRICE_PERCENT3.IsNull;
        PriceVisible4 := (data.qrySkladPRICE_NAME4.AsString <> '') and not data.qrySkladPRICE_PERCENT4.IsNull;
        PriceVisible5 := (data.qrySkladPRICE_NAME5.AsString <> '') and not data.qrySkladPRICE_PERCENT5.IsNull;

        PriceName := data.qrySkladPRICE_NAME.AsString;
        PriceName2 := data.qrySkladPRICE_NAME2.AsString;
        PriceName3 := data.qrySkladPRICE_NAME3.AsString;
        PriceName4 := data.qrySkladPRICE_NAME4.AsString;
        PriceName5 := data.qrySkladPRICE_NAME5.AsString;

        PricePercent := data.qrySkladPRICE_PERCENT.Value;
        PricePercent2 := data.qrySkladPRICE_PERCENT2.Value;
        PricePercent3 := data.qrySkladPRICE_PERCENT3.Value;
        PricePercent4 := data.qrySkladPRICE_PERCENT4.Value;
        PricePercent5 := data.qrySkladPRICE_PERCENT5.Value;

        PriceRoundKoef := data.qrySkladPRICE_ROUND.Value;
        PriceRoundKoef2 := data.qrySkladPRICE_ROUND2.Value;
        PriceRoundKoef3 := data.qrySkladPRICE_ROUND3.Value;
        PriceRoundKoef4 := data.qrySkladPRICE_ROUND4.Value;
        PriceRoundKoef5 := data.qrySkladPRICE_ROUND5.Value;

        PriceParam := data.qrySkladPRICE_PARAM.Value;
        NewParams := data.qrySkladDOCPARAM1.Value;
        NewNalog := data.qrySkladDOCPARAM3.Value;
    end else begin
        PriceVisible := false;
        PriceVisible2 := false;
        PriceVisible3 := false;
        PriceVisible4 := false;
        PriceVisible5 := false;

        PriceName := '';
        PriceName2 := '';
        PriceName3 := '';
        PriceName4 := '';
        PriceName5 := '';

        PricePercent := 0;
        PricePercent2 := 0;
        PricePercent3 := 0;
        PricePercent4 := 0;
        PricePercent5 := 0;

        PriceRoundKoef := 0;
        PriceRoundKoef2 := 0;
        PriceRoundKoef3 := 0;
        PriceRoundKoef4 := 0;
        PriceRoundKoef5 := 0;

        PriceParam := -1;
        NewParams := 0;
        NewNalog := 0;
    end;

    if PriceRoundKoef = 0 then PriceRoundKoef := 100;
    if PriceRoundKoef2 = 0 then PriceRoundKoef2 := 100;
    if PriceRoundKoef3 = 0 then PriceRoundKoef3 := 100;
    if PriceRoundKoef4 = 0 then PriceRoundKoef4 := 100;
    if PriceRoundKoef5 = 0 then PriceRoundKoef5 := 100;

    if PriceName = '' then PriceName := 'Прайс 1';
    if PriceName2 = '' then PriceName2 := 'Прайс 2';
    if PriceName3 = '' then PriceName3 := 'Прайс 3';
    if PriceName4 = '' then PriceName4 := 'Прайс 4';
    if PriceName5 = '' then PriceName5 := 'Прайс 5';

    UpdateGrid;
end;

procedure TDocForm.UpdateSklad;
var id,id2:variant;
begin
    id:=qryProd.ParamByName('CLIENTID').Value;
    id2:=qryProd.ParamByName('CLIENTID2').Value;
    if VarIsNull(id2) and not VarIsNull(id) and (id<>qryDocCLIENTID1.Value) and data.setActiveSklad(id) then begin
        ExportParams:=data.qrySKLADDOCPARAM1.Value;
        ExportPercent:=data.qrySKLADDOCPARAM2.Value;
    end else begin
        ExportParams:=0;
        ExportPercent:=0;
    end;
end;

//-------------------------qryProd-----------------------------

procedure TDocForm.qryProdBeforeOpen(DataSet: TDataSet);
var
  id,id2:variant;
  sql: string;
begin
    sql := ProdSQL;
    //sql := 'select query_ostatok.*, cast(get_product_name(produsername, classname, productname,len) as varchar(100)) product2 from query_ostatok(:clientid,:clientid2)';
    if (ProdFilter<>'') then sql := sql + ' where upper(product collate pxw_cyrl) like ''%' + AnsiUpperCase(ProdFilter) + '%''';
    qryProd.SQL.Text := sql;

    if (DocParams and dpVozvrat=0) then begin
        if edtProductSrc.Text='' then id:=null else id:=edtProductSrc.LookupValue;
        id2:=null;
    end else begin
        id:=qryDocCLIENTID1.Value;
        id2:=qryDocCLIENTID2.Value;
    end;
    qryProd.ParamByName('CLIENTID').Value:=id;
    qryProd.ParamByName('CLIENTID2').Value:=id2;

    UpdateSklad;
end;

procedure TDocForm.qryProdCalcFields(DataSet: TDataSet);
begin
    if (ExportPercent=0) or not btnExportPrice.Checked then begin
        qryProdINPRICE_Calc.Value:=qryProdINPRICE.Value;
        if qryProd.ParamByName('CLIENTID').IsNull then begin
            qryProdOUTPRICE_Calc.Value:=qryProdLASTPRICE.Value;
            qryProdOUTPRICE2_Calc.Value:=qryProdLASTPRICE2.Value;
            qryProdOUTPRICE3_Calc.Value:=qryProdLASTPRICE3.Value;
            qryProdOUTPRICE4_Calc.Value:=qryProdLASTPRICE4.Value;
            qryProdOUTPRICE5_Calc.Value:=qryProdLASTPRICE5.Value;
        end else begin
            qryProdOUTPRICE_Calc.Value:=qryProdOUTPRICE.Value;
            qryProdOUTPRICE2_Calc.Value:=qryProdOUTPRICE2.Value;
            qryProdOUTPRICE3_Calc.Value:=qryProdOUTPRICE3.Value;
            qryProdOUTPRICE4_Calc.Value:=qryProdOUTPRICE4.Value;
            qryProdOUTPRICE5_Calc.Value:=qryProdOUTPRICE5.Value;
        end;
    end else begin
        if (ExportParams and dpInPrice)<>0
            then qryProdINPRICE_Calc.Value:=Ceil(FloatAddPer(qryProdINPRICE.Value,ExportPercent) * 100) / 100
            else qryProdINPRICE_Calc.Value:=Ceil(FloatAddPer(qryProdOUTPRICE.Value,ExportPercent) * 100) / 100;
        qryProdOUTPRICE_Calc.Value:=Ceil(FloatAddPerCor(qryProdINPRICE_Calc.Value,PricePercentIn)*PriceRoundKoefIn)/PriceRoundKoefIn;
        qryProdOUTPRICE2_Calc.Value:=Ceil(FloatAddPerCor(qryProdINPRICE_Calc.Value,PricePercentIn2)*PriceRoundKoefIn2)/PriceRoundKoefIn2;
        qryProdOUTPRICE3_Calc.Value:=Ceil(FloatAddPerCor(qryProdINPRICE_Calc.Value,PricePercentIn3)*PriceRoundKoefIn3)/PriceRoundKoefIn3;
        qryProdOUTPRICE4_Calc.Value:=Ceil(FloatAddPerCor(qryProdINPRICE_Calc.Value,PricePercentIn4)*PriceRoundKoefIn4)/PriceRoundKoefIn4;
        qryProdOUTPRICE5_Calc.Value:=Ceil(FloatAddPerCor(qryProdINPRICE_Calc.Value,PricePercentIn5)*PriceRoundKoefIn5)/PriceRoundKoefIn5;
    end;
end;

procedure TDocForm.edtProdDropDown(Sender: TObject);
begin
    qryProdOUTPRICE_Calc.Visible := PriceVisibleIn;
    qryProdOUTPRICE2_Calc.Visible := PriceVisibleIn2;
    qryProdOUTPRICE3_Calc.Visible := PriceVisibleIn3;
    qryProdOUTPRICE4_Calc.Visible := PriceVisibleIn4;
    qryProdOUTPRICE5_Calc.Visible := PriceVisibleIn5;

    qryProdOUTPRICE_Calc.DisplayLabel := PriceNameIn + ' цена';
    qryProdOUTPRICE2_Calc.DisplayLabel := PriceNameIn2 + ' цена';
    qryProdOUTPRICE3_Calc.DisplayLabel := PriceNameIn3 + ' цена';
    qryProdOUTPRICE4_Calc.DisplayLabel := PriceNameIn4 + ' цена';
    qryProdOUTPRICE5_Calc.DisplayLabel := PriceNameIn5 + ' цена';
end;

procedure TDocForm.edtProdPerformCustomSearch(Sender: TObject;
  LookupTable: TDataSet; SearchField, SearchValue: string;
  PerformLookup: Boolean; var Found: Boolean);
var filter: string;
begin
  if PerformLookup or (SearchValue='') then filter := ''
  else filter := SearchValue;
  if filter <> ProdFilter then begin
    ProdFilter := filter;
    qryProd.Active := false;
  end;
  qryProd.Active := true;
  if PerformLookup then
    Found := qryProd.Locate(SearchField, SearchValue, [loCaseInsensitive, loPartialKey])
  else begin
    qryProd.First;
    Found := not qryProd.Eof;
  end;
end;

//------------------------qryDoc-------------------------------
procedure TDocForm.qryBeforeOpen(DataSet: TDataSet);
begin
    if (DataSet = qryDebit) then
    begin
      qryDebit.Params[0].AsInteger := qryDocCLIENTID1.Value;
      qryDebit.Params[1].AsInteger := qryDocCLIENTID2.Value;
      qryDebit.Params[2].AsInteger := qryDocSKIND.Value;
    end
end;

procedure TDocForm.qryAfterOpen(DataSet: TDataSet);
begin
    //if DataSet=qryCredit then begin
    //    if (qryCredit.EOF) then qryCredit.Insert;
    //end;
end;

procedure TDocForm.qryAfterInsert(DataSet: TDataSet);
begin
    if DataSet=qryDoc then begin
        qryDocDOCID.Value:=Data.GenID('GEN_DOCID');
        if (IsQuery) then begin
            qryDocKIND.Value:=docQuery
        end
        else begin
            qryDocKIND.Value:=docProduct;
            qryDocSKIND.Value:=docOrder;
        end;
        qryDocDATE1.Value:=Date;
    end else if DataSet = qryCredit then begin
        qryCreditDOCID.Value := qryDocPDOCID.Value;
        qryCreditSUM0.Value := -qryDocSUM0.Value;
    end;
end;

procedure TDocForm.qryBeforePost(DataSet: TDataSet);
begin
    if DataSet=qryDoc then begin
        if qryDocSUM0.IsNull then qryDocSUM0.Value:=0;
        if qryDocSUM1.IsNull then qryDocSUM1.Value:=0;
        if qryDocSUM2.IsNull then qryDocSUM2.Value:=0;
        if qryDocSUM3.IsNull then qryDocSUM3.Value:=0;
    end else if DataSet=qryCredit then begin
        if qryCreditSUM0.IsNull then qryCreditSUM0.Value:=0;
        if qryCreditSUM1.IsNull then qryCreditSUM1.Value:=0;
        if qryCreditSUM2.IsNull then qryCreditSUM2.Value:=0;
    end;
end;

procedure TDocForm.qryDocUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
  if UpdateKind = ukInsert then exit; begin

  end;
end;

procedure TDocForm.srcDocDataChange(Sender: TObject; Field: TField);
var
    lock, readonly: boolean;
    v: string;
    kind: integer;
    Sum, SumNDS: double;
begin
    if (Field = nil) then
    begin
        OldSum3 := qryDocSUM3.Value;
    end;

    if (Field=nil) or (Field=qryDocPDOCID) then begin
        if qryDocPDOCID.IsNull then begin
            if qryCredit.Active and not qryCreditDOCID.IsNull then qryCredit.Delete;
        end
        else begin
            if not qryCredit.Active or (qryCredit.Params[0].AsInteger <> qryDocPDOCID.Value) then
            begin
                qryCredit.Active:=false;
                qryCredit.Params[0].AsInteger:=qryDocPDOCID.Value;
                qryCredit.Active:=true;
            end;
            readonly := false;
            if qryCreditDOCID.IsNull and (Field<>nil) then qryCredit.Insert
            else if qryCreditPDOCID.Value <> qryDocDOCID.Value then readonly := true;
            if readonly then qryCredit.Tag := 1 else qryCredit.Tag := 0;
        end;
        if not ParamLock then try
            ParamLock:=true;
            btnCredit.Checked:=qryCredit.Active and not qryCreditDOCID.IsNull;
        finally
            ParamLock:=false;
        end;
        lbCreditNo.Enabled:=btnCredit.Checked;
        edtCreditNo.Enabled:=btnCredit.Checked;
        lbCreditSum.Enabled:=btnCredit.Checked;
        edtCreditSum.Enabled:=btnCredit.Checked;
        btnEditCredit.Enabled:=btnCredit.Checked;
        btnCreditNo.Enabled:=btnCredit.Checked;
        edtDebit.Visible:=false;
    end;

    if (Field=nil) or (Field=qryDocCLIENTID1) then begin
        UpdateClient1;
    end;

    if (Field=nil) or (Field=qryDocCLIENTID2) then begin
        UpdateClient2
    end;

    if (Field=nil) or (Field=qryDocKIND) then begin
        if not ParamLock then try
            ParamLock := true;
            btnRezerv.Checked := qryDocKIND.Value and docRezervMask <> 0;
        finally
            ParamLock := false;
        end;
        if not IsQuery and (Field = qryDocKIND) then try
            if qryDocKIND.Value and docRezervMask <> 0 then kind:=1 else kind:=0;
            //if qryRecRECID.IsNull then bm:='' else bm:=qryRec.Bookmark;
            Screen.Cursor := crHourGlass;
            qryRec.DisableControls;
            qryRec.First;
            while not qryRec.Eof do begin
                qryRec.Edit;
                qryRecKIND.Value := kind;
                qryRec.Next;
            end;
            //qryRec.Bookmark:=bm;

            if kind = 1 then qryDocDOCNO.AsVariant := null;
        finally
            Screen.Cursor:=crDefault;
            qryRec.EnableControls;
        end;
    end;

    if (Field=nil) or (Field=qryDocSKIND) then begin
        btnCredit.Enabled:=qryDocSKIND.Value in docProductOplataList;
        if (Field<>nil) then begin
            //if not btnCredit.Enabled then btnCredit.Checked:=false;
            if (qryDocSKIND.Value in docProductOplataListDef) {or not qryDocPDOCID.IsNull} then
                btnCredit.Checked:=btnCredit.Enabled
            else
                btnCredit.Checked:=false;

            if qryDocSKIND.Value=docOrder then begin
                if (Desktop=deskOutDoc) and data.setActiveSklad(qryDocCLIENTID1.Value) then qryDocPARAM3.AsVariant:=data.qrySkladDOCPARAM3.AsVariant
                else if (Desktop=deskInDoc) and data.setActiveSklad(qryDocCLIENTID2.Value) then qryDocPARAM3.AsVariant:=data.qrySkladDOCPARAM3.AsVariant;
            end else begin
                qryDocPARAM3.AsVariant:=null;
            end;
        end
    end;

    if (Field=nil) or (Field=qryDocPARAM1) then begin
        DocParams:=qryDocPARAM1.Value;
        lock:=ParamLock;
        try
            ParamLock:=true;
            //vozvrat
            if not lock then btnVozvrat.Checked:=(dpVozvrat and DocParams)<>0;
            edtProductSrc.Enabled:=not btnVozvrat.Checked;
            //nds
            if not lock then btnNds.Checked:=(dpNds and DocParams)<>0;
            qryRecNDSPRICE.Visible:=btnNds.Checked;
            qryRecNDSSUM.Visible:=btnNds.Checked;
            edtNdsSum.Enabled:=btnNds.Checked;
            lbNdsSum.Enabled:=btnNds.Checked;
            //in price
            if not lock then
            begin
                if (dpInPrice and DocParams) <> 0 then edtPrice.ItemIndex := 0
                else if (dpPrice2 and DocParams) <> 0 then edtPrice.ItemIndex := 2
                else if (dpPrice3 and DocParams) <> 0 then edtPrice.ItemIndex := 3
                else if (dpPrice4 and DocParams) <> 0 then edtPrice.ItemIndex := 4
                else if (dpPrice5 and DocParams) <> 0 then edtPrice.ItemIndex := 5
                else edtPrice.ItemIndex := 1;
            end;
            //nalog in price
            if not lock then btnNalogInPrice.Checked:=(dpNalogInPrice and DocParams)<>0;
        finally
            ParamLock:=lock;
        end;
    end;

    if (Field = nil) or (Field = qryDocPARAM1) or (Field = qryDocPARAM2) then
    begin
        qryRecOUTPRICE.Visible := ((dpInPrice and DocParams) = 0) and (qryDocPARAM2.Value <> 0);
        qryRecINPRICE.Visible := ((dpInPrice and DocParams) <> 0) and (qryDocPARAM2.Value <> 0);
        if qryRecOUTPRICE.Visible then
        begin
            if qryDocPARAM2.Value < 0 then qryRecOUTPRICE.DisplayLabel := 'Цена~без скидки'
            else qryRecOUTPRICE.DisplayLabel := 'Цена~без наценки';
        end;
    end;

    if (Field = nil) or (Field=qryDocPARAM3) then
    begin
        qryRecNALOGSUM.Visible:=qryDocPARAM3.Value<>0;
        edtNalogSum.Enabled:=qryRecNALOGSUM.Visible;
        lbNalogSum.Enabled:=qryRecNALOGSUM.Visible;
    end;

    if (Field=nil) then exit;

    if (Field=qryDocCLIENTID1) then begin
        qrySklad.Active:=false;
        if (Desktop=deskOutDoc) and data.setActiveSklad(qryDocCLIENTID1.Value) then begin
            qryDocPARAM1.Value:=data.qrySkladDOCPARAM1.Value and (dpNDS+dpNalogInPrice);
            //qryDocPARAM2.AsVariant:=data.qrySkladDOCPARAM2.AsVariant;
            if qryDocSKIND.Value=docOrder then qryDocPARAM3.AsVariant:=data.qrySkladDOCPARAM3.AsVariant;
        end;
    end else if (Field=qryDocCLIENTID2) then begin
        if (Desktop=deskInDoc) and data.setActiveSklad(qryDocCLIENTID2.Value) then begin
            qryDocPARAM1.Value:=data.qrySkladDOCPARAM1.Value and (dpNDS+dpNalogInPrice);
            //qryDocPARAM2.AsVariant:=data.qrySkladDOCPARAM2.AsVariant;
            if qryDocSKIND.Value=docOrder then qryDocPARAM3.AsVariant:=data.qrySkladDOCPARAM3.AsVariant;
        end;
    end else if (Field = qryDocCLIENTNAME1) then begin
        if not LoadLock then begin
            v := qryDocCLIENTNAME1.Value;
            if (v <> '') and ((qryClientNAME.Value = v) or qryClient.Locate('NAME', v, [])) then begin
                qryDocCLIENTID1.Value := qryClientCLIENTID.Value;
                qryDocCLIENT1.Value := qryClientCLIENT.Value;
            end else begin
                qryDocCLIENTID1.AsVariant := Null;
                qryDocCLIENT1.AsVariant := Null;
                if v <> '' then qryDocCLIENTNAME1.AsVariant := Null;
            end;
        end;
    end else if (Field = qryDocCLIENTNAME2) then begin
        if not LoadLock then begin
            v:=qryDocCLIENTNAME2.Value;
            if (v<>'') and ((qryClientNAME.Value=v) or qryClient.Locate('NAME',v,[])) then begin
                qryDocCLIENTID2.Value:=qryClientCLIENTID.Value;
                qryDocCLIENT2.Value:=qryClientCLIENT.Value;
                qryDocADDRESS2.Value:=qryClientADDRESS2.Value;
            end else begin
                qryDocCLIENTID2.AsVariant:=Null;
                qryDocCLIENT2.AsVariant:=Null;
                qryDocADDRESS2.AsVariant:=Null;
                if v<>'' then qryDocCLIENTNAME2.AsVariant:=Null;
            end;
        end;
    end else if (Field=qryDocDATE1) then begin
        qryDocDATE2.AsVariant := qryDocDATE1.AsVariant;
    end else if (Field = qryDocSUM0) then begin
        if qryCredit.Active and not qryCreditDOCID.IsNull and (qryCredit.Tag = 0) then begin
            qryCredit.Edit;
            qryCreditSUM0.Value := -qryDocSUM0.Value;
        end;
    end else if (Field=qryDocPARAM1) or (Field=qryDocPARAM2) or (Field=qryDocPARAM3) then begin
        RecalcData := (qryRec.RecordCount > 0);
    end else if (Field = qryDocPARAM7) then begin
        lock := ParamLock;
        if not ParamLock then
        try
            ParamLock := true;
            Sum := qryDocSUM0.Value - qryDocSUM3.Value;
            SumNDS := qryDocSUM1.Value - CurrRound(FloatInPer(qryDocSUM3.Value, TransportNDS));
            qryDocSUM3.Value := FloatPer(Sum, qryDocPARAM7.Value);
            qryDocSUM0.Value := Sum + qryDocSUM3.Value;
            qryDocSUM1.Value := SumNDS + CurrRound(FloatInPer(qryDocSUM3.Value, TransportNDS));
        finally
            ParamLock := lock;
        end;
    end else if (Field = qryDocSUM3) then begin
        lock := ParamLock;
        if not ParamLock and not CalcLock then
        try
            ParamLock := true;
            qryDocPARAM7.AsVariant := null;
            qryDocSUM0.Value := qryDocSUM0.Value + qryDocSUM3.Value - OldSum3;
        finally
            ParamLock := lock;
        end;
        OldSum3 := qryDocSUM3.Value;
    end;
end;

procedure TDocForm.DataChanged(Sender: TObject);
var
    v:variant;
begin
    if ParamLock then exit;
    if not btnEdit.Down then begin
        srcDocDataChange(nil,nil);
        exit;
    end;
    ParamLock:=true;
    try
        qryDoc.Edit;
        if Sender=btnNds then begin
            if btnNds.Checked then DocParams:=DocParams or dpNds else DocParams:=DocParams and not dpNds;
            qryDocPARAM1.Value:=DocParams;
        end else if Sender=edtPrice then begin
            if edtPrice.ItemIndex = 0 then DocParams:=DocParams or dpInPrice else DocParams:=DocParams and not dpInPrice;
            if edtPrice.ItemIndex = 2 then DocParams:=DocParams or dpPrice2 else DocParams:=DocParams and not dpPrice2;
            if edtPrice.ItemIndex = 3 then DocParams:=DocParams or dpPrice3 else DocParams:=DocParams and not dpPrice3;
            if edtPrice.ItemIndex = 4 then DocParams:=DocParams or dpPrice4 else DocParams:=DocParams and not dpPrice4;
            if edtPrice.ItemIndex = 5 then DocParams:=DocParams or dpPrice5 else DocParams:=DocParams and not dpPrice5;
            qryDocPARAM1.Value:=DocParams;
        end else if Sender=btnVozvrat then begin
            if btnVozvrat.Checked then DocParams:=DocParams or dpVozvrat else DocParams:=DocParams and not dpVozvrat;
            qryDocPARAM1.Value:=DocParams;
            v:=qryProd.Params[0].Value;
            qryProdRefresh;
        end else if Sender=btnNalogInPrice then begin
            if btnNalogInPrice.Checked then DocParams:=DocParams or dpNalogInPrice else DocParams:=DocParams and not dpNalogInPrice;
            qryDocPARAM1.Value:=DocParams;
        end else if Sender=btnRezerv then begin
            if btnRezerv.Checked then qryDocKIND.Value := qryDocKIND.Value or docRezervMask
            else qryDocKIND.Value := qryDocKIND.Value and not docRezervMask
        end else if Sender=btnCredit then begin
            if btnCredit.Checked then begin
              if qryDocPDOCID.IsNull then qryDocPDOCID.Value:=0;
              Include(docProductOplataListDef, qryDocSKIND.AsInteger);
            end else begin
              qryDocPDOCID.AsVariant:=Null;
              Exclude(docProductOplataListDef, qryDocSKIND.AsInteger);
            end;
        end;
    finally
        ParamLock:=false;
    end;
end;
//--------------------qryRec----------------------------------
procedure TDocForm.qryRecPRODUCTNAMEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    Text:=qryRecPRODUCT.AsString;
end;

procedure TDocForm.qryRecBeforeOpen(DataSet: TDataSet);
begin
    qryRec.SQL.Text := SQLParser.SQL;
    if Length(SQLParser.OrderBy) = 0 then qryRec.SQL.Text := qryRec.SQL.Text + 'order by docid, recid';
    qryRec.Params[0].Value := qryDocDOCID.Value;
end;

procedure TDocForm.qryRecAfterOpen(DataSet: TDataSet);
begin
    PriceLock := false;
    RecalcData := false;
    qryRec.FetchAll;

    // search max record id
    OldRecID := 0;
    qryRec.DisableControls;
    try
        while not qryRec.EOF do begin
            if qryRecRECID.AsInteger > OldRecID then OldRecID := qryRecRECID.AsInteger;
            qryRec.Next;
        end;
        qryRec.First;
    finally
        qryRec.EnableControls;
    end;
end;

procedure TDocForm.qryRecBeforeEdit(DataSet: TDataSet);
begin
    DataModified(DataSet);
    OldSum:=qryRecSUMM.Value;
    OldNdsSum:=qryRecNDSSUM.Value;
    OldNalogSum:=qryRecNALOGSUM.Value;
end;

procedure TDocForm.qryRecAfterEdit(DataSet: TDataSet);
begin
    // for errors correct - edit with no record
    if (qryRecDOCID.IsNull) then
    begin
        qryRec.Cancel;
        qryRec.Insert;
    end;
end;

procedure TDocForm.qryRecAfterInsert(DataSet: TDataSet);
begin
    Inc(OldRecID, 10);
    qryRecDOCID.Value := qryDocDOCID.Value;
    qryRecRECID.Value := OldRecID;

    if (IsQuery) then qryRecKIND.Value := 2
    else if (qryDocKIND.Value and docRezervMask = 0) then qryRecKIND.Value := 0
    else qryRecKIND.Value := 1;

    grdRec.SetActiveField('PRODUCT2');
end;

procedure TDocForm.qryRecBeforePost(DataSet: TDataSet);
var sum0, sum3, sum0_nds, sum3_nds: double;
begin
    // for errors correct
    if (qryRecDOCID.IsNull) then qryRecDOCID.Value := qryDocDOCID.Value;
    if (qryRecRECID.IsNull) then
    begin
        Inc(OldRecID, 10);
        qryRecRECID.Value := OldRecID;
    end;
    if (qryDocKIND.IsNull) then
    begin
        if (IsQuery) then qryRecKIND.Value := 2
        else if (qryDocKIND.Value and docRezervMask = 0) then qryRecKIND.Value := 0
        else qryRecKIND.Value := 1;
    end;

    if qryRecPRODID.IsNull then exit;
    if qryRecCNT.IsNull then qryRecCNT.Value:=0;
    if qryRecUNIT.IsNull then qryRecUNIT.Value:=1;
    if qryRecINPRICE.IsNull then qryRecINPRICE.Value:=0;
    if qryRecINNDSPRICE.IsNull then qryRecINNDSPRICE.Value:=0;
    if qryRecPRICE.IsNull then qryRecPRICE.Value:=0;
    if qryRecOUTPRICE.IsNull then qryRecOUTPRICE.Value:=0;
    if qryRecNDSPRICE.IsNull then qryRecNDSPRICE.Value:=0;
    if qryRecNALOGSUM.IsNull then qryRecNALOGSUM.Value:=0;
    if CalcLock or LoadLock then Exit;
    if qryRec.State=dsInsert then begin
        OldSum:=0; OldNdsSum:=0; OldNalogSum:=0;
    end;

    sum3 := qryDocSUM3.Value;
    sum3_nds := CurrRound(FloatInPer(sum3, TransportNDS));
    sum0 := qryDocSUM0.Value + qryRecSUMM.Value - OldSum - sum3;
    sum0_nds := qryDocSUM1.Value + qryRecNDSSUM.Value - OldNdsSum - sum3_nds;

    ClientLock := true;
    try
      qryDoc.Edit;
      if (qryDocPARAM7.Value <> 0) then
      try
          ParamLock := true;
          sum3 := CurrRound(FloatPer(sum0, qryDocPARAM7.Value));
          sum3_nds := CurrRound(FloatInPer(sum3, TransportNDS));
          qryDocSUM3.Value := sum3;
      finally
          ParamLock := false;
      end;
      qryDocSUM0.Value := sum0 + sum3;
      qryDocSUM1.Value := sum0_nds + sum3_nds;
      qryDocSUM2.Value := qryDocSUM2.Value + qryRecNALOGSUM.Value - OldNalogSum;
    finally
       ClientLock := false;
    end;
end;

procedure TDocForm.qryRecAfterPost(DataSet: TDataSet);
begin
    if {not qryRec.Eof and} ((qryRecDOCID.AsInteger = 0) or (qryRecRECID.AsInteger = 0) or qryRecPRODID.IsNull) then qryRec.Delete;
end;

procedure TDocForm.qryRecBeforeCancel(DataSet: TDataSet);
begin
    if (qryRec.State = dsInsert) and (qryRecRECID.Value = OldRecID) then Dec(OldRecID, 10);
end;

procedure TDocForm.qryRecBeforeDelete(DataSet: TDataSet);
var sum0, sum3, sum0_nds, sum3_nds: double;
begin
    DataModified(DataSet);
    case qryRec.State of
        dsInsert: begin OldSum:=0; OldNdsSum:=0; OldNalogSum:=0; end;
        dsEdit:;
        else begin
            OldSum:=qryRecSUMM.Value;
            OldNdsSum:=qryRecNDSSUM.Value;
            OldNalogSum:=qryRecNALOGSUM.Value;
        end;
    end;

    sum3 := qryDocSUM3.Value;
    sum3_nds := CurrRound(FloatInPer(sum3, TransportNDS));
    sum0 := qryDocSUM0.Value - OldSum - sum3;
    sum0_nds := qryDocSUM1.Value - OldNdsSum - sum3_nds;

    qryDoc.Edit;
    if (qryDocPARAM7.Value <> 0) then
    try
        ParamLock := true;
        sum3 := CurrRound(FloatPer(sum0, qryDocPARAM7.Value));
        sum3_nds := CurrRound(FloatInPer(sum3, TransportNDS));
        qryDocSUM3.Value := sum3;
    finally
        ParamLock := false;
    end;
    qryDocSUM0.Value := sum0 + sum3;
    qryDocSUM1.Value := sum0_nds + sum3_nds;
    qryDocSUM2.Value := qryDocSUM2.Value - OldNalogSum;

    if (qryRecRECID.Value = OldRecID) then Dec(OldRecID, 10);
end;

procedure TDocForm.qryRecCalcFields(DataSet: TDataSet);
var X, X2, X3, X4, X5: double;
begin
    FieldCalcLock := true;
    try
        //qryRecALLCNT.Value := qryRecCNT.Value * qryRecUNIT.Value;

        if qryRecPRICE.Value = 0 then begin
            qryRecPRICEPER.AsVariant := null;
            qryRecPRICEPER2.AsVariant := null;
            qryRecPRICEPER3.AsVariant := null;
            qryRecPRICEPER4.AsVariant := null;
            qryRecPRICEPER5.AsVariant := null;
        end
        else begin
            X := qryRecNEWPRICE.Value;
            X2 := qryRecNEWPRICE2.Value;
            X3 := qryRecNEWPRICE3.Value;
            X4 := qryRecNEWPRICE4.Value;
            X5 := qryRecNEWPRICE5.Value;

            // remove nalog from price (17.01.2002)
            if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then
            begin
                X := FloatRemovePer(X, NewNalog);
                X2 := FloatRemovePer(X2, NewNalog);
                X3 := FloatRemovePer(X3, NewNalog);
                X4 := FloatRemovePer(X4, NewNalog);
                X5 := FloatRemovePer(X5, NewNalog);
            end;

            qryRecPRICEPER.Value := (X / qryRecPRICE.Value - 1) * 100;
            qryRecPRICEPER2.Value := (X2 / qryRecPRICE.Value - 1) * 100;
            qryRecPRICEPER3.Value := (X3 / qryRecPRICE.Value - 1) * 100;
            qryRecPRICEPER4.Value := (X4 / qryRecPRICE.Value - 1) * 100;
            qryRecPRICEPER5.Value := (X5 / qryRecPRICE.Value - 1) * 100;
        end;
    finally
        FieldCalcLock := false;
    end;
end;

procedure TDocForm.srcRecDataChange(Sender: TObject; Field: TField);
var
    id: integer;
    X, cnt, ostcnt: double;
begin
    if (Field = nil) then begin
        edtProd.ReadOnly := not qryRecPRODID.IsNull and (qryRec.UpdateStatus <> usInserted);
    end;
    if Field = qryRecPRODUCT2 then begin
        if not Pricelock and not LoadLock then
        try
            PriceLock := true;
            cnt := qryRecCNT.Value * qryRecUNIT.Value;
            ostcnt := qryProdCNT.value * qryProdUNIT.value;
            id := qryProd.Params[0].AsInteger;
            //if (id <> 0) and (id=qryDocCLIENTID1.AsInteger) then id:=0;
            qryRecCLIENTID1.AsInteger:=id;
            qryRecPRODID.AsVariant:=qryProdPRODID.AsVariant;
            qryRecINDOCID.AsVariant:=qryProdINDOCID.AsVariant;
            qryRecINRECID.AsVariant:=qryProdINRECID.AsVariant;
            if (DocParams and dpVozvrat = 0) then begin
                qryRecPDOCID.AsVariant:=null;
                qryRecPRECID.AsVariant:=null;
                if (cnt = 0) or (cnt > ostcnt / qryRecUNIT.value) then begin
                    qryRecCNT.value:=qryProdCNT.value;
                    qryRecUNIT.value:=qryProdUNIT.value;
                end;
            end else begin
                qryRecPDOCID.Value:=qryProdPDOCID.Value;
                qryRecPRECID.Value:=qryProdPRECID.Value;
                qryRecCNT.value:=-qryProdCNT.value;
                qryRecUNIT.value:=qryProdUNIT.value;
            end;
            qryRecALLCNT.value:=qryRecUNIT.value * qryRecCNT.value;

            qryRecINPRICE.value:=qryProdINPRICE_Calc.value;
            case edtPrice.ItemIndex of
            0: qryRecOUTPRICE.value:=CurrRound(qryProdINPRICE_Calc.value);
            2: qryRecOUTPRICE.value:=CurrRound(qryProdOUTPRICE2_Calc.value);
            3: qryRecOUTPRICE.value:=CurrRound(qryProdOUTPRICE3_Calc.value);
            4: qryRecOUTPRICE.value:=CurrRound(qryProdOUTPRICE4_Calc.value);
            5: qryRecOUTPRICE.value:=CurrRound(qryProdOUTPRICE5_Calc.value);
            else qryRecOUTPRICE.value:=CurrRound(qryProdOUTPRICE_Calc.value);
            end;

            qryRecINNDSPRICE.value:=qryProdINNDSPRICE.value;
            if (PriceParam = 1) then begin
                qryRecNEWPRICE.value := qryProdLASTPRICE.value;
                qryRecNEWPRICE2.value := qryProdLASTPRICE2.value;
                qryRecNEWPRICE3.value := qryProdLASTPRICE3.value;
                qryRecNEWPRICE4.value := qryProdLASTPRICE4.value;
                qryRecNEWPRICE5.value := qryProdLASTPRICE5.value;
            end else begin
                qryRecNEWPRICE.Clear;
                qryRecNEWPRICE2.Clear;
                qryRecNEWPRICE3.Clear;
                qryRecNEWPRICE4.Clear;
                qryRecNEWPRICE5.Clear;
            end;
            qryRecDIM.value:=qryProdDIM.value;
            qryRecWEIGHT.value:=qryProdWEIGHT.value;
            qryRecNDS.value:=qryProdNDS.value;
            qryRecCOUNTRY.value:=qryProdCOUNTRY.value;
            qryRecNTD.AsVariant:=qryProdNTD.AsVariant;
            qryRecPRODUCT.value:=qryProdPRODUCT.value;
            qryRecPRODUCT2.value:=qryProdPRODUCT2.value;
            qryRecSERTIFICAT.AsVariant:=qryProdSERTIFICAT.AsVariant;
        finally
            PriceLock:=false;
        end;
        DocSumChange(qryRecOUTPRICE);
    end;

    // calculate new price on price percent (17.01.2002)
    if (Field = qryRecPRICEPER) and not FieldCalcLock and not LoadLock then
    begin
        X := FloatAddPer(qryRecPRICE.Value, qryRecPRICEPER.Value);
        if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
        qryRecNEWPRICE.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryRecPRICEPER2) and not FieldCalcLock and not LoadLock then
    begin
        X := FloatAddPer(qryRecPRICE.Value, qryRecPRICEPER2.Value);
        if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
        qryRecNEWPRICE2.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryRecPRICEPER3) and not FieldCalcLock and not LoadLock then
    begin
        X := FloatAddPer(qryRecPRICE.Value, qryRecPRICEPER3.Value);
        if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
        qryRecNEWPRICE3.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryRecPRICEPER4) and not FieldCalcLock and not LoadLock then
    begin
        X := FloatAddPer(qryRecPRICE.Value, qryRecPRICEPER4.Value);
        if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
        qryRecNEWPRICE4.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if (Field = qryRecPRICEPER5) and not FieldCalcLock and not LoadLock then
    begin
        X := FloatAddPer(qryRecPRICE.Value, qryRecPRICEPER5.Value);
        if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
        qryRecNEWPRICE5.Value := CurrRound(X);
        grdRec.Refresh;
    end;

    if ((Field = qryRecNEWPRICE) or (Field = qryRecNEWPRICE2) or (Field = qryRecNEWPRICE3) or (Field = qryRecNEWPRICE4) or (Field = qryRecNEWPRICE5)) and not PriceLock and not LoadLock then
    begin
        grdRec.Refresh;
    end;
end;

procedure TDocForm.DocSumChange(Sender: TField);
const EPS = 0.000001;
var
    skidka, nalog, nds, X, X2, N, OstCount, OstUnit, OldCount, OldUnit: Double;
begin
    if PriceLock or LoadLock then Exit;
    PriceLock:=true;
    try
        skidka := qryDocPARAM2.Value;
        nalog := qryDocPARAM3.Value;
        if (DocParams and dpNds <> 0) then nds:=qryRecNDS.Value else nds:=0;

        if (Sender = qryRecCNT) or (Sender = qryRecUNIT) or (Sender = qryRecALLCNT) then begin
            if (Sender = qryRecALLCNT) then begin
                if qryRecUNIT.Value = 0 then qryRecCNT.Value := qryRecALLCNT.Value
                else qryRecCNT.Value := qryRecALLCNT.Value / qryRecUNIT.Value;
            end;

            if (qryRec.UpdateStatus = usInserted) then begin
                OldCount := 0; OldUnit := 0;
            end else begin
                if qryRecCNT.OldValue = Null then OldCount := 0 else OldCount := qryRecCNT.OldValue;
                if qryRecUNIT.OldValue = Null then OldUnit := 0 else OldUnit := qryRecUNIT.OldValue;
            end;
            if not IsQuery and not qryRecINDOCID.IsNull and not qryRecINRECID.IsNull
               and (((qryProdINDOCID.Value = qryRecINDOCID.Value) and (qryProdINRECID.Value = qryRecINRECID.Value))
                    or qryProd.Locate('INDOCID;INRECID', VarArrayOf([qryRecINDOCID.Value, qryRecINRECID.Value]), []))
            then begin
                OstCount := qryProdCNT.Value;
                OstUnit := qryProdUNIT.Value;
                if qryRecUNIT.Value < OstUnit then qryRecUNIT.Value := 1 else qryRecUNIT.Value := OstUnit;
                if (DocParams and dpVozvrat = 0) then begin
                    if qryRecCNT.Value < 0 then qryRecCNT.Value := 0;
                    N := qryRecCNT.Value * qryRecUNIT.Value;
                end else begin
                    if qryRecCNT.Value > 0 then qryRecCNT.Value := 0;
                    N := -qryRecCNT.Value * qryRecUNIT.Value;
                    OldCount := -OldCount;
                end;
                if N > OstCount * OstUnit + OldCount * OldUnit + EPS then begin
                    OstCount := OstCount + OldCount * (OldUnit / OstUnit);
                    if (DocParams and dpVozvrat <> 0) then OstCount := -OstCount;
                    qryRecCNT.Value := OstCount;
                    qryRecUNIT.Value := OstUnit;
                    Data.msgStatus(msgOstTooSmallCount);
                    MessageBeep(MB_ICONEXCLAMATION);
                end;
            end;

            qryRecALLCNT.Value := qryRecCNT.Value * qryRecUNIT.Value;
        end;

        N := qryRecCNT.Value * qryRecUNIT.Value;

        if (Sender = qryRecINPRICE) or (Sender = qryRecOUTPRICE) then begin
            if (DocParams and dpInPrice = 0) then X := qryRecOUTPRICE.Value else X := qryRecINPRICE.Value;
            X := FloatAddPer(X, skidka);
            if DocParams and dpNalogInPrice = 0 then X := FloatAddPer(X, nalog);
            if Desktop = deskInDoc then qryRecPRICE.Value := X
            else qryRecPRICE.Value := CurrRound(X);
        end else if (Sender = qryRecPRICE) or (Sender = qryRecSUMM) then begin
            if (Sender = qryRecSUMM) then begin
                if N <> 0 then X := qryRecSUMM.Value / N else X := 0;
                qryRecPRICE.Value := X; //CurrRound(X);
            end else begin
                X := qryRecPRICE.Value;
            end;
            if DocParams and dpNalogInPrice = 0 then X := FloatRemovePer(X, nalog);
            qryRecOUTPRICE.Value := FloatRemovePer(X, skidka);
        end;

        // test price on grater in price (17.01.2002)
        X := qryRecINPRICE.Value;
        if (X <> 0) and (qryRecPRICE.Value < X) then qryRecPRICE.Value := X;

        // calculate new price
        {
        X := qryRecPRICE.Value;
        if (DocParams and dpVozvrat = 0) then begin
            X := FloatAddPer(X, PricePercent);

            // add nalog to price (17.01.2002)
            if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
        end;
        if (PriceParam = -1) then qryRecNEWPRICE.Clear
        else if (PriceParam = 0) or ((PriceParam = 1) and (qryRecNEWPRICE.Value < qryRecPRICE.Value))
        then qryRecNEWPRICE.Value := Ceil(X * PriceRoundKoef) / PriceRoundKoef;
        }

        // calculate new price
        if (PriceParam = -1) then qryRecNEWPRICE.Clear
        else if ((PriceParam = 0) and (PricePercent >= 0)) //or (qryRecNEWPRICE.Value < qryRecPRICE.Value)
        then begin
            X := qryRecPRICE.Value;
            if (DocParams and dpVozvrat = 0) and (PriceParam = 0) then
            begin
                X := FloatAddPerCor(X, PricePercent);
                if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
            end;
            qryRecNEWPRICE.Value := Ceil(X * PriceRoundKoef) / PriceRoundKoef;
        end;

        // calculate new price 2
        if (PriceParam = -1) then qryRecNEWPRICE2.Clear
        else if ((PriceParam = 0) and (PricePercent2 >= 0)) //or (qryRecNEWPRICE2.Value < qryRecPRICE.Value)
        then begin
            X := qryRecPRICE.Value;
            if (DocParams and dpVozvrat = 0) and (PriceParam = 0) then
            begin
                X := FloatAddPerCor(X, PricePercent2);
                if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
            end;
            qryRecNEWPRICE2.Value := Ceil(X * PriceRoundKoef2) / PriceRoundKoef2;
        end;

        // calculate new price 3
        if (PriceParam = -1) then qryRecNEWPRICE3.Clear
        else if ((PriceParam = 0) and (PricePercent3 >= 0)) //or (qryRecNEWPRICE3.Value < qryRecPRICE.Value)
        then begin
            X := qryRecPRICE.Value;
            if (DocParams and dpVozvrat = 0) and (PriceParam = 0) then
            begin
                X := FloatAddPerCor(X, PricePercent3);
                if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
            end;
            qryRecNEWPRICE3.Value := Ceil(X * PriceRoundKoef3) / PriceRoundKoef3;
        end;

        // calculate new price 4
        if (PriceParam = -1) then qryRecNEWPRICE4.Clear
        else if ((PriceParam = 0) and (PricePercent4 >= 0)) //or (qryRecNEWPRICE4.Value < qryRecPRICE.Value)
        then begin
            X := qryRecPRICE.Value;
            if (DocParams and dpVozvrat = 0) and (PriceParam = 0) then
            begin
                X := FloatAddPerCor(X, PricePercent4);
                if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
            end;
            qryRecNEWPRICE4.Value := Ceil(X * PriceRoundKoef4) / PriceRoundKoef4;
        end;

        // calculate new price 5
        if (PriceParam = -1) then qryRecNEWPRICE5.Clear
        else if ((PriceParam = 0) and (PricePercent5 >= 0)) //or (qryRecNEWPRICE5.Value < qryRecPRICE.Value)
        then begin
            X := qryRecPRICE.Value;
            if (DocParams and dpVozvrat = 0) and (PriceParam = 0) then
            begin
                X := FloatAddPerCor(X, PricePercent5);
                if (NewParams and dpNalogInPrice <> 0) and (NewNalog <> 0) then X := FloatAddPer(X, NewNalog);
            end;
            qryRecNEWPRICE5.Value := Ceil(X * PriceRoundKoef5) / PriceRoundKoef5;
        end;

        // calculate sum
        X := CurrRound(qryRecPRICE.Value * N);
        qryRecSUMM.Value := X;

        // calculate nalog sum
        X2 := CurrRound(FloatRemovePer(X, nalog));
        qryRecNALOGSUM.Value := X - X2;

        // calculate nds sum
        if Sender = qryRecNDSSUM then begin
            X := qryRecNDSSUM.Value;
        end else begin
            X := FloatInPer(X2, nds);
            qryRecNDSSUM.Value := CurrRound(X);
        end;

        // calculate nds price
        if N = 0 then X := 0 else X := X / N;
        qryRecNDSPRICE.Value := X;
    finally
        PriceLock := false;
    end;
    if not CalcLock then grdRec.Refresh;
end;

procedure TDocForm.qryRecRECIDSetText(Sender: TField; const Text: String);
begin
    if qryRec.UpdateStatus=usInserted then Sender.AsString:=Text;
end;

procedure TDocForm.qryRecUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
var
    id: integer;
begin
    if UpdateKind = ukDelete then exit;
    if (IsQuery) then begin
        qryRec.Edit;
        if not qryRecINDOCID.IsNull then qryRecINDOCID.Clear;
        if not qryRecINRECID.IsNull then qryRecINRECID.Clear;
        if not qryRecPDOCID.IsNull then qryRecPDOCID.Clear;
        if not qryRecPRECID.IsNull then qryRecPRECID.Clear;
        if not qryRecCLIENTID1.IsNull then qryRecCLIENTID1.Clear;
    end;
    id := qryRecCLIENTID1.AsInteger;
    if  not qryRecCLIENTID1.IsNull
        and (id <> qryDocCLIENTID1.AsInteger)
        and ((id <> 0) or not qryDocSKLADID.IsNull)
        (*(id <> 0) and (id <> qryDocCLIENTID1.AsInteger)*)
    then begin
        procExport.Params[4].AsInteger:=id;
        procExport.Params[5].AssignField(qryDocCLIENTID1);
        procExport.Params[6].AssignField(qryRecINDOCID);
        procExport.Params[7].AssignField(qryRecINRECID);
        procExport.Params[8].AssignField(qryRecPRODID);
        procExport.Params[9].AssignField(qryRecCNT);
        procExport.Params[10].AssignField(qryRecUNIT);
        procExport.ExecProc;
        qryRec.Edit;
        qryRecINDOCID.AsInteger:=procExport.Params[0].AsInteger;
        qryRecINRECID.AsInteger:=procExport.Params[1].AsInteger;
        qryRecINPRICE.AsFloat:=procExport.Params[2].AsFloat;
        qryRecINNDSPRICE.AsFloat:=procExport.Params[3].AsFloat;
        //UpdateAction:=IBCustomDataSet.uaApplied;
    end;
end;

//-------------------------qryCredit---------------------------------

procedure TDocForm.btnEditCreditClick(Sender: TObject);
var frm:TForm;
begin
    if qryCredit.Active and (qryCreditDOCID.Value<>0) then begin
        frm:=Load(TCreditDocForm);
        if frm is TCreditDocForm then  TCreditDocForm(frm).open(qryCreditDOCID.Value,desktop);
    end;
end;

procedure TDocForm.btnSelectCreditClick(Sender: TObject);
begin
  qryDebit.Active := false;
  qryDebit.Active := true;
  edtDebit.Visible := true;
  edtDebit.SetFocus;
end;

//-------------------------edit btns routens---------------------------------

procedure TDocForm.btnEditClick(Sender: TObject);
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
    end else if (sender=btnNo) or (sender=btnCreditNo) then begin
        if (sender=btnNo) then begin
            ctrl:=edtNo;
            frmEdit.Tag:=3;
        end else begin
            ctrl:=edtCreditNo;
            frmEdit.Tag:=4;
        end;
        ctrl.setFocus;
        if qrySklad.Params[0].AsInteger <> qryDocCLIENTID1.Value then begin
            qrySklad.Active := false;
            qrySklad.Params[0].AsInteger := qryDocCLIENTID1.Value;
        end;
        qrySklad.Active := true;
        if qrySkladCLIENTID.IsNull then exit;

        qrySkladNODOCPROD.Visible := (sender = btnNo) and not IsQuery;
        qrySkladNODOCSCHET.Visible := false; //(sender = btnNo) and not IsQuery;
        qrySkladNOVDOCPROD.Visible := (sender = btnNo) and not IsQuery;
        qrySkladNODOCPROD1.Visible := (sender = btnNo) and not IsQuery;
        qrySkladNOQUERY.Visible := (sender = btnNo) and IsQuery;
        qrySkladNOCHECK.Visible := (sender = btnCreditNo) and not IsQuery;
        qrySkladNOORDER.Visible := (sender = btnCreditNo) and not IsQuery;

        frmEdit.DataSource:=nil;
        frmEdit.DataSource:=srcSklad;
    end else Exit;
    frmEdit.Top:=ctrl.Parent.Top+TControl(Sender).Top+TControl(Sender).Height;
    frmEdit.Left:=ctrl.Parent.Left+ctrl.Left;
    frmEdit.Width:=ctrl.Width+TControl(Sender).Width;
    if frmEdit.Width<frmEdit.Constraints.MinWidth then frmEdit.Width:=frmEdit.Constraints.MinWidth;
    frmEdit.Readonly:=not btnEdit.Down;
    frmEdit.Show;
    frmEdit.SetFocus;
end;

procedure TDocForm.frmEditClose(Sender: TObject);
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
                qryDocDOCNO.AsVariant:=null;
            end;
            if not qrySklad.UpdatesPending then qrySklad.Active:=false;
            if Visible then edtNo.SetFocus;
        end;
        4: begin
            if btnEdit.Down and frmEdit.Applied then begin
                qryCredit.Edit;
                qryCreditDOCNO.AsVariant:=null;
            end;
            if not qrySklad.UpdatesPending then qrySklad.Active:=false;
            if Visible then edtCreditNo.SetFocus;
        end;
    end;
end;

//------------search and filter routens----------------------

procedure TDocForm.cbFieldsChange(Sender: TObject);
begin
    if (DBLookup = nil) or (lock) then exit;
    lock := true;
    try
        DBLookup.DataField := cbFields.Value;
        DBLookup.Lookup(edtSearch.Text);
    finally
        lock := false;
    end;
end;

procedure TDocForm.WMTimer(var Message:TWMTimer);
begin
    inherited;
    if Message.TimerID = 1 then DBLookup.Lookup(edtSearch.Text);
end;

procedure TDocForm.edtSearchChange(Sender: TObject);
begin
    DBLookup.LookupPause(Handle, 0, 1);
end;

procedure TDocForm.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    FormKeyDown(Sender, Key, Shift);
    if (key <> 0) and DBLookup.DoKey(Key, Shift) then Key := 0;
end;

procedure TDocForm.btnFilterClick(Sender: TObject);
begin
    with DBLookup do if btnFilter.Down
        then Style := Style + [lsFiltered]
        else Style := Style - [lsFiltered];
    if Visible and edtSearch.CanFocus then edtSearch.SetFocus;
end;

procedure TDocForm.qryRefresh();
begin
    if Modified then
    case MessageBox(MsgApply, MsgQuestion, MB_ICONQUESTION or MB_YESNOCANCEL)
    of
        mrYes: begin actApply.Execute; exit; end;
        mrNo: SetModified(false);
        mrCancel: exit;
    end;
    actRefresh.Execute;
end;

procedure TDocForm.qryRecRefresh();
var bm: string;
begin
    if Modified and qryRec.UpdatesPending then
    begin
        qryRefresh;
        exit;
    end;

    qryRec.DisableControls;
    try
        if qryRec.Active and not qryRecRECID.IsNull then bm := qryRec.Bookmark;
        qryRec.Active := false;
        qryRec.Active := true;
        qryRec.Bookmark := bm;
    finally
        qryRec.EnableControls;
        TCrackDataSet(qryRec).RefreshControls;  //refresh
    end;
end;

procedure TDocForm.FilterRecords(Sender:TObject; const filter:string);
begin
    SQLParser.Where := filter;
    try
        qryRecRefresh;
    except
        SQLParser.Where:='';
    end;
end;

//--------------------grid------------------------------------------------------

procedure TDocForm.grdRecTitleButtonClick(Sender: TObject;
  AFieldName: String);
var
    reorder: boolean;
    fld: TField;
begin
    fld := qryRec.FindField(AFieldName);

    if (fld = nil) then begin
        reorder := SQLParser.OrderBy <> '';
        if reorder then SQLParser.OrderBy := '';
    end else begin
        reorder := SQLParser.OrderByUpdate(qryRec.FieldByName(AFieldName).origin);
    end;
    if not reorder then Exit;

    qryRecRefresh;
end;

procedure TDocForm.grdRecIButtonClick(Sender: TObject);
begin
    grdRecTitleButtonClick(Sender, '');
end;

procedure TDocForm.grdRecCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
var
    fld: TField;
    st: integer;
begin
    fld := qryRec.FindField(AFieldName);
    if fld <> nil then st := SQLParser.OrderByState(fld.origin) else st := 0;
    case st of
        0: AFont.Style:=[];
        else AFont.Style:=[fsBold];
    end;
end;

procedure TDocForm.grdRecCalcTitleImage(Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
var
    st: integer;
begin
    st := SQLParser.OrderByState(Field.origin);
    case st of
        -1 : TitleImageAttributes.ImageIndex:=1;
        1  : TitleImageAttributes.ImageIndex:=0;
        else TitleImageAttributes.ImageIndex:=-1;
    end;
end;

//-----------------------key routens-----------------------------

procedure TDocForm.FormKeyDown(Sender: TObject; var Key: Word;
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
        keySearch : begin
            pnlSearch.Visible := not pnlSearch.Visible;
            if pnlSearch.Visible then edtSearch.SetFocus else SetFocus;
        end;
        keyProcess : ;
        else begin
            if (Key=VK_ESCAPE) then begin
                if (Sender=edtDebit) then edtDebit.Visible := false;
            end else if (Key=VK_RETURN) then begin
                if (Sender=edtProd) then grdRec.SetActiveField('CNT')
                else if (Sender=edtSkidka) then qryDocPARAM2.Text:=edtSkidka.Text
                else if (Sender=edtNalog) then qryDocPARAM3.Text:=edtNalog.Text
                else if (Sender=edtDebit) then edtDebit.Visible := false
                else if (ssCtrl in Shift) then begin
                    if (Sender=edtClient1) then btnClient1.Click
                    else if (Sender=edtClient2) then btnClient2.Click
                    else if (Sender=edtNo) then btnNo.Click
                    else if (Sender=edtCreditNo) then btnCreditNo.Click
                end;
            end else if (Key=VK_INSERT) and (ssCtrl in Shift) then begin
                if (Sender=edtClient1) then begin qryDocCLIENTID1.AsVariant:=null; btnClient1.Click; end
                else if (Sender=edtClient2) then begin qryDocCLIENTID2.AsVariant:=null; btnClient2.Click; end
            end else exit;
        end;
    end;
    key:=0;
end;

procedure TDocForm.grdRecKeyPress(Sender: TObject; var Key: Char);
begin
    if not btnEdit.Down then
        Data.lookupDatasetKey(TwwDBGrid(Sender).DataSource.DataSet, TwwDBGrid(Sender).GetActiveField, Key);
end;

//------------------------------------------------------------------------------

procedure TDocForm.mLoadClick(Sender: TObject);
var
    dlg: TSaveDialog;
    dlg2: TOpenDialog;
    params: integer;
begin
    if (sender = mSave) then begin
        dlg := TSaveDialog.Create(nil);
        try
            dlg.Options := dlg.Options + [ofOverwritePrompt];
            dlg.FileName := Caption;
            if not qryDocDOCNO.IsNull then dlg.FileName := dlg.FileName + '_№' + qryDocDOCNO.AsString;
            dlg.FileName := dlg.FileName + '.xml';
            dlg.Filter := 'XML Документы (*.xml)|*.xml|Все файлы (*.*)|*.*';
            if (dlg.Execute) then saveToFile(dlg.FileName);
        finally
            dlg.Destroy;
        end;
    end
    else if (sender = mLoad) then begin
        btnEdit.Down := true;
        actEdit.Execute;
        if (qryRec.RecordCount > 0) then try begin
            if MessageBox('В документе уже имеются данные,'#13#10'они будут заменены на новые, продолжить?', MsgQuestion, MB_ICONQUESTION or MB_YESNO) = mrNo then Exit;
            ClientLock := true;
            while not qryRec.Eof or not qryRec.Bof do qryRec.Delete;
        end finally
            ClientLock := false;
        end;

        dlg2 := TOpenDialog.Create(nil);
        try
            dlg2.Filter := 'XML Документы (*.xml)|*.xml|Все файлы (*.*)|*.*';
            if (dlg2.Execute) then begin
                params := 0;
                loadFromFile(dlg2.FileName, params);
            end;
        finally
            dlg2.Destroy;
        end;
    end;
end;

procedure TDocForm.SaveToFile(filename:string);
var
    fld: TField;
    strm: TFileStream;
    i: integer;

procedure write(str:string);
begin
    strm.Write(PChar(str)^, Length(str));
end;

function cor(str:string): string;
var
    i, pos: integer;
    s: string;
begin
    pos := 1;
    result := '';
    for i := 1 to Length(str) do begin
        case str[i] of
        '"': s := '&quot;';
        '>': s := '&gt;';
        '<': s := '&lt;';
        else continue;
        end;
        result := result + copy(str, pos, i - pos) + s;
        pos := i + 1;
    end;
    result := result + copy(str, pos, Length(str));
end;

begin
    if FileExists(filename) then DeleteFile(filename);
    strm := TFileStream.Create(filename, fmCreate);
    try
        Write('<?xml version="1.0" encoding="windows-1251"?>'#13#10);

        // write doc fields
        Write('<doc ');
        for i := 0 to qryDoc.FieldCount - 1 do begin
            fld := qryDoc.Fields[i];
            if not fld.IsNull then
                Write(fld.FieldName + '="' + cor(fld.AsString) + '" ');
        end;
        if qryCredit.Active and not qryCreditDOCNO.IsNull then Write('PDOCNO="' + cor(qryCreditDOCNO.AsString) + '" ');
        Write('>'#13#10);

        // write records
        qryRec.First;
        while not qryRec.EOF do begin
            // write rec fields
            Write('<rec ');
            for i := 0 to qryRec.FieldCount - 1 do begin
                fld := qryRec.Fields[i];
                if not fld.IsNull then
                    Write(fld.FieldName + '="' + cor(fld.AsString) + '" ');
            end;
            Write('/>'#13#10);

            qryRec.Next;
        end;

        Write('</doc>');
    finally
        strm.Destroy;
    end
end;

function VarAsString(const v: variant): string;
begin
    try
        if VarIsNull(v) then result := ''
        else result := v;
    except
        result := '';
    end;
end;

procedure TDocForm.LoadFromFile(filename:string; params:integer);
var
    fld: TField;
    doc: IXMLDOMDocument;
    root, elm: IXMLDOMElement;
    list:IXMLDOMNodeList;
    err: IXMLDOMParseError;
    i, j, cnt, qryProdClientId: integer;
    ostcnt, ostcnt_min, needcnt: double;
    v: string;
    bm: TBookmark;

begin

    // open xml
    doc := CreateComObject(CLASS_DOMDocument) as IXMLDOMDocument;
    if not doc.load(filename) then begin
        err := doc.parseError;
        text := err.srcText;
        if (text<>'') then text := 'строка ' + IntToStr(err.line) + ' позиция ' + IntToStr(err.linepos) + ':'#13#10 + text;
        text := err.url + #13#10 + err.reason + text;
        raise Exception.Create(text);
    end;
    root := doc.documentElement;

    // test for correct file
    if (root.tagName <> 'doc') then exit;

    LoadLock := true;
    try

        // read doc fields
        qryDoc.Edit;
        for i := 0 to qryDoc.FieldCount - 1 do begin
            fld := qryDoc.Fields[i];
            if (fld.FieldKind = fkData) and (fld <> qryDocDOCID) and (fld <> qryDocPDOCID)
            and (fld <> qryDocCLIENTID1) and (fld <> qryDocCLIENTNAME1) and (fld <> qryDocCLIENT1)
            and (fld <> qryDocCLIENTID2) and (fld <> qryDocCLIENTNAME2) and (fld <> qryDocCLIENT2) and (fld <> qryDocADDRESS2)
            then try
                fld.Value := root.getAttribute(fld.FieldName);
            except
            end
        end;

        // activate client query
        qryClient.Active := true;

        // search client1
        if Desktop <> deskOutDoc then begin
            v := VarAsString(root.getAttribute(qryDocCLIENTNAME1.FieldName));
            if (v <> '') and ((qryClientNAME.Value = v) or qryClient.Locate('NAME', v, [])) then begin
                qryDocCLIENTID1.Value := qryClientCLIENTID.Value;
                qryDocCLIENT1.Value := qryClientCLIENT.Value;
                qryDocCLIENTNAME1.Value := v;
            end else begin
                qryDocCLIENTID1.AsVariant := Null;
                qryDocCLIENT1.AsVariant := Null;
                if (v <> '') then v := msgLoadDocNotFoundPrefix + v;
                qryDocCLIENTNAME1.Value := v;
            end;
        end;

        // search client2
        if Desktop <> deskInDoc then begin
            v := VarAsString(root.getAttribute(qryDocCLIENTNAME2.FieldName));
            if (v <> '') and ((qryClientNAME.Value = v) or qryClient.Locate('NAME', v, [])) then begin
                qryDocCLIENTID2.Value := qryClientCLIENTID.Value;
                qryDocCLIENT2.Value := qryClientCLIENT.Value;
                qryDocADDRESS2.Value := qryClientADDRESS2.Value;
                qryDocCLIENTNAME2.Value := v;
            end else begin
                qryDocCLIENTID2.AsVariant := Null;
                qryDocCLIENT2.AsVariant := Null;
                qryDocADDRESS2.AsVariant := Null;
                if (v <> '') then v := msgLoadDocNotFoundPrefix + v;
                qryDocCLIENTNAME2.Value := v;
            end;
        end;

        // set pdocno
        if qryCredit.Active and (qryCredit.Tag = 0) then try
            qryCredit.Edit;
            qryCreditDOCNO.AsVariant := root.getAttribute('PDOCNO');
        except
        end;

        // activate product query
        if Desktop = deskInDoc then edtProductSrc.LookupValue := '';
        qryProd.Active:=true;
        qryProdClientId := qryProd.Params[0].AsInteger;

        // read rec fields
        list := root.getElementsByTagName('rec');
        cnt := list.length;
        for j := 0 to cnt - 1 do begin
            elm := list.item[j] as IXMLDOMElement;
            qryRec.Insert;

            for i := 0 to qryRec.FieldCount - 1 do begin
                fld := qryRec.Fields[i];
                if fld = qryRecDOCID then qryRecDOCID.Value := qryDocDOCID.Value
                else if (fld.FieldKind = fkData) and (fld <> qryRecCLIENTID1) and (fld <> qryRecINDOCID) and (fld <> qryRecINDOCID) and (fld <> qryRecPDOCID) and (fld <> qryRecPDOCID) then try
                    qryRec.Fields[i].Value := elm.getAttribute(qryRec.Fields[i].FieldName);
                except
                end
            end;

            qryRecCLIENTID1.AsInteger := qryProdClientId;

            v := qryRecPRODUCT2.Value;
            qryProd.First;
            if (v <> '') and qryProd.Locate('PRODUCT2', v, []) then begin

                // Search product with need count
                needcnt := qryRecUNIT.AsFloat * qryRecCNT.AsFloat;
                ostcnt_min := qryProdUNIT.AsFloat * qryProdCNT.AsFloat;
                bm := qryProd.GetBookmark;
                while not qryProd.Eof do begin
                    qryProd.Next;
                    if qryProdPRODUCT2.Value <> v then break;
                    ostcnt := qryProdUNIT.AsFloat * qryProdCNT.AsFloat;
                    if (needcnt <= ostcnt) and (ostcnt_min > ostcnt) then begin
                      ostcnt_min := ostcnt;
                      bm := qryProd.GetBookmark;
                    end;
                end;
                qryProd.GotoBookmark(bm);

                // Apply product
                qryRecPRODID.AsVariant := qryProdPRODID.AsVariant;
                qryRecINDOCID.AsVariant := qryProdINDOCID.AsVariant;
                qryRecINRECID.AsVariant := qryProdINRECID.AsVariant;
                if (DocParams and dpVozvrat) <> 0 then begin
                    qryRecPDOCID.Value := qryProdPDOCID.Value;
                    qryRecPRECID.Value := qryProdPRECID.Value;
                end;
            end
            else begin
                qryRecPRODUCT2.Value := msgLoadDocNotFoundPrefix + qryRecPRODUCT2.Value;
                //if v <> '' then qryRecPRODUCT2.AsVariant := 0;
            end;

        end;

        qryRec.CheckBrowseMode;
        qryDoc.CheckBrowseMode;

    finally
        LoadLock := false;
    end;

    if Desktop = deskInDoc then edtProductSrc.LookupValue := '';

end;

//------------------------------------------------------------------------------
// Show Rec Out Data

procedure TDocForm.miRecOutClick(Sender: TObject);
var p: TPoint;
begin
    if frmRecRef = nil then frmRecRef := TfrmRecRef.Create(Application);
    p := Mouse.CursorPos;
    if (p.X + frmRecRef.Width) > Screen.Width then p.X := Screen.Width - frmRecRef.Width;
    if (p.Y + frmRecRef.Height) > Screen.Height then p.Y := Screen.Height - frmRecRef.Height;
    frmRecRef.Left := p.X;
    frmRecRef.Top := p.Y;
    frmRecRef.Init(srcRec);
end;

procedure TDocForm.miRecFieldClick(Sender: TObject);
var p:TPoint;
begin
    p := Mouse.CursorPos;
    with TGridForm.Create(self) do begin
        Grid:=grdRec;
        Left:=p.x;
        Top:=p.y;
        Show;
    end;
end;

end.
