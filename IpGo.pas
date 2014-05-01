unit IpGo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, ExtCtrls, StdCtrls,
  lhjModule, NiceGrid;

type
  TFormIpGo = class(TForm)
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    LabelTitle: TLabel;
    GroupBoxCar: TGroupBox;
    RadioGroup1: TRadioGroup;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    EditID: TEdit;
    EditCar110: TEdit;
    EditCar108: TEdit;
    EditCar106: TEdit;
    EditCar109: TEdit;
    EditCar107: TEdit;
    EditCar113: TEdit;
    EditCar112: TEdit;
    EditCar111: TEdit;
    EditCar105: TEdit;
    EditCar104: TEdit;
    EditCarName: TEdit;
    EditCarNo: TEdit;
    ComboBox1: TComboBox;
    CheckBox3: TCheckBox;
    Label15: TLabel;
    ButtonDate1: TButton;
    Button1: TButton;
    Button2: TButton;
    ButtonToday1: TButton;
    ButtonToday2: TButton;
    ButtonClient: TButton;
    Shape1: TShape;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    ButtonHelp: TButton;
    ButtonSave: TButton;
    ButtonEnd: TButton;
    GroupBoxBoHum: TGroupBox;
    Shape2: TShape;
    Edit12: TEdit;
    CheckBox4: TCheckBox;
    Shape3: TShape;
    ComboBox2: TComboBox;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    ComboBox3: TComboBox;
    ButtonCharge: TButton;
    GroupBox3: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    ComboBoxParts: TComboBox;
    Edit1Parts: TEdit;
    NiceGridParts: TNiceGrid;
    ButtonParts1: TButton;
    ButtonParts2: TButton;
    ButtonParts3: TButton;
    Shape4: TShape;
    GroupBox1: TGroupBox;
    Edit17: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Edit18: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Label39: TLabel;
    Edit19: TEdit;
    Label38: TLabel;
    Label40: TLabel;
    GroupBox4: TGroupBox;
    Edit16: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Label19: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit6: TEdit;
    GroupBox5: TGroupBox;
    Edit8: TEdit;
    Edit13: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    NiceGrid1: TNiceGrid;
    Shape5: TShape;
    Label30: TLabel;
    Memo2: TMemo;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Shape6: TShape;
    Shape8: TShape;
    Shape7: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonToday1Click(Sender: TObject);
    procedure ButtonToday2Click(Sender: TObject);
    procedure ButtonEndClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonClientClick(Sender: TObject);
    Procedure Text_Init(Index : Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIpGo: TFormIpGo;

implementation

{$R *.dfm}

//==================================================================
// Name      : FormActivate
// Desc      : Initial
//==================================================================
procedure TFormIpGo.FormActivate(Sender: TObject);
begin
  if EditFlag then LabelTitle.Caption := '입 고 차 량 수 정'
  else             LabelTitle.Caption := '입 고 차 량 입 력';
  Text_Init(0);
end;

//==================================================================
// Name      : ButtonSaveClick
// Desc      : Save : 입고 처리, 수정 저장
//==================================================================
procedure TFormIpGo.ButtonSaveClick(Sender: TObject);
begin

end;
//==================================================================
// Name      : ButtonClientClick
// Desc      : 거래처 리스트 보여주기
//==================================================================
procedure TFormIpGo.ButtonClientClick(Sender: TObject);
begin

end;

//==================================================================
// Name      : TMainFrm.Timer1Timer
// Desc      : Timer로 시간 표현
//==================================================================
procedure TFormIpGo.Timer1Timer(Sender: TObject);
begin
  statusbar1.Panels[0].Text:=datetostr(date); //상태바에 날짜 표시
  statusBar1.Panels[1].Text :=timetostr(time); //상태바에 시간 표시
end;

//==================================================================
// Name      : ButtonToday1Click
// Desc      : 입고일로 날짜 맞춤
//==================================================================

procedure TFormIpGo.ButtonToday1Click(Sender: TObject);
begin
  editcar112.Text   := editcar111.Text;
end;

//==================================================================
// Name      : ButtonToday1Click
// Desc      : 입고일로 날짜 맞춤
//==================================================================
procedure TFormIpGo.ButtonToday2Click(Sender: TObject);
begin
  editcar113.Text   := editcar111.Text;
end;

//==================================================================
// Name      : Text_Init1
// Desc      : 텍스트 박스 초기화
//==================================================================
Procedure TFormIpGo.Text_Init(Index : Integer);
var
  i   : Integer;
  TComp : TComponent; //Tedit;
begin
  case Index of
  0: begin
      // ------------------- 세부정보 초기화
      for i := 0 to GroupBoxCar.ControlCount - 1 do  // 세부정보 - 전체
      begin
        TComp :=GroupBoxCar.Controls[i];
        if TComp.ClassName ='TEdit' then begin
          Tedit(GroupBoxCar.Controls[i]).text :='';
          Tedit(GroupBoxCar.Controls[i]).Height:=19;
        end;  // if
        if Tcomp.ClassName='TMemo' then TMemo(GroupBoxCar.Controls[i]).text :='';
      end; // for
     end;
  71: begin // find
      //editFind.Text := '';

    end;
  end;

end;



//==================================================================
// Name      : ButtonEndClick
// Desc      : close / not save end
//==================================================================
procedure TFormIpGo.ButtonEndClick(Sender: TObject);
begin
  close;
end;


end.
