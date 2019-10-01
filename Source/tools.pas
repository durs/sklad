unit tools;
interface
uses
    Windows, Messages, SysUtils, Classes, Controls, Forms, Graphics,
    IBCustomDataSet, IBQuery, IBStoredProc;

procedure DebitCorrect;
procedure OstatokCorrect;
procedure OstatokChangePrice(clientid:integer);
function OstatokCreateDoc(clientid:integer): integer;
function CreateQRCode(const text: string; bmp: TBitmap = nil): TBitmap;

implementation
uses dataunit, paramfrm, DelphiZXingQRCode, QR_Win1251;

procedure DebitCorrect;
begin
    try
        Data.msgStatus(msgWaitQuery);
        Data.ExecuteSQL2('execute procedure correct_debit');
    finally
        Data.msgStatus('');
    end;
end;

procedure OstatokCorrect;
begin
    try
        Data.msgStatus(msgWaitQuery);
        Data.ExecuteSQL2('execute procedure correct_ostatok(null, null, null, null)');
    finally
        Data.msgStatus('');
    end;
end;

procedure OstatokChangePrice(clientid:integer);
var finprice:integer;
begin
    with TParamForm.Create(nil) do
    try
        Panels := [ppPercent, ppPrice];
        if ShowModal = mrOk then with TIBStoredProc.Create(nil) do
        try
            finprice := 0;
            if btnInPrice.Checked then finprice := 1
            else if btnProdPrice.Checked then finprice := 2;
            Data.msgStatus(msgWaitQuery);
            Database := data.db;
            Transaction := data.trApply;
            if not data.trApply.InTransaction then data.trApply.StartTransaction;
            try
                StoredProcName := 'UPDATE_OSTATOK_PRICE';
                Prepare;
                ParamByName('clientid').AsInteger := clientid;
                ParamByName('per').AsFloat := StrToFloat(edtPercent.Text);
                ParamByName('finprice').AsInteger := finprice;
                ParamByName('priceinfo').AsInteger := GetPriceInfo();
                ExecProc;
            except
                data.trApply.Rollback;
                raise;
            end;
            data.trApply.Commit;
        finally
            Data.msgStatus('');
            Destroy;
        end;
    finally
        Destroy;
    end;
end;

function OstatokCreateDoc(clientid:integer):integer;
begin
    with TIBStoredProc.Create(nil) do try
        Data.msgStatus(msgWaitQuery);
        Database:=data.db;
        Transaction:=data.trApply;
        if not data.trApply.InTransaction then data.trApply.StartTransaction;
        try
            StoredProcName:='CREATE_DOC_PRODUCT2';
            Prepare;
            ParamByName('clientid').AsInteger:=clientid;
            ExecProc;
            result:=ParamByName('docid').AsInteger;
        except
            data.trApply.Rollback;
            result:=0;
            raise;
        end;
        data.trApply.Commit;
    finally
        Data.msgStatus('');
        Destroy;
    end;
end;

function CreateQRCode(const text: string; bmp: TBitmap = nil): TBitmap;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  if bmp = nil then bmp := TBitmap.Create;
  Result := bmp;
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.RegisterEncoder(ENCODING_WIN1251, TWin1251Encoder);
    QRCode.Encoding := ENCODING_WIN1251;
    QRCode.QuietZone := 4;
    QRCode.Data := text;
    bmp.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          bmp.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          bmp.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
end;


end.
