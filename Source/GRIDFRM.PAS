unit gridfrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, CheckLst;

type
  TGridForm = class(TForm)
    lbFields: TCheckListBox;
    procedure lbFieldsClickCheck(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    grd:TwwDBGrid;
    flds: array of TField;
    procedure setGrid(grd:TwwDBGrid);
  public
    property Grid:TwwDBGrid read grd write setGrid;
  end;

var
  GridForm: TGridForm;

implementation

{$R *.DFM}

procedure TGridForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;    
end;

procedure TGridForm.FormDeactivate(Sender: TObject);
begin
    Close;
end;

procedure TGridForm.setGrid(grd:TwwDBGrid);
var
    i, j, p, l:integer;
    ds:TDataSet;
    s:AnsiString;
begin
    self.grd:=grd;
    lbFields.Clear;
    if (grd.DataSource=nil) or (grd.DataSource.DataSet=nil) then exit;
    ds:=grd.DataSource.DataSet;
    SetLength(flds, ds.FieldCount);
    j:=0;
    for i:=0 to ds.FieldCount-1 do begin
        if (ds.Fields[i].Tag <> 0) then continue;
        s := ds.Fields[i].DisplayLabel;
        l := Length(s);
        for p := 1 to l do begin
            if s[p] = '~' then s[p] := ' ';
        end;
        flds[j] := ds.Fields[i];
        lbFields.Items.Add(s);
        lbFields.Checked[j] := flds[j].Visible;
        Inc(j);
    end;
end;

procedure TGridForm.lbFieldsClickCheck(Sender: TObject);
var
    i:integer;
begin
    i:=lbFields.ItemIndex;
    flds[i].Visible:=lbFields.Checked[i];
end;

end.
