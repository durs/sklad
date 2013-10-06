program sklad;

uses
  Forms,
  mainfrm in 'mainfrm.pas' {MainForm},
  aboutfrm in 'aboutfrm.pas' {AboutForm},
  DATAUNIT in 'DATAUNIT.PAS' {Data: TDataModule},
  optnfrm in 'optnfrm.pas' {OptionsForm},
  prodfrm in 'prodfrm.pas' {ProductForm},
  debitfrm in 'debitfrm.pas' {DebitForm},
  doclfrm in 'doclfrm.pas' {DocListForm},
  basefrm in 'basefrm.pas',
  doccfrm in 'doccfrm.pas' {CreditDocForm},
  clntfrm in 'clntfrm.pas' {ClientForm},
  DOCFRM in 'DOCFRM.PAS' {DocForm},
  ostfrm in 'ostfrm.pas' {OstatokForm},
  paramfrm in 'paramfrm.pas' {ParamForm},
  PRINT in 'PRINT.PAS',
  printfrm in 'printfrm.pas' {PrintForm},
  tools in 'tools.pas',
  qryfrm in 'qryfrm.pas' {QueryForm},
  TOOLFRM in 'TOOLFRM.PAS' {ToolsForm},
  gridfrm in 'gridfrm.pas' {GridForm},
  docoutfrm in 'docoutfrm.pas' {frmRecRef},
  openfrm in 'openfrm.pas' {frmOpen},
  RepDataUnit in 'RepDataUnit.pas' {RepData: TDataModule},
  GuardFrm in 'GuardFrm.pas' {frmGuard},
  PswdFrm in 'PswdFrm.pas' {frmPassword},
  DispImpl in 'DispImpl.pas';

{$R *.RES}

begin
  if not checkIB then exit;
  AboutShow;
  Application.Initialize;
  Application.Title := 'Склад';
  Application.CreateForm(TData, Data);
  Application.CreateForm(TRepData, RepData);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
