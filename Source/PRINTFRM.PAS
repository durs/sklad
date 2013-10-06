unit printfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, ComCtrls, IniFiles, RepDataUnit, DB;

type

  ReportPanel = record
    repid: integer;
    caption: string;
    cnt: integer;
    pnl: TPanel;
    upd: TUpDown;
  end;

  TPrintForm = class(TForm)
    pnlBottom: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    pnlTop: TPanel;
    btnPreview: TCheckBox;
    btnConfig: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
  private
    panels: array of ReportPanel;
    function ShowPanels(empty: boolean): boolean;
    procedure ClearPanels();
    procedure AddPanel(repid: integer; const caption: string);
    procedure AddPanels(reps: PListReport);
  public
    function Execute(kind: integer; docid: integer; qryDoc, qryRec, qryCredit: TDataSet): boolean;

  end;

var
  PrintForm: TPrintForm;

implementation
uses config, dataunit, print;
{$R *.DFM}

procedure TPrintForm.FormCreate(Sender: TObject);
begin
    btnPreview.Checked := PreviewReports;
end;

procedure TPrintForm.FormShow(Sender: TObject);
begin
  Realign;
end;

procedure TPrintForm.btnConfigClick(Sender: TObject);
var all: boolean;
begin
    all := ShowPanels(btnConfig.Tag <> 0);
    if all then
    begin
        btnConfig.Tag := 0;
        btnConfig.Caption := '<<';
    end else begin
        btnConfig.Tag := 1;
        btnConfig.Caption := '>>';
    end;
end;

//------------------------------------------------------------------------------

function TPrintForm.ShowPanels(empty: boolean): boolean;
var
    i: integer;
begin
    result := true;
    for i := 0 to Length(panels) - 1 do
    begin
        panels[i].pnl.Visible := empty or (panels[i].upd.Position > 0);
        if panels[i].pnl.Visible then panels[i].pnl.Top := pnlBottom.Top - 1
        else result := false;
    end;
end;

procedure TPrintForm.ClearPanels();
var
    i: integer;
begin
    for i := 0 to Length(panels) - 1 do
    begin
        if panels[i].pnl <> nil then panels[i].pnl.Free;
    end;
    SetLength(panels, 0);
end;

procedure TPrintForm.AddPanel(repid: integer; const caption: string);
var
    i, cnt: integer;
    pnl: TPanel;
    lb: TLabel;
    edt: TEdit;
    upd: TUpDown;
begin
    cnt := CurrentConfig.getInteger('forms.TPrintForm.count_' + caption, 1);

    pnl := TPanel.Create(self);
    pnl.Visible := false;
    pnl.Height := 26;
    pnl.Align := alTop;
    pnl.Parent := self;
    pnl.BevelInner := bvNone;
    pnl.BevelOuter := bvNone;
    //pnl.Top := pnlBottom.Top - 1;

    edt := TEdit.Create(self);
    edt.Left := 190;
    edt.Top := (pnl.Height - edt.Height) div 2;
    edt.Width := 30;
    edt.Text := IntToStr(cnt);
    edt.Parent := pnl;

    upd := TUpDown.Create(self);
    upd.Parent := pnl;
    upd.Associate := edt;
    upd.Position := cnt;

    lb := TLabel.Create(pnl);
    lb.Alignment := taLeftJustify;
    lb.Caption := caption;
    lb.Left := edt.Left - lb.Width - 10;
    lb.Top := (pnl.Height - lb.Height) div 2;
    lb.Parent := pnl;

    i := Length(panels);
    SetLength(panels, i + 1);
    panels[i].repid := repid;
    panels[i].caption := caption;
    panels[i].cnt := cnt;
    panels[i].pnl := pnl;
    panels[i].upd := upd;
end;

procedure TPrintForm.AddPanels(reps: PListReport);
var i: integer;
begin
    for i := 0 to Length(reps^) - 1 do begin
        AddPanel(reps^[i].id, reps^[i].caption);
    end;
end;

function TPrintForm.Execute(kind: integer; docid: integer; qryDoc, qryRec, qryCredit: TDataSet): boolean;
var i, params: integer;
begin
    ClearPanels();
    if (kind and $01) = 0 then AddPanels(@RepData.ListDocProd)
    else AddPanels(@RepData.ListDocQuery);
    if (kind and $10) <> 0 then AddPanel(1, 'Приходный кассовый ордер');
    if (kind and $20) <> 0 then AddPanel(2, 'Расходный кассовый ордер');
    if (kind and $40) <> 0 then AddPanel(4, 'Платёжное поручение');

    btnConfig.Tag := 0;
    btnConfigClick(btnConfig);

    result := (PrintForm.ShowModal = mrOk);
    if not result then exit;
    result := false;

    params := 0;
    if btnPreview.Checked then params := params or rpPreview;

    for i := 0 to Length(panels) - 1 do
    begin
        if panels[i].cnt <> panels[i].upd.Position then
        begin
            panels[i].cnt := panels[i].upd.Position;
            CurrentConfig.setInteger('forms.TPrintForm.count_' + panels[i].caption, panels[i].cnt);
        end;
        if panels[i].cnt > 0 then
        begin
            case (panels[i].repid) of
            1: printOrder(docid, qryCredit, panels[i].cnt);
            2: printROrder(docid, qryCredit, panels[i].cnt);
            4: printPlat(docid, qryCredit, panels[i].cnt);
            else RepData.printDoc(panels[i].repid, params, docid, qryDoc, qryRec, panels[i].cnt);
            end;
            result := true;
        end;
    end;
end;

//------------------------------------------------------------------------------

end.
