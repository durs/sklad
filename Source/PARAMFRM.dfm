�
 TPARAMFORM 0�  TPF0
TParamForm	ParamFormLeft�TopmAutoSize	BorderStylebsDialogCaption   Выбор параметровClientHeight�ClientWidth8Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnCreate
FormCreate	OnDestroyFormDestroyOnShowFormShowPixelsPerInch`
TextHeight TPanel	pnlBottomLeft TopWidth8Height2AlignalTop
BevelOuterbvNoneTabOrder TButtonbtnOkLeftKTopWidthKHeightCaptionOkDefault	ModalResultTabOrder   TButton	btnCancelLeft� TopWidthKHeightCaption   B<5=0ModalResultTabOrder   TPanelpnlTopLeft Top Width8HeightAlignalTop
BevelOuterbvNoneTabOrder   TPanelpnlDate2Left TopuWidth8HeightAlignalTop
BevelOuterbvNoneTabOrder TLabelLabel2LeftTopWidthPHeightCaption   Конечная дата :  TwwDBDateTimePickeredtDate2LeftiTopWidth� HeightCalendarAttributes.Font.CharsetDEFAULT_CHARSETCalendarAttributes.Font.ColorclWindowTextCalendarAttributes.Font.Height�CalendarAttributes.Font.NameMS Sans SerifCalendarAttributes.Font.Style Epoch�
ShowButton	TabOrder    TPanelpnlDate1Left Top[Width8HeightAlignalTop
BevelOuterbvNoneTabOrder TLabelLabel1LeftTopWidthWHeightCaption   Начальная дата :  TwwDBDateTimePickeredtDate1LeftiTopWidth� HeightCalendarAttributes.Font.CharsetDEFAULT_CHARSETCalendarAttributes.Font.ColorclWindowTextCalendarAttributes.Font.Height�CalendarAttributes.Font.NameMS Sans SerifCalendarAttributes.Font.Style Epoch�
ShowButton	TabOrder    TPanelpnlDateLeft TopAWidth8HeightAlignalTop
BevelOuterbvNoneTabOrder TLabellbDateLeft>TopWidth Height	AlignmenttaRightJustifyCaption
   Дата :  TwwDBDateTimePickeredtDateLeftiTopWidth� HeightCalendarAttributes.Font.CharsetDEFAULT_CHARSETCalendarAttributes.Font.ColorclWindowTextCalendarAttributes.Font.Height�CalendarAttributes.Font.NameMS Sans SerifCalendarAttributes.Font.Style Epoch�
ShowButton	TabOrder    TPanel
pnlPercentLeft Top� Width8HeightDAlignalTop
BevelOuterbvNoneTabOrder TLabelLabel4Left]TopWidth� Height	AlignmenttaRightJustifyCaption4   Изменить на                              %  TEdit
edtPercentLeft� TopWidth;HeightTabOrder Text0  	TCheckBox
btnInPriceLeftGTopWidth� Height	AlignmenttaLeftJustifyCaption   От цены приходаTabOrderOnClickbtnInPriceClick  	TCheckBoxbtnProdPriceLeftGTop/Width� Height	AlignmenttaLeftJustifyCaption,   От цены и списка товаровTabOrderOnClickbtnInPriceClick   TPanelpnlSkladLeft TopWidth8HeightAlignalTop
BevelOuterbvNoneTabOrder TLabellbSkladLeft9TopWidth%HeightCaption   Склад :  TDBLookupComboBoxedtSkladLefthTopWidth� Height	DataFieldCLIENTID
DataSourceData.srcSkladActiveKeyFieldCLIENTID	ListFieldNAME
ListSourceData.srcSkladTabOrder    TPanel
pnlPreviewLeft TopeWidth8HeightAlignalTop
BevelOuterbvNoneTabOrder 	TCheckBox
btnPreviewLeft TopWidthHeight	AlignmenttaLeftJustifyCaption/   Предварительный просмотрTabOrder    TPanel	pnlClientLeft Top'Width8HeightAlignalTop
BevelOuterbvNoneTabOrder TLabelLabel3Left3TopWidth*HeightCaption   Клиент :  TwwDBLookupCombo	edtClientLeftiTopWidth� HeightDropDownAlignmenttaLeftJustifySelected.Strings"   NAME	50	Наименование	F LookupTableData.qryClientLookupFieldCLIENTIDStylecsDropDownListTabOrder AutoDropDown	
ShowButton	SearchDelayd
UseTFieldsPreciseEditRegionAllowClearKey	ShowMatchText	   TPanelpnlPriceLeft TopWidth8HeightZAlignalTop
BevelOuterbvNoneTabOrder	 	TCheckBox	btnPrice1Left TopWidthHeight	AlignmenttaLeftJustifyCaption   Прайс 1 ценаChecked	State	cbCheckedTabOrder   	TCheckBox	btnPrice2Left TopWidthHeight	AlignmenttaLeftJustifyCaption   Прайс 2 ценаChecked	State	cbCheckedTabOrder  	TCheckBox	btnPrice3Left Top%WidthHeight	AlignmenttaLeftJustifyCaption   Прайс 3 ценаChecked	State	cbCheckedTabOrder  	TCheckBox	btnPrice4Left Top5WidthHeight	AlignmenttaLeftJustifyCaption   Прайс 4 ценаChecked	State	cbCheckedTabOrder  	TCheckBox	btnPrice5Left TopDWidthHeight	AlignmenttaLeftJustifyCaption   Прайс 5 ценаChecked	State	cbCheckedTabOrder   TPanelpnlKassaLeft Top� Width8Height8AlignalTop
BevelOuterbvNoneTabOrder
 TLabelLabel5LeftTopWidth� Height	AlignmenttaRightJustifyCaption/   Остаток на начало периода  TLabelLabel6LeftMTopWidthVHeight	AlignmenttaRightJustifyCaption   Номер страницы  	TComboBox
edtKassaNoLeft� TopWidthuHeight
ItemHeightTabOrder Text
   <Авто>Items.Strings
   <Авто>   	TComboBoxedtKassaSumLeft� TopWidthuHeight
ItemHeightTabOrderText
   <Авто>Items.Strings
   <Авто>     