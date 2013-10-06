unit PswdFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPassword = class(TForm)
    Label1: TLabel;
    edtPassword: TEdit;
    btnOk: TButton;
    btnCancel: TButton;
    lbCaption: TLabel;
  private

  public

  end;

var
  frmPassword: TfrmPassword;

function CheckPassword(const caption, pswd:string): integer;
function GetPasswordHash(const pswd:string): string;

implementation

{$R *.dfm}

function GetPasswordHash(const pswd:string): string;
var
    len, i: integer;
    code: byte;
    hash: string;
begin
    hash := pswd;
    len := Length(hash);
    for i := 1 to len do
    begin
        code := Ord(hash[i]);
        code := (code or (code shr 1) xor (code shl 2)) ;
        if (code = 0) then code := Ord('.'); 
        hash[i] := Chr(code);
    end;
    result := hash;
end;

function CheckPassword(const caption, pswd:string): integer;
begin
    if pswd = '' then
    begin
        result := 1;
        exit;
    end;

    result := 0;
    frmPassword := TfrmPassword.Create(nil);
    try
        frmPassword.lbCaption.Caption := caption;
        while frmPassword.ShowModal = mrOk do
        begin
            if GetPasswordHash(frmPassword.edtPassword.Text) = pswd then
            begin
                result := 1;
                break;
            end;
            Sleep(1000);
            frmPassword.edtPassword.SelectAll;
       end
    finally
        frmPassword.Free;
    end;
end;


end.
