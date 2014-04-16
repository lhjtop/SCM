unit DailyReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceGrid, StrUtils,
  lhjModule;

type
  TFormDailyReport = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button19: TButton;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    NiceGrid1: TNiceGrid;
    Button13: TButton;
    LabelYear: TLabel;
    Button7: TButton;
    Button8: TButton;
    LabelMonth: TLabel;
    Button9: TButton;
    Button10: TButton;
    LabelDay: TLabel;
    Button11: TButton;
    Button12: TButton;
    LabelWeek: TLabel;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Edit11: TEdit;
    Button14: TButton;
    Edit12: TEdit;
    Button15: TButton;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    Edit13: TEdit;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    Button16: TButton;
    Button17: TButton;
    NiceGrid2: TNiceGrid;
    GroupBox5: TGroupBox;
    Button18: TButton;
    procedure FormActivate(Sender: TObject);

    Procedure Text_Init;
    procedure Grid_Init;
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Calendar_View(Index,x,y: integer);
    procedure DateDisplay(var dDate:ansistring);
    procedure PageControl1Change(Sender: TObject);
    procedure ObjFree(Sender : TObject);
  private
    { Private declarations }
    procedure CalDblClick(Sender : TObject);
    //procedure BtnClick(Sender : TObject);
  public
    { Public declarations }

  end;

var
  FormDailyReport: TFormDailyReport;
  SelDate : Ansistring;

implementation

{$R *.dfm}

const
  days: array[1..7] of string = ('��','��','ȭ','��','��','��','��');




//==================================================================
// Name      : Button13Click
// Desc      :   Canendar view
//==================================================================
procedure TFormDailyReport.Button13Click(Sender: TObject);
begin
  Calendar_view(1,Button13.Left,Button13.Top);
end;


//==================================================================
// Name      : Calendar_View
// Desc      :   Canendar view
//==================================================================
Procedure TFormDailyReport.Calendar_View(Index,x,y: integer);

begin
  //SelDate:='';
  with TMonthCalendar.Create(nil) do begin //CLDr do begin
    Parent := Panel1; //Self;
    Left   := x + 10;
    Top    := y + 30;
    Height := 170;
    Width  := 230;
    Name   := 'MonthCalendar71';
    OnDblClick := CalDblClick;
  end;

  {
  with TButton.Create(nil) do begin
    Parent := Self;
    Height := 25;
    Width := 37;
    Left := x + 10 + 230 - 40 ;
    Top := TMonthCalendar.Create(nil).Top + 170 +20;
    Name := 'Button71';
    Caption := '���';
    OnClick := BtnClick;
  end;}

end;

//==================================================================
// Name      : CalDblClick
// Desc      : �������� ������ �޷� ��¥ ���ý� ó��
//==================================================================
procedure TFormDailyReport.CalDblClick(Sender : TObject);
var
  aDate   : AnsiString;
begin
    //showmessage(' Calendar DblClick !!');
  aDate   := DateToStr((sender as tMonthcalendar).Date);
  if (length(adate))=0 then   SelDate := DateToStr(NOW)
                       else   SelDate := aDate;
  DateDisplay(SelDate);
  ObjFree(sender);
end;

//==================================================================
// Name      : ObjFree(Sender : TObject)
// Desc      : �������� ������ �޷� ��¥ ��ü �����
//==================================================================
procedure TFormDailyReport.ObjFree(Sender : TObject);
begin
  (sender as tMonthcalendar).Free;
  (sender as tMonthcalendar).Visible :=False;
end;

//==================================================================
// Name      : FormActivate(Sender: TObject)
// Desc      :
//==================================================================
procedure TFormDailyReport.FormActivate(Sender: TObject);
begin
  Text_Init;
  Grid_Init;
  SelDate :='';
end;


//==================================================================
// Name      : FormShow
// Desc      : �� �ʱ�ȭ
//==================================================================
procedure TFormDailyReport.FormShow(Sender: TObject);
begin
  PageControl1.Tabindex:=0;

end;



//==================================================================
// Name      : DateView(dDate:TDateTime): ansistring
// Desc      : ��¥���� �� �� �� ���Ϸ� ǥ��
//==================================================================
procedure TFormDailyReport.DateDisplay(var dDate:ansistring);
var
  yy,mm,dd,ww : ansistring;


  begin

  yy:=ansiMidStr(dDate,1,4);
  mm:=ansiMidStr(dDate,6,2);
  dd:=ansiMidStr(dDate,9,2);
  ww:= days[DayOfWeek(StrToDate(dDate))];
  labelYear.Caption     := yy + ' ��';
  labelMonth.Caption    := mm + ' �� ';
  labelDay.Caption      := dd + ' �� ';
  labelweek.Caption     := ww + '���� �ϰ�ǥ' ;

end;
















//==================================================================
// Name      : Text_Init
// Desc      : �ؽ�Ʈ �ڽ� �ʱ�ȭ
//==================================================================
Procedure TFormDailyReport.Text_Init;
begin
  // ------------------------ tab 1
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit7.Text:='';
  Edit8.Text:='';
  Edit9.Text:='';
  Edit10.Text:='';
  //---------------------- tab 2
  Edit11.Text:='';
  Edit12.Text:='';
  Edit13.Text:='';


end;

//==================================================================
// Name      : Grid_Init
// Desc      : �׸��� �ʱ�ȭ
//==================================================================
procedure TFormDailyReport.Grid_Init;
begin
  with NiceGrid1 do begin    // NiceGrid1 ���� ������
    headerline:=1;
    colcount:=9;
    ShowFooter:=True;               FooterFont.Style :=[fsBold];
    //--------------------------------------------------------
    columns[0].Title:='No';         columns[0].Width:=20;
      columns[0].HorzAlign:=haCenter;
    columns[1].Title:='�� ��';      columns[1].Width:=120;
    columns[2].Title:='������ȣ';   columns[2].Width:=80;
    columns[3].Title:='��   ��';    columns[3].Width:=150;
    columns[4].Title:='(û����)';   columns[4].Width:=78;
      columns[4].HorzAlign:=haRight;
    columns[5].Title:='�Աݾ�';     columns[5].Width:=78;
      columns[5].HorzAlign:=haRight;
      columns[5].Color:=$00F0F0FF;
    columns[6].Title:='������';     columns[6].Width:=40;
      columns[6].HorzAlign:=haRight;
    columns[7].Title:='��ݾ�';     columns[7].Width:=78;
      columns[7].HorzAlign:=haRight;
      columns[7].Color:=$00FFFAF4;
    columns[8].Title:= '���';      columns[8].Width:=80;
    //------------------------------------------------------
    Columns[0].Footer:='��';
  end;
  nicegrid1.RowCount:=40;

  // test  line

  nicegrid1[0,1]:='01';
  nicegrid1[1,1]:='�׷��彺Ÿ����12��';
  nicegrid1[2,1]:='���12��9876';
  nicegrid1[3,1]:='���� - �׽�Ʈ ������..';
  nicegrid1[4,1]:='99,000,000';
  nicegrid1[5,1]:='98,500,000';
  nicegrid1[6,1]:='89.65';
  nicegrid1[7,1]:='99,999,999';
  nicegrid1[8,1]:='�׽�Ʈ ����';

  nicegrid1.Columns[0].Footer:='��';

end;










procedure TFormDailyReport.PageControl1Change(Sender: TObject);
begin
  //ObjFree(Sender : TObject);
end;

//==================================================================
// Name      : Button6Click
// Desc      :   ����  close
//==================================================================
procedure TFormDailyReport.Button6Click(Sender: TObject);
begin
  close;
end;

end.