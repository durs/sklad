unit print;
interface

uses Windows, DB, SysUtils, Forms, Controls, Printers, Chart, IBQuery, Variants,
    Quickrpt, QRPrntr, QRCtrls, QRPrev;

procedure ChangeReportFont(R:TQuickRep; Fontname:string);

procedure printAuto(const Title,SubTitle:string; Dataset:TDataset; Summary:string; Orientation:TPrinterOrientation=poPortrait);
procedure printChart(const Title,SubTitle:string; Chart:TCustomChart);

procedure printDoc1(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
procedure printDoc2(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
procedure printDoc3(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
procedure printDoc3_Nalog(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
procedure printDoc4(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
//procedure printQuery(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil);
procedure printOrder(docid:integer; qryDoc:TDataSet=nil; copies:integer=1);
procedure printROrder(docid:integer; qryDoc:TDataSet=nil; copies:integer=1);
procedure printPlat(docid:integer; qryDoc:TDataSet=nil; copies:integer=1);

procedure printPrice(params: integer; clientid: integer = 0; qry: TDataSet = nil; repid: integer = 0);
procedure printOstatok(clientid:integer=0; qry:TDataSet=nil);
procedure printCennik(ver:integer; clientid:integer=0; qry:TDataSet=nil);

procedure printDebit(summary:boolean=false; debitkind:integer=3; clientid:integer=0; kind:integer=0; qryDebit:TIBQuery=nil; qryCredit:TIBQuery=nil);
procedure printSaldo(clientid1:integer=0; clientid2:integer=0);

procedure printDayReport;
procedure printKassaReport;
procedure printNalogReport;
procedure printBookIn;
procedure printBookOut;
procedure printProductReport;

implementation
uses
    paramfrm, dataunit, repdataunit,
    repauto,
    repprice, repost, repcenk, repcenk2,
    repdebit, repsaldo, repsaldo2,
    repdoc1, repdoc2, repdoc3, repdoc3_nalog, repdoc4, repqry,
    reporder, reprorder, repplat,
    repkassa, repnalog, repday,
    repbookin, repbookout, repprod;

procedure printReport(rep:TQuickRep; preview:boolean);
begin
    if rep.DataSet<>nil then rep.DataSet.DisableControls;
    try
        if preview or (GetKeyState(VK_SHIFT) and $80 <> 0) then
        begin
          rep.PreviewInitialState := wsMaximized;
          rep.PrevInitialZoom := qrZoomToWidth;
          rep.PreviewModal;
          rep.Cancel;
        end
        else begin
          rep.Print;
        end;
    finally
        if rep.DataSet<>nil then rep.DataSet.EnableControls;
    end;
end;

procedure ChangeReportDataset(R:TQuickRep; Old,New:TDataset);
var i:integer;
begin
    if R.Dataset=Old then R.Dataset:=New;
    for i:=0 to R.ComponentCount-1 do begin
        if (R.Components[i] is TQRSubDetail) and (TQRSubDetail(R.Components[i]).Dataset=Old) then
            TQRSubDetail(R.Components[i]).Dataset:=New else
        if (R.Components[i] is TQRDBText) and (TQRDBText(R.Components[i]).Dataset=Old) then
            TQRDBText(R.Components[i]).Dataset:=New else
        if (R.Components[i] is TQRDBRichText) and (TQRDBRichText(R.Components[i]).Dataset=Old) then
            TQRDBRichText(R.Components[i]).Dataset:=New else
        if (R.Components[i] is TQRDBImage) and (TQRDBImage(R.Components[i]).Dataset=Old) then
            TQRDBImage(R.Components[i]).Dataset:=New;
    end;
end;

procedure ChangeReportFont(R:TQuickRep; Fontname:string);
var i:integer;
begin
    if Fontname='' then Fontname:='Times New Roman';
    if AnsiCompareText(R.Font.Name,FontName)<>0 then begin
        R.Font.Name:=FontName;
        for i:=0 to R.ComponentCount-1 do begin
            if R.Components[i] is TQRCustomLabel then TQRCustomLabel(R.Components[i]).Font.Name:=Fontname;
            if R.Components[i] is TQRSysData then TQRSysData(R.Components[i]).Font.Name:=Fontname;
        end;
    end;
end;


procedure printAuto(const Title,SubTitle:string; Dataset:TDataset; Summary:string; Orientation:TPrinterOrientation=poPortrait);
var rep:TQuickRep;
begin
    rep:=CreateAutoReport(nil,Title,SubTitle,Dataset,Summary,Orientation);
    try
        printReport(rep, PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printChart(const Title,SubTitle:string; Chart:TCustomChart);
//var rep: TQuickRep;
begin
{
    rep := TReportChart.Create(nil);
    try
        TReportChart(rep).AssignChart(Chart);
        rep.ReportTitle := Title + SubTitle;
        printReport(rep, PreviewReports);
    finally
        rep.Free;
    end;
}
end;
//-----------------------------------------------------------------

procedure printPrice(params: integer; clientid: integer = 0; qry: TDataSet = nil; repid: integer = 0);
var
    rep: TReportPrice;
    preview: boolean;
begin
    rep:=TReportPrice.Create(nil);
    try
        rep.Name:='';
        if (qry = nil) or (clientid = 0) then begin
            if (ParamForm = nil) then ParamForm := TParamForm.Create(Application);
            ParamForm.Caption := rep.ReportTitle;
            ParamForm.Panels := [ppSklad, ppPrice, ppPreview];
            if clientid <> 0 then ParamForm.edtSklad.KeyValue := clientid;
            //if priceinfo <> -1 then ParamForm.SetPriceInfo(priceinfo);
            if ParamForm.ShowModal <> mrOk then exit;
            preview := ParamForm.btnPreview.Checked;
            clientid := ParamForm.edtSklad.KeyValue;
            params := (params and not rpPriceMask) or ParamForm.GetPriceInfo();
        end else begin
            preview := PreviewReports;
        end;

        if (preview) then params := params or rpPreview else params := params and not rpPreview;
        RepData.PrintPrice(repid, params, clientid, qry);
    finally
        rep.Free;
    end;
end;

procedure printOstatok(clientid:integer=0; qry:TDataSet=nil);
var
    rep:TReportOstatok;
    preview:boolean;
begin
    rep:=TReportOstatok.Create(nil);
    try
        rep.Name:='';
        if (qry=nil) then begin
            if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
            ParamForm.Caption:=rep.ReportTitle;
            ParamForm.Panels:=[ppSklad,ppPreview];
            if clientid<>0 then ParamForm.edtSklad.KeyValue:=clientid;
            if ParamForm.ShowModal<>mrOk then exit;
            preview:=ParamForm.btnPreview.Checked;
            clientid:=ParamForm.edtSklad.KeyValue;
            rep.qryOst.ParamByName('clientid').AsInteger:=clientid;
            rep.qryOst.Active:=true;
            rep.qryOst.FetchAll;
        end else begin
            TIBQuery(qry).FetchAll;
            ChangeReportDataset(rep,rep.qryOst,qry);
            preview:=PreviewReports;
        end;
        data.setActiveSklad(clientid);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printCennik(ver:integer; clientid:integer=0; qry:TDataSet=nil);
var
    rep:TQuickRep;
    qrysrc: TIBQuery;
    preview:boolean;
    params:integer;
begin
    if ver = 1 then
    begin
        rep := TReportCennik.Create(nil);
        qrysrc := TReportCennik(rep).qry;
    end
    else begin
        rep := TReportCennik2.Create(nil);
        qrysrc := TReportCennik2(rep).qry;
    end;
    try
        rep.Name:='';

        if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
        ParamForm.Caption:=rep.ReportTitle;
        ParamForm.Panels:=[ppPrice, ppPreview];
        if (qry=nil) then Include(ParamForm.Panels, ppSklad);
        if clientid<>0 then ParamForm.edtSklad.KeyValue:=clientid;
        if ParamForm.ShowModal<>mrOk then exit;
        preview:=ParamForm.btnPreview.Checked;
        if (qry=nil) then begin
            clientid:=ParamForm.edtSklad.KeyValue;
            qrysrc.ParamByName('clientid').AsInteger:=clientid;
            qrysrc.Active:=true;
            qrysrc.FetchAll;
        end else begin
            qrysrc.FetchAll;
            ChangeReportDataset(rep, qrysrc, qry);
        end;
        data.setActiveSklad(clientid);
        params := ParamForm.GetPriceInfo();
        if ver = 1 then TReportCennik(rep).Init(params) else TReportCennik2(rep).Init(params);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printCennik2(clientid:integer=0; qry:TDataSet=nil);
var
    rep:TReportCennik2;
    preview:boolean;
begin
    rep:=TReportCennik2.Create(nil);
    try
        rep.Name:='';
        if (qry=nil) then begin
            if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
            ParamForm.Caption:=rep.ReportTitle;
            ParamForm.Panels:=[ppSklad,ppPreview];
            if clientid<>0 then ParamForm.edtSklad.KeyValue:=clientid;
            if ParamForm.ShowModal<>mrOk then exit;
            preview:=ParamForm.btnPreview.Checked;
            clientid:=ParamForm.edtSklad.KeyValue;
            rep.qry.ParamByName('clientid').AsInteger:=clientid;
            rep.qry.Active:=true;
            rep.qry.FetchAll;
        end else begin
            TIBQuery(qry).FetchAll;
            ChangeReportDataset(rep,rep.qry,qry);
            preview:=PreviewReports;
        end;
        data.setActiveSklad(clientid);
        rep.Init(1); 
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printDebit(summary:boolean=false; debitkind:integer=3; clientid:integer=0; kind:integer=0; qryDebit:TIBQuery=nil; qryCredit:TIBQuery=nil);
var
    rep:TReportDebit;
    preview:boolean;
begin
    rep:=TReportDebit.Create(nil);
    try
        rep.Name:='';
        if (clientid=0) then begin
            if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
            ParamForm.Caption:=rep.ReportTitle;
            ParamForm.Panels:=[ppSklad,ppPreview];
            if ParamForm.ShowModal<>mrOk then exit;
            preview:=ParamForm.btnPreview.Checked;
            clientid:=ParamForm.edtSklad.KeyValue;
        end else begin
            preview:=PreviewReports;
        end;
        rep.clientid:=clientid;
        rep.kind:=kind;
        if (debitkind and 1 <>0) then rep.setDebitQuery(qryDebit,summary);
        if (debitkind and 2 <>0) then rep.setCreditQuery(qryCredit,summary);
        data.setActiveSklad(clientid);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printSaldo(clientid1:integer=0; clientid2:integer=0);
var
    rep:TQuickRep;
    qry: TIBQuery;
    preview:boolean;
    name: string;
begin

    if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
    ParamForm.Caption:='Обороты с клиентами';
    ParamForm.Panels:=[ppSklad,ppClient,ppDate1,ppDate2,ppPreview];
    if clientid1<>0 then ParamForm.SetSkladID(clientid1);
    ParamForm.SetClientID(clientid2);
    if ParamForm.ShowModal<>mrOk then exit;
    clientid2 := StrToIntDef(ParamForm.edtClient.LookupValue, 0);
    if clientid2 <> 0 then
    begin
      rep:=TReportSaldo.Create(nil);
      qry:=TReportSaldo(rep).qry;
    end
    else begin
      rep:=TReportSaldo2.Create(nil);
      qry:=TReportSaldo2(rep).qry;
    end;
    try
        rep.Name:='';
        preview:=ParamForm.btnPreview.Checked;
        clientid1:=ParamForm.edtSklad.KeyValue;
        qry.ParamByName('clientid1').AsInteger:=clientid1;
        if clientid2 <> 0 then qry.ParamByName('clientid2').AsInteger:=clientid2;
        qry.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        qry.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        qry.Active:=true;
        qry.FetchAll;

        if rep is TReportSaldo then
          TReportSaldo(rep).lbClient.Caption:=data.qryClientCLIENT.AsString;

        data.setActiveSklad(clientid1);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

//-----------------------------------------------------------------------------

procedure printDoc1(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
var rep:TReportDoc1;
begin
    //if ReportDoc1=nil then ReportDoc1:=TReportDoc1.Create(nil);
    //rep:=ReportDoc1;
    rep:=TReportDoc1.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        if (qryRec=nil) then begin
            rep.qryRec.Active:=false;
            rep.qryRec.ParamByName('docid').AsInteger:=docid;
            rep.qryRec.Active:=true;
            rep.setSubDataset(nil);
        end else begin
            rep.setSubDataset(qryRec);
        end;
        printReport(rep, PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printDoc2(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
var rep:TReportDoc2;
begin
    //if ReportDoc2=nil then ReportDoc2:=TReportDoc2.Create(nil);
    //rep:=ReportDoc2;
    rep:=TReportDoc2.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        if (qryRec=nil) then begin
            rep.qryRec.Active:=false;
            rep.qryRec.ParamByName('docid').AsInteger:=docid;
            rep.qryRec.Active:=true;
            rep.setSubDataset(nil);
        end else begin
            rep.setSubDataset(qryRec);
        end;
        printReport(rep,PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printDoc3(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
var rep:TReportDoc3;
begin
    //if ReportDoc3=nil then ReportDoc3:=TReportDoc3.Create(nil);
    //rep:=ReportDoc3;
    rep:=TReportDoc3.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        if (qryRec=nil) then begin
            rep.qryRec.Active:=false;
            rep.qryRec.ParamByName('docid').AsInteger:=docid;
            rep.qryRec.Active:=true;
            rep.setSubDataset(nil);
        end else begin
            rep.setSubDataset(qryRec);
        end;
        printReport(rep,PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printDoc3_Nalog(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
var rep:TReportDoc3_Nalog;
begin
    //if ReportDoc3_Nalog=nil then ReportDoc3_Nalog:=TReportDoc3_Nalog.Create(nil);
    //rep:=ReportDoc3_Nalog;
    rep:=ReportDoc3_Nalog.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        if (qryRec=nil) then begin
            rep.qryRec.Active:=false;
            rep.qryRec.ParamByName('docid').AsInteger:=docid;
            rep.qryRec.Active:=true;
            rep.setSubDataset(nil);
        end else begin
            rep.setSubDataset(qryRec);
        end;
        printReport(rep,PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printDoc4(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil; copies:integer=1);
var rep:TReportDoc4;
begin
    //if ReportDoc4=nil then ReportDoc4:=TReportDoc4.Create(nil);
    //rep:=ReportDoc4;
    rep:=TReportDoc4.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        if (qryRec=nil) then begin
            rep.qryRec.Active:=false;
            rep.qryRec.ParamByName('docid').AsInteger:=docid;
            rep.qryRec.Active:=true;
            rep.setSubDataset(nil);
        end else begin
            rep.setSubDataset(qryRec);
        end;
        printReport(rep,PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printQuery(docid:integer; qryDoc:TDataSet=nil; qryRec:TDataSet=nil);
var rep: TReportQuery;
begin
    //if ReportQuery = nil then ReportQuery := TReportQuery.Create(nil);
    //rep := ReportQuery;
    rep:=TReportQuery.Create(nil);
    try
        rep.Name := '';
        if (qryDoc=nil) then begin
            rep.qryDoc.Active := false;
            rep.qryDoc.ParamByName('docid').AsInteger := docid;
            rep.qryDoc.Active := true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        if (qryRec = nil) then begin
            rep.qryRec.Active := false;
            rep.qryRec.ParamByName('docid').AsInteger := docid;
            rep.qryRec.Active := true;
            rep.setSubDataset(nil);
        end else begin
            rep.setSubDataset(qryRec);
        end;
        printReport(rep, PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printOrder(docid:integer; qryDoc:TDataSet=nil; copies:integer=1);
var rep:TReportOrder;
begin
    //if ReportOrder=nil then ReportOrder:=TReportOrder.Create(nil);
    //rep:=ReportOrder;
    rep:=TReportOrder.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        printReport(rep,PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printROrder(docid:integer; qryDoc:TDataSet=nil; copies:integer=1);
var rep:TReportROrder;
begin
    //if ReportROrder=nil then ReportROrder:=TReportROrder.Create(nil);
    //rep:=ReportROrder;
    rep:=TReportROrder.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        printReport(rep,PreviewReports);
    finally
        rep.Free;
    end;
end;

procedure printPlat(docid:integer; qryDoc:TDataSet=nil; copies:integer=1);
var rep:TReportPlat;
begin
    //if ReportPlat=nil then ReportPlat:=TReportPlat.Create(nil);
    //rep:=ReportPlat;
    rep:=TReportPlat.Create(nil);
    try
        rep.Name:='';
        rep.PrinterSettings.Copies:=copies;
        if (qryDoc=nil) then begin
            rep.qryDoc.Active:=false;
            rep.qryDoc.ParamByName('docid').AsInteger:=docid;
            rep.qryDoc.Active:=true;
            rep.setDataset(nil);
        end else begin
            rep.setDataset(qryDoc);
        end;
        printReport(rep,PreviewReports);
    finally
        rep.Free;
    end;
end;

//-------------------------------------------------------------------
procedure printDayReport;
var
    rep:TReportDay;
    preview:boolean;
begin
    rep:=TReportDay.Create(nil);
    try
        rep.Name:='';
        if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
        ParamForm.Caption:=rep.ReportTitle;
        ParamForm.Panels:=[ppSklad,ppDate,ppPreview];
        if ParamForm.ShowModal<>mrOk then exit;
        preview:=ParamForm.btnPreview.Checked;
        data.setActiveSklad(ParamForm.edtSklad.KeyValue);
        rep.init(ParamForm.edtDate.Date);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printKassaReport;
var
    rep: TReportKassa;
    clientid: integer;
    preview: boolean;
    str: string;
begin
    rep := TReportKassa.Create(nil);
    try
        rep.Name := '';
        if (ParamForm = nil) then ParamForm := TParamForm.Create(Application);
        ParamForm.Caption := rep.ReportTitle;
        ParamForm.Panels := [ppSklad, ppDate1, ppDate2, ppPreview, ppKassa];
        if ParamForm.ShowModal <> mrOk then exit;
        preview := ParamForm.btnPreview.Checked;
        clientid := ParamForm.edtSklad.KeyValue;
        str := ParamForm.edtKassaSum.Text;
        if (str = '<Авто>') then rep.sum := null else  rep.sum := StrToFloatDef(ParamForm.edtKassaSum.Text, 0);
        str := ParamForm.edtKassaNo.Text;
        if (str = '<Авто>') then rep.pageno := null else  rep.pageno := StrToIntDef(ParamForm.edtKassaNo.Text, 0);
        rep.qry.ParamByName('clientid').AsInteger := clientid;
        rep.qry.ParamByName('date1').AsDateTime := ParamForm.edtDate1.Date;
        rep.qry.ParamByName('date2').AsDateTime := ParamForm.edtDate2.Date;
        rep.qry.Active := true;
        rep.qry.FetchAll;
        data.setActiveSklad(clientid);
        printReport(rep, preview);
    finally
        rep.Free;
    end;
end;

procedure printNalogReport;
var
    rep:TReportNalog;
    clientid:integer;
    preview:boolean;
begin
    rep:=TReportNalog.Create(nil);
    try
        rep.Name:='';
        if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
        ParamForm.Caption:=rep.ReportTitle;
        ParamForm.Panels:=[ppSklad,ppDate1,ppDate2,ppPreview];
        if ParamForm.ShowModal<>mrOk then exit;
        preview:=ParamForm.btnPreview.Checked;
        clientid:=ParamForm.edtSklad.KeyValue;
        rep.qry.ParamByName('clientid').AsInteger:=clientid;
        rep.qry.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        rep.qry.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        rep.qry.Active:=true;
        rep.qry.FetchAll;
        data.setActiveSklad(clientid);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printBookIn;
var
    rep:TReportBookIn;
    clientid:integer;
    preview:boolean;
begin
    rep:=TReportBookIn.Create(nil);
    try
        rep.Name:='';
        if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
        ParamForm.Caption:=rep.ReportTitle;
        ParamForm.Panels:=[ppSklad,ppDate1,ppDate2,ppPreview];
        if ParamForm.ShowModal<>mrOk then exit;
        preview:=ParamForm.btnPreview.Checked;
        clientid:=ParamForm.edtSklad.KeyValue;
        rep.qry.ParamByName('clientid').AsInteger:=clientid;
        rep.qry.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        rep.qry.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        rep.qry.Active:=true;
        rep.qry.FetchAll;
        rep.qryInner.ParamByName('clientid').AsInteger:=clientid;
        rep.qryInner.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        rep.qryInner.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        rep.qryInner.Active:=true;
        data.setActiveSklad(clientid);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printBookOut;
var
    rep:TReportBookOut;
    clientid:integer;
    preview:boolean;
begin
    rep:=TReportBookOut.Create(nil);
    try
        rep.Name:='';
        if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
        ParamForm.Caption:=rep.ReportTitle;
        ParamForm.Panels:=[ppSklad,ppDate1,ppDate2,ppPreview];
        if ParamForm.ShowModal<>mrOk then exit;
        preview:=ParamForm.btnPreview.Checked;
        clientid:=ParamForm.edtSklad.KeyValue;
        rep.qry.ParamByName('clientid').AsInteger:=clientid;
        rep.qry.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        rep.qry.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        rep.qry.Active:=true;
        rep.qry.FetchAll;
        rep.qryInner.ParamByName('clientid').AsInteger:=clientid;
        rep.qryInner.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        rep.qryInner.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        rep.qryInner.Active:=true;
        data.setActiveSklad(clientid);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

procedure printProductReport;
var
    rep:TReportProduct;
    clientid:integer;
    preview:boolean;
begin
    rep:=TReportProduct.Create(nil);
    try
        rep.Name:='';
        if (ParamForm=nil) then ParamForm:=TParamForm.Create(Application);
        ParamForm.Caption:=rep.ReportTitle;
        ParamForm.Panels:=[ppSklad,ppDate1,ppDate2,ppPreview];
        if ParamForm.ShowModal<>mrOk then exit;
        preview:=ParamForm.btnPreview.Checked;
        clientid:=ParamForm.edtSklad.KeyValue;
        rep.qry.ParamByName('clientid').AsInteger:=clientid;
        if ParamForm.edtDate1.Text=''
            then rep.qry.ParamByName('date1').Value:=null
            else rep.qry.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        rep.qry.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        rep.qry.Active:=true;
        rep.qry.FetchAll;
        rep.qryInner.ParamByName('clientid').AsInteger:=clientid;
        rep.qryInner.ParamByName('date1').AsDateTime:=ParamForm.edtDate1.Date;
        rep.qryInner.ParamByName('date2').AsDateTime:=ParamForm.edtDate2.Date;
        rep.qryInner.Active:=true;
        data.setActiveSklad(clientid);
        printReport(rep,preview);
    finally
        rep.Free;
    end;
end;

end.
