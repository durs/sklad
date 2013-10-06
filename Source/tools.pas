unit tools;
interface
uses
    Windows, Messages, SysUtils, Classes, Controls, Forms,
    IBCustomDataSet, IBQuery, IBStoredProc;

procedure DebitCorrect;
procedure OstatokCorrect;
procedure OstatokChangePrice(clientid:integer);
function OstatokCreateDoc(clientid:integer):integer;


implementation
uses dataunit,paramfrm;

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
begin
    with TParamForm.Create(nil) do
    try
        Panels := [ppPercent, ppPrice];
        if ShowModal = mrOk then with TIBStoredProc.Create(nil) do
        try
            Data.msgStatus(msgWaitQuery);
            Database := data.db;
            Transaction := data.trApply;
            if not data.trApply.InTransaction then data.trApply.StartTransaction;
            try
                StoredProcName := 'UPDATE_OSTATOK_PRICE';
                Prepare;
                ParamByName('clientid').AsInteger := clientid;
                ParamByName('per').AsFloat := StrToFloat(edtPercent.Text);
                ParamByName('finprice').AsBoolean := btnInPrice.Checked;
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

end.
