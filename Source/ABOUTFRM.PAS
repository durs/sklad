unit AboutFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TAboutForm = class(TForm)
    Panel1: TPanel;
    LogoImage: TImage;
    Label4: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
  private
  public
  end;

var
  AboutForm: TAboutForm;

procedure AboutExecute;
procedure AboutShow;
procedure AboutHide;

implementation

{$R *.DFM}

procedure AboutExecute;
begin
  with TAboutForm.create(nil) do try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure AboutShow;
var W,H:integer;
begin
  if AboutForm=nil then AboutForm:=TAboutForm.create(nil);
  with AboutForm do begin
    W:=ClientWidth; H:=ClientHeight;
    BorderStyle:=bsNone;
    ClientWidth:=W; ClientHeight:=H;
    Show;
    Refresh;
  end;
end;

procedure AboutHide;
begin
  if AboutForm=nil then Exit;
  with AboutForm do begin
    Close;
    Destroy;
  end;
  AboutForm:=nil;
end;

end.
