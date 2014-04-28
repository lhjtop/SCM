unit Main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ComCtrls, ToolWin, ExtCtrls, DB, ADODB,
  ZAbstractConnection, ZConnection, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, StdCtrls,
  lhjModule;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    N31: TMenuItem;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ToolButton3: TToolButton;
    OpenDialog1: TOpenDialog;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    N37: TMenuItem;
    N38: TMenuItem;
    N36: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    ButtonClose: TButton;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Function INI_Read(FileNames,Section,Key: string): string;
    procedure ZConnection1AfterConnect(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N13Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  MyOver=  -9999;
  MyMax = 100000;
  pPW = '22';

var
  FormMain: TFormMain;
  FormSecurity : TFormMain;
  //FormDailyReport : TFormMain;
  ResultReturn : Integer;

implementation

 uses
  Booth,LogIn, CoManager, Security, DailyReport, CarManager;
//uses LogInForMain;

{$R *.dfm}

/////////////////////////////////////////////////////////////////
//    선   언   문
/////////////////////////////////////////////////////////////////

//==================================================================
// Name      : TMainFrm.FormCreate
// Desc      : 메인 폼  초기화 함수
// Type      : 폼 프로시져
// Parameter : 없음
// Return    : 없음
//==================================================================

procedure TFormMain.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  // 메인 폼
  //showmessage ('서버와 연결을 체크해야 함');

  //showmessage('사용자 인증을 받아야 함');

  //loginfrm.ShowModal;

end;

//==================================================================
// Name      : TMainFrm.N13Click
// Desc      : 보험 담당 관리
//==================================================================
procedure TFormMain.N13Click(Sender: TObject);
begin
  FormCharge
end;

//==================================================================
// Name      : TMainFrm.N5Click
// Desc      : 사용자 전환
//==================================================================
procedure TFormMain.N33Click(Sender: TObject);
begin
  FormLogIn.ShowModal;
end;

//==================================================================
// Name      : TFormMain.N5Click
// Desc      : 배출시설 방지시설 일지
//==================================================================
procedure TFormMain.N5Click(Sender: TObject);
{var
  FormSecurity:TFormSecurity; }
begin
  {
  FormSecurity:=TFormSecurity.Create(self);
  FormSecurity.ShowModal;
  if FormSecurity.EditPW.Text=pPW then ResultReturn:='OK'
                                  else ResultReturn:='FAIL';
  FormSecurity.Free;
  if ResultReturn='OK' then }FormBooth.Show;

end;
//==================================================================
// Name      : N6Click
// Desc      : 차량 관리
//==================================================================
procedure TFormMain.N6Click(Sender: TObject);
begin
  // 차량관리
  FormCM.show;
end;

//==================================================================
// Name      : TFormMain.N8Click
// Desc      : 일계표 일지
//==================================================================
procedure TFormMain.N8Click(Sender: TObject);
begin
  // 일계표
  FormDailyReport.Show;
end;

//==================================================================
// Name      : TFormMain.N55Click
// Desc      : 회사 정보 관리
//==================================================================
procedure TFormMain.N55Click(Sender: TObject);
{var
  FormSecurity:TFormSecurity;}

begin
  {
  FormSecurity:=TFormSecurity.Create(self);
  FormSecurity.ShowModal;
  if FormSecurity.EditPW.Text=pPW then ResultReturn:='OK'
                                  else ResultReturn:='FAIL';
  FormSecurity.Free;
  if ResultReturn='OK' then} FormCoManager.ShowModal;

end;

//==================================================================
// Name      : TMainFrm.N2Click
// Desc      : end
//==================================================================
procedure TFormMain.N2Click(Sender: TObject);    // end
begin
  close;
end;

//==================================================================
// Name      : TMainFrm.Timer1Timer
// Desc      : Timer로 시간 표현
//==================================================================
procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  statusbar1.Panels[0].Text:=datetostr(date); //상태바에 날짜 표시
  statusBar1.Panels[1].Text :=timetostr(time); //상태바에 시간 표시



end;
procedure TFormMain.ZConnection1AfterConnect(Sender: TObject);
begin

end;

//==================================================================
// Name      : TMainFrm.Timer1Timer
// Desc      : Timer로 시간 표현
//==================================================================
Function TFormMain.INI_Read(FileNames,Section,Key: string): string;
begin
  //Function INI_Read(FileNames,Section,Key: string): string;
end;
end.
