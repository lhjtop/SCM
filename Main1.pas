unit Main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ComCtrls, ToolWin, ExtCtrls, DB, ADODB,
  ZAbstractConnection, ZConnection, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, StdCtrls;

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
    procedure N2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Function INI_Read(FileNames,Section,Key: string): string;
    procedure ZConnection1AfterConnect(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);

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
  ResultReturn : Integer;

implementation

//uses LogInForMain;
 uses Booth,LogIn;
 //uses LogIn;
//uses LogInForMain;

{$R *.dfm}

/////////////////////////////////////////////////////////////////
//    ��   ��   ��
/////////////////////////////////////////////////////////////////

//==================================================================
// Name      : TMainFrm.FormCreate
// Desc      : ���� ��  �ʱ�ȭ �Լ�
// Type      : �� ���ν���
// Parameter : ����
// Return    : ����
//==================================================================

procedure TFormMain.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  // ���� ��
  //showmessage ('������ ������ üũ�ؾ� ��');

  //showmessage('����� ������ �޾ƾ� ��');

  //loginfrm.ShowModal;

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
// Name      : TMainFrm.N5Click
// Desc      : ����� ��ȯ
//==================================================================
procedure TFormMain.N33Click(Sender: TObject);
begin
  FormLogIn.ShowModal;
end;

//==================================================================
// Name      : TMainFrm.N5Click
// Desc      : ����ü� �����ü� ����
//==================================================================
procedure TFormMain.N5Click(Sender: TObject);
begin
  FormBooth.Show;
end;

//==================================================================
// Name      : TMainFrm.Timer1Timer
// Desc      : Timer�� �ð� ǥ��
//==================================================================
procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  statusbar1.Panels[0].Text:=datetostr(date); //���¹ٿ� ��¥ ǥ��
  statusBar1.Panels[1].Text :=timetostr(time); //���¹ٿ� �ð� ǥ��



end;
procedure TFormMain.ZConnection1AfterConnect(Sender: TObject);
begin

end;

//==================================================================
// Name      : TMainFrm.Timer1Timer
// Desc      : Timer�� �ð� ǥ��
//==================================================================
Function TFormMain.INI_Read(FileNames,Section,Key: string): string;
begin
  //Function INI_Read(FileNames,Section,Key: string): string;
end;
end.