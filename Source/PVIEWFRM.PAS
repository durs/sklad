unit pviewfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRPrntr, Quickrpt, ToolWin, ComCtrls, StdCtrls;

type
  TPreviewForm = class(TForm)
    QRPreview: TQRPreview;
    barTool: TToolBar;
    btnPrint: TToolButton;
    btnPrinter: TToolButton;
    edtZoom: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
  private
    rep:TQuickRep;
  public
    procedure Execute(rep:TQuickRep);
  end;

var
  PreviewForm: TPreviewForm;

implementation

{$R *.DFM}

procedure TPreviewForm.FormCreate(Sender: TObject);
begin
    QRPreview.ZoomToWidth;
end;

procedure TPreviewForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TPreviewForm.FormDestroy(Sender: TObject);
begin
    if rep<>nil then begin
        rep.QRPrinter.Free;
        rep.Free;
    end;
end;

procedure TPreviewForm.Execute(rep:TQuickRep);
begin
    self.rep:=rep;
    Show;
    rep.Prepare;
    QRPreview.QRPrinter:=rep.QRPrinter;
end;

procedure TPreviewForm.btnPrintClick(Sender: TObject);
begin
    rep.QRPrinter.Print;
end;

procedure TPreviewForm.btnPrinterClick(Sender: TObject);
begin
    rep.QRPrinter.PrintSetup;
end;

end.
