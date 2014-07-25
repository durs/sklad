unit paramfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, wwdbdatetimepicker, wwdblook, Db, Variants,
  IBCustomDataSet, IBQuery;

type
  TParamForm = class(TForm)
    pnlBottom: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    pnlTop: TPanel;
    pnlDate2: TPanel;
    Label2: TLabel;
    edtDate2: TwwDBDateTimePicker;
    pnlDate1: TPanel;
    Label1: TLabel;
    edtDate1: TwwDBDateTimePicker;
    pnlDate: TPanel;
    lbDate: TLabel;
    edtDate: TwwDBDateTimePicker;
    pnlPercent: TPanel;
    Label4: TLabel;
    edtPercent: TEdit;
    btnInPrice: TCheckBox;
    pnlSklad: TPanel;
    lbSklad: TLabel;
    edtSklad: TDBLookupComboBox;
    pnlPreview: TPanel;
    btnPreview: TCheckBox;
    pnlClient: TPanel;
    Label3: TLabel;
    edtClient: TwwDBLookupCombo;
    pnlPrice: TPanel;
    btnPrice1: TCheckBox;
    btnPrice2: TCheckBox;
    btnPrice3: TCheckBox;
    pnlKassa: TPanel;
    Label5: TLabel;
    edtKassaNo: TComboBox;
    edtKassaSum: TComboBox;
    Label6: TLabel;
    btnPrice4: TCheckBox;
    btnPrice5: TCheckBox;
    btnProdPrice: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInPriceClick(Sender: TObject);
  private
  public
    Panels: set of(ppSklad, ppClient, ppDate, ppDate1, ppDate2, ppPercent, ppKassa, ppPreview, ppPrice);
    procedure SetPriceInfo(priceinfo: integer);
    function GetPriceInfo: integer;
  end;

var
  ParamForm: TParamForm;

implementation
uses DataUnit, config;
{$R *.DFM}

procedure TParamForm.btnInPriceClick(Sender: TObject);
begin
  if (Sender=btnInPrice) then btnProdPrice.Enabled := not btnInPrice.Checked;
  if (Sender=btnProdPrice) then btnInPrice.Enabled := not btnProdPrice.Checked;
  if (not btnInPrice.Enabled) then btnInPrice.Checked := false;
  if (not btnProdPrice.Enabled) then btnProdPrice.Checked := false;
end;

procedure TParamForm.FormCreate(Sender: TObject);
var
    v: string;
begin
  edtSklad.KeyValue := Data.qrySkladCLIENTID.Value;
  edtDate.Date := Date;
  btnPreview.Checked := PreviewReports;
  v := CurrentConfig.getString('forms.TParamForm.date1');
  if v <> '' then try edtDate1.Date := StrToDate(v); except end;
  v := CurrentConfig.getString('forms.TParamForm.date2');
  if v <> '' then try edtDate2.Date := StrToDate(v); except end;
  SetPriceInfo(CurrentConfig.getInteger('forms.TParamForm.price'));
end;

procedure TParamForm.FormDestroy(Sender: TObject);
begin
  CurrentConfig.setString('forms.TParamForm.date1', edtDate1.Text);
  CurrentConfig.setString('forms.TParamForm.date2', edtDate2.Text);
  CurrentConfig.setInteger('forms.TParamForm.price', GetPriceInfo);
end;

procedure TParamForm.FormShow(Sender: TObject);
begin
  pnlSklad.Visible := ppSklad in Panels;
  pnlClient.Visible := ppClient in Panels;
  pnlDate.Visible := ppDate in Panels;
  pnlDate1.Visible := ppDate1 in Panels;
  pnlDate2.Visible := ppDate2 in Panels;
  pnlPercent.Visible := ppPercent in Panels;
  pnlKassa.Visible := ppKassa in Panels;
  pnlPrice.visible := ppPrice in Panels;
  pnlPreview.visible := ppPreview in Panels;

  pnlPreview.Top := pnlTop.Height;
  pnlPrice.Top := pnlTop.Height;
  pnlPercent.Top := pnlTop.Height;
  pnlKassa.Top := pnlTop.Height;
  pnlDate2.Top := pnlTop.Height;
  pnlDate1.Top := pnlTop.Height;
  pnlDate.Top := pnlTop.Height;
  pnlClient.Top := pnlTop.Height;
  pnlSklad.Top := pnlTop.Height;

  //if pnlSklad.Visible and (edtSklad.KeyValue = null) then
  //  edtSklad.KeyValue := Data.qrySkladCLIENTID.Value;

  if pnlClient.Visible then data.qryClient.Active := true;

  if pnlPrice.visible then
  begin
  {
    btnPrice1.Caption := data.qrySkladPRICE_NAME.AsString + ' öåíà';
    btnPrice2.Caption := data.qrySkladPRICE_NAME2.AsString + ' öåíà';
    btnPrice3.Caption := data.qrySkladPRICE_NAME3.AsString + ' öåíà';
    btnPrice4.Caption := data.qrySkladPRICE_NAME4.AsString + ' öåíà';
    btnPrice5.Caption := data.qrySkladPRICE_NAME5.AsString + ' öåíà';
  }
  end;
  
end;

procedure TParamForm.SetPriceInfo(priceinfo:integer);
begin
  btnPrice1.Checked := (priceinfo and 1) <> 0;
  btnPrice2.Checked := (priceinfo and 2) <> 0;
  btnPrice3.Checked := (priceinfo and 4) <> 0;
  btnPrice4.Checked := (priceinfo and 8) <> 0;
  btnPrice5.Checked := (priceinfo and 16) <> 0;
end;

function TParamForm.GetPriceInfo:integer;
begin
  result:=0;
  if btnPrice1.Checked then result := result or 1;
  if btnPrice2.Checked then result := result or 2;
  if btnPrice3.Checked then result := result or 4;
  if btnPrice4.Checked then result := result or 8;
  if btnPrice5.Checked then result := result or 16;
end;

end.
