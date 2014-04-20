unit CarManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, NiceGrid,
  lhjModule;

type
  TFormCM = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Timer1: TTimer;
    PanelMessage: TPanel;
    LabelMessage: TLabel;
    ButtonOK: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    MonthCalendar1: TMonthCalendar;
    TabSheet2: TTabSheet;
    NiceGrid1: TNiceGrid;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    NiceGrid2: TNiceGrid;
    GroupBox5: TGroupBox;
    TabSheet3: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    TabSheet4: TTabSheet;
    LabelDate: TLabel;
    GroupBox6: TGroupBox;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCM: TFormCM;
  dLen : Double;
  viLen :Integer;

implementation

{$R *.dfm}

//==================================================================
// Name      : FormActivate
// Desc      :
//==================================================================
procedure TFormCM.FormActivate(Sender: TObject);
begin
  // Text_Init;
  // Grid_Init;
  MonthCalendar1.Date:= Now;   // ���ó�¥�� �ʱ�ȭ
  LabelDate.Caption:=DateView(MonthCalendar1.Date);


  labelMessage.Caption  :='*** �������� *** 2014�� 4�� 18�Ϻ��� �������� '+
    '���α׷� ������ �����Ͽ����ϴ�. �� ���������� �Ҽ��� ���Դϴ�....';
  dLen:=( length(LabelMessage.Caption) + 5 ) * (-12) ;
  viLen:=PanelMessage.Width-5;
  LabelMessage.left:=viLen;
end;

//==================================================================
// Name      : MonthCalendar1Click
// Desc      : Calendar
//==================================================================
procedure TFormCM.MonthCalendar1Click(Sender: TObject);
var
  ToDate : AnsiString;
begin
  //Text_Init;
  ToDate:=DateToStr(MonthCalendar1.Date);
  LabelDate.Caption:=DateView(MonthCalendar1.Date);
end;






















procedure TFormCM.PageControl1Change(Sender: TObject);
begin

end;

//==================================================================
// Name      : ButtonOKClick
// Desc      : �������� OK
//==================================================================
procedure TFormCM.ButtonOKClick(Sender: TObject);
begin
  timer1.Enabled:=not(timer1.Enabled);
end;

//==================================================================
// Name      : Timer1Timer
// Desc      : �������׿� Ÿ�̸�
//==================================================================
procedure TFormCM.Timer1Timer(Sender: TObject);
var
  i     : Integer;
begin
   if LabelMessage.left > dLen then     // -548
    begin
      LabelMessage.left := LabelMessage.left-3;
      inc(i);
    end else LabelMessage.left := viLen; //800;
end;

end.