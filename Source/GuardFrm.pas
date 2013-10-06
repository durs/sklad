unit GuardFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls;

type
  TfrmGuard = class(TForm)
    Label1: TLabel;
    edtDocIntrvl: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    edtDocPswd: TEdit;
    btnOk: TButton;
    btnCancel: TButton;
    Label4: TLabel;
    btnOstatok: TCheckBox;
    procedure edtDocPswdChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
  public
    PasswordModified: boolean; 
  end;

var
  frmGuard: TfrmGuard;

procedure ChangeGuardParams();

implementation
uses dataunit, pswdfrm;

{$R *.dfm}

procedure ChangeGuardParams();
begin
    if CheckPassword('Для изменения параметров', Data.DocUpdatePassword) <= 0 then exit;
    frmGuard := TfrmGuard.Create(nil);
    try
        if (Data.DocUpdateInterval <=0 ) then frmGuard.edtDocIntrvl.Text := frmGuard.edtDocIntrvl.Items[0]
        else frmGuard.edtDocIntrvl.Text := IntToStr(Data.DocUpdateInterval);
        frmGuard.btnOstatok.Checked := (Data.DocUpdateParams and $01) = $01;
        frmGuard.edtDocPswd.Text := Data.DocUpdatePassword;
        frmGuard.PasswordModified := false;
        if frmGuard.ShowModal() <> mrOk then exit;
        Data.DocUpdateInterval := StrToIntDef(frmGuard.edtDocIntrvl.Text, 0);
        if (frmGuard.btnOstatok.Checked) then Data.DocUpdateParams :=  $01
        else Data.DocUpdateParams := $00;
        Data.ConfigApply;
    finally
        frmGuard.Free;
    end;
end;

procedure TfrmGuard.edtDocPswdChange(Sender: TObject);
begin
    PasswordModified := true;
end;

procedure TfrmGuard.btnOkClick(Sender: TObject);
begin
    if PasswordModified then
    begin
        if (CheckPassword('Для корректности', GetPasswordHash(edtDocPswd.Text)) <= 0) then exit;
        Data.DocUpdatePassword := GetPasswordHash(edtDocPswd.Text);
    end;
    ModalResult := mrOk;
end;

end.
