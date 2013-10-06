unit openfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmOpen = class(TForm)
    edtFileName: TEdit;
    Label1: TLabel;
    btnOpen: TButton;
    lbServer: TLabel;
    edtServer: TComboBox;
    Label3: TLabel;
    edtName: TEdit;
    dlgOpen: TOpenDialog;
    btnOk: TButton;
    btnCancel: TButton;
    edtServerKind: TComboBox;
    Label4: TLabel;
    procedure btnOpenClick(Sender: TObject);
    procedure edtServerKindChange(Sender: TObject);
  private
  public
    function Execute(): integer;
  end;

var
  frmOpen: TfrmOpen;

implementation
uses DataUnit;


{$R *.dfm}

function TfrmOpen.Execute(): integer;
var server:string;
begin
    result := 0;
    ShowModal;
    if edtServer.Enabled then server := Trim(edtServer.Text);
    if (ModalResult = mrOk) then Data.connect(Trim(edtName.Text), server, Trim(edtFileName.Text));
end;

procedure TfrmOpen.btnOpenClick(Sender: TObject);
begin
    dlgOpen.FileName := edtFileName.Text;
    if (dlgOpen.Execute) then begin
        edtFileName.Text := ExtractRelativePath(AppPath, dlgOpen.FileName);
        edtName.Text := ChangeFileExt(ExtractFileName(edtFileName.Text), '');
    end;
end;

procedure TfrmOpen.edtServerKindChange(Sender: TObject);
var
    dir, path: AnsiString;
    is_full: boolean;
begin
    edtServer.Enabled := edtserverKind.ItemIndex > 0;
    lbServer.Enabled := edtServer.Enabled;
    btnOpen.Enabled := not edtServer.Enabled;
    path := edtFileName.Text;
    is_full := pos(':',path) > 0;
    if edtServer.Enabled and not is_full then begin
        dir := GetCurrentDir();
        SetCurrentDir(AppPath);
        edtFileName.Text := ExpandFileName(path);
        SetCurrentDir(dir);
    end else if not edtServer.Enabled and is_full then begin
        edtFileName.Text := ExtractRelativePath(AppPath, path);
    end;
end;

end.
