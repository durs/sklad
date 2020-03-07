unit AboutFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TAboutForm = class(TForm)
    Panel1: TPanel;
    LogoImage: TImage;
    lbInfo: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  AboutForm: TAboutForm;

procedure AboutExecute;
procedure AboutShow;
procedure AboutHide;

implementation
uses dataunit;
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

procedure TAboutForm.FormCreate(Sender: TObject);
var
  dt:TDateTime;
  y,m,d : Word;
begin
  try
    dt := Now;
    DecodeDate(dt, y, m, d);
    if y < 2014 then y:=2014;
    lbInfo.Caption := Format(
      'Yuri Dursin (C) 1998-%d Версия %s'#10#13+
      'http://durs.github.io/sklad',
      [y, AppVersion])
  except
  end;
end;

end.
