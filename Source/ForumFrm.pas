unit ForumFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, basefrm, OleCtrls, SHDocVw;

type
  TForumForm = class(TBaseForm)
    browser: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure browserDocumentComplete(ASender: TObject; const pDisp: IDispatch;
      var URL: OleVariant);
  private
    intialized: boolean;
  public
  end;

var
  ForumForm: TForumForm;

implementation
uses MSHTML_TLB, dataunit;
{$R *.dfm}

procedure TForumForm.browserDocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  doc:IHTMLDocument2;
  win:IHTMLWindow2;
  script:string;
begin
  if not intialized and (browser.ReadyState = READYSTATE_COMPLETE) then try
    //intialized := true;
    doc := browser.Document as IHTMLDocument2;
    win := doc.parentWindow;
    script := Format('appInit({version:"%s"});', [AppVersion]);
    win.execScript(script, 'javascript');
  except
  end;
end;

procedure TForumForm.FormShow(Sender: TObject);
begin
  //browser.Navigate('C:\Projects\_Sklad\HTML\index.html');
  //browser.Navigate('http://www.ujsw.net/sklad/index.html');
  browser.Navigate('http://durs.github.io/sklad');
  intialized:=false;
end;

end.
