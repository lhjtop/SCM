unit IpGo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, ExtCtrls, StdCtrls, IniFiles, strUtils,
  ClipBrd,
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
    ButtonDate2: TButton;
    ButtonDate3: TButton;
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
    EditParts: TEdit;
    NiceGridParts: TNiceGrid;
    ButtonParts1: TButton;
    ButtonParts2: TButton;
    ButtonParts3: TButton;
    Shape4: TShape;
    GroupBoxDemand: TGroupBox;
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
    GroupBoxsurcharge: TGroupBox;
    Edit16: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    ButtonDate4: TButton;
    ButtonDate5: TButton;
    ButtonDate6: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Label19: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit6: TEdit;
    GroupBoxSVS: TGroupBox;
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
    Shape14: TShape;
    Label20: TLabel;
    Edit14: TEdit;
    Label31: TLabel;
    Edit15: TEdit;
    GroupBoxILBan: TGroupBox;
    GroupBox1: TGroupBox;
    Memo3: TMemo;
    Label49: TLabel;
    Edit40: TEdit;
    Label46: TLabel;
    Edit43: TEdit;
    Label45: TLabel;
    Edit44: TEdit;
    Edit47: TEdit;
    Label42: TLabel;
    Label44: TLabel;
    Label41: TLabel;
    Edit48: TEdit;
    Edit45: TEdit;
    Label43: TLabel;
    Edit46: TEdit;
    Edit42: TEdit;
    Label47: TLabel;
    Edit41: TEdit;
    Label48: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonToday1Click(Sender: TObject);
    procedure ButtonToday2Click(Sender: TObject);
    procedure ButtonEndClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonClientClick(Sender: TObject);
    Procedure Text_Init(Index : Integer);
    Procedure Grid_Init(Index : Integer);
    Procedure INI_Load;
    Procedure CarEditMode;  // 자동차 수정 모드
    Procedure CarNewMode;   // 신규 입고 모드
    Procedure Client_Load;  // 거래처 리스트 로드
    Procedure Charge_Load;   // 보험 담당자 리스트 로드
    procedure ButtonDate1Click(Sender: TObject);  // 거래처 리스트 로드
    Procedure Calendar_View(Index,x,y: integer);
    procedure CalDblClick(Sender : TObject);
    procedure ObjFree(Sender : TObject);
    procedure ButtonDate2Click(Sender: TObject);
    procedure ButtonDate3Click(Sender: TObject);
    procedure ButtonDate4Click(Sender: TObject);
    procedure ButtonDate5Click(Sender: TObject);
    procedure ButtonDate6Click(Sender: TObject);
    procedure ButtonChargeClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ClientDblClick(Sender : TObject);
    procedure ChargeDblClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FormIpGo: TFormIpGo;
  SelDate   : Ansistring;
  dateFlag  : Integer; // 날짜 처리 변수

implementation

{$R *.dfm}
var
  ClientList      : Array of string;  // 거래처 이름 저장변수
  ClientCnt       : integer;          // 거래처 카운트
  ChargeName,ChargePhone,ChargeFAX  : Array of string;  // 보험사 담당 저장변수
  ChargeCnt       : integer;          // 보험사 담당 카운트
  TeamFlag        : integer;          // 하청 팀 여부 확인
  TeamID          : ansiString;       // 보험 B  일반 G/M    2팀 보험C  일반 H
//==================================================================
// Name      : FormActivate
// Desc      : Initial
//==================================================================
procedure TFormIpGo.FormActivate(Sender: TObject);
begin
  ADOQuery1.Connection.LoginPrompt:=False;
  Text_Init(0); // 차량 기본 정보 clear
  Text_Init(1); // 보험 정보 clear
  Grid_Init(1); // 보험 grid init
  Grid_Init(2); // parts grid init
  Text_Init(2); // 일반 정보 clear
  GroupBoxBoHum.BringToFront;
  GroupBoxIlBan.SendToBack;
  TeamFlag  := 0;
  Ini_Load;
  Client_Load;   // 거래처 리스트 로드
  //Charge_Load;   // 보험 담당자 리스트 로드
  radiogroup1.ItemIndex := 0;
  if EditFlag=True then begin
    LabelTitle.Caption := '입 고 차 량 수 정';
    CarEditMode;
  end
  else begin
    LabelTitle.Caption := '입 고 차 량 입 력';
    CarNewMode;
  end;

end;

//==================================================================
// Name      : Client_Load
// Desc      : 거래처 리스트 로드
//==================================================================
Procedure TFormIpGo.Client_Load;
var
  i,iCnt  : integer;
  Ssql    : AnsiString;
begin
  ClientList := nil;

  sSql := 'SELECT Id, 거래처이름,구분,핸드폰,전화,팩스,주소,비고 ' +
                  'From 거래처 order by 거래처이름 ASC;'; // 구분 asc,
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  iCnt  := ADOQuery1.Recordset.RecordCount;
  Clientcnt  := iCnt;
  if iCnt>0 then begin
    SetLength(ClientList, iCnt);  // 저장변수 메모리 할당(동적 배열임)
    for i := 0 to iCnt - 1 do begin
      Clientlist[i] := (ADOQuery1.Recordset.Fields.Item[1].Value);
      ADOQuery1.Next;
    end; // for
  end; //if
  ADOQuery1.Active:=False;
end;

//==================================================================
// Name      : Client_Load
// Desc      : 보험 담당자 리스트 로드
//==================================================================
Procedure TFormIpGo.Charge_Load;   // 보험 담당자 리스트 로드
var

  i,iCnt  : integer;
  Ssql    : AnsiString;
begin
  ClientList := nil;

  sSql := 'SELECT Id, 거래처이름,구분,핸드폰,전화,팩스,주소,비고 ' +
                  'From 거래처 order by 거래처이름 ASC;'; // 구분 asc,
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  iCnt  := ADOQuery1.Recordset.RecordCount;
  Clientcnt  := iCnt;
  if iCnt>0 then begin
    SetLength(ClientList, iCnt);  // 저장변수 메모리 할당(동적 배열임)
    for i := 0 to iCnt - 1 do begin
      Clientlist[i] := (ADOQuery1.Recordset.Fields.Item[1].Value);
      ADOQuery1.Next;
    end; // for
  end; //if
  ADOQuery1.Active:=False;
end;


//==================================================================
// Name      : ClientDblClick
// Desc      : 부품사 뷰어 - ListBox select process
//==================================================================
procedure TFormIpGo.ClientDblClick(Sender: TObject);
begin
  editCar106.Text :=
            (Sender as TListbox).Items.Strings[(Sender as TListbox).ItemIndex];
  (Sender as TListbox).Free;
  CheckBox4.SetFocus;
end;

//==================================================================
// Name      : CarEditMode
// Desc      : 수정 편집 모드
//==================================================================
Procedure TFormIpGo.CarEditMode;
  //editid.Text:=editIDs;

begin

end;
//==================================================================
// Name      : CarNewMode
// Desc      : 신규 입고 모드
//==================================================================
Procedure TFormIpGo.CarNewMode;
var
  Ssql    : Ansistring;
begin
  RadioGroup1Click(self);
  case radiogroup1.ItemIndex of
  -1: showmessage('Error !!!!' ); // error
  0:begin

    end; // 0
  1:begin

    end; // 1
  2:begin

    end; // 2
  end; // case
end;
//==================================================================
// Name      : INI_Load
// Desc      : 보험사 리스트 INI에서 읽기
//==================================================================
Procedure TFormIpGo.INI_Load();
var
  iniSet:TIniFile;
  sFile :string;
  iT1,iT2   :integer;
  sT1,sT2   :string;
  bT    :bool;
  i,iLen,iPos : integer;
begin
  sFile := '.\SCM1.ini';
  // INI파일 만들기(기존에 파일있는 경우는 파일 열기로 됨)
  //iniSet := TIniFile.Create(ChangeFileExt(sFile, '.ini'));
  iniSet := TIniFile.Create(ChangeFileExt(sFile, '.ini'));
  try
    // INI파일에 정수 읽기
    //iT1 := iniSet.ReadInteger('Section', 'Num', 1);
    iT1 := iniSet.ReadInteger('보험사리스트', 'Count', 1);
    // INI파일에 문자열 읽기
    //sT := iniSet.ReadString('Section', 'String', 'New Form');
    sT1 := iniSet.ReadString('보험사리스트', '보험사', 'New Form');
    // INI파일에 Bool형 읽기
    //bT := iniSet.ReadBool('Section', 'Bool', false);
    //edit3.Text:=inttostr(bt);
    iT2 := iniSet.ReadInteger('부품사리스트', 'Count', 1);
    sT2 := iniSet.ReadString('부품사리스트', '부품사', 'New Form');
    // -----------------------------------------
    i:=0;
    ilen:=length(st1);
    ipos:=pos(',',st1);
    combobox2.Clear;
    while ipos>0 do begin
      inc(i);
      ComboBox2.Items.Add(copy(st1,0,ipos-1));
      st1:= copy(st1,ipos+1,ilen-1);
      ilen:=length(st1);
      ipos:=pos(',',st1);
    end;
    ComboBox2.Items.Add(st1);
    // -----------------------------------------
    i:=0;
    ilen:=length(st2);
    ipos:=pos(',',st2);
    comboboxParts.Clear;
    while ipos>0 do begin
      inc(i);
      comboboxParts.Items.Add(copy(st2,0,ipos-1));
      st2:= copy(st2,ipos+1,ilen-1);
      ilen:=length(st2);
      ipos:=pos(',',st2);
    end;
    comboboxParts.Items.Add(st2);

  finally
    iniSet.Free;
  end;


end;
//==================================================================
// Name      : ButtonSaveClick
// Desc      : Save : 입고 처리, 수정 저장
//==================================================================
procedure TFormIpGo.ButtonSaveClick(Sender: TObject);
begin
     //   **************************************************************************************** <<<<<
end;
//==================================================================
// Name      : ButtonDate1Click
// Desc      : Calendar 보여주기
//==================================================================
procedure TFormIpGo.ButtonDate1Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag  := 1;
  seldate   :=ifempty(editcar111.Text,datetostr(now));
  xx := GroupBoxCar.Left + ButtonDate1.Left;
  yy := GroupBoxCar.Top + ButtonDate1.Top;
  Calendar_view(1,xx, yy);
end;

//==================================================================
// Name      : ButtonDate2Click
// Desc      : Calendar 보여주기
//==================================================================
procedure TFormIpGo.ButtonDate2Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag  := 2;
  seldate   :=ifempty(editcar112.Text,datetostr(now));
  xx := GroupBoxCar.Left + ButtonDate2.Left;
  yy := GroupBoxCar.Top + ButtonDate2.Top;
  Calendar_view(1,xx, yy);
end;

//==================================================================
// Name      : ButtonDate3Click
// Desc      : Calendar 보여주기
//==================================================================
procedure TFormIpGo.ButtonDate3Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag  := 3;
  seldate   :=ifempty(editcar113.Text,datetostr(now));
  xx := GroupBoxCar.Left + ButtonDate3.Left;
  yy := GroupBoxCar.Top + ButtonDate3.Top;
  Calendar_view(1,xx, yy);
end;

//==================================================================
// Name      : ButtonDate4Click
// Desc      : Calendar 보여주기
//==================================================================
procedure TFormIpGo.ButtonDate4Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag  := 4;
  seldate   :=ifempty(edit2.Text,datetostr(now));
  xx := GroupBoxCar.Left + ButtonDate4.Left;
  yy := GroupBoxCar.Top + ButtonDate4.Top;
  Calendar_view(1,xx, yy);
end;

//==================================================================
// Name      : ButtonDate5Click
// Desc      : Calendar 보여주기
//==================================================================
procedure TFormIpGo.ButtonDate5Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag  := 5;
  seldate   :=ifempty(edit17.Text,datetostr(now));
  xx := GroupBoxCar.Left + ButtonDate5.Left;
  yy := GroupBoxCar.Top + ButtonDate5.Top;
  Calendar_view(1,xx, yy);
end;

//==================================================================
// Name      : ButtonDate6Click
// Desc      : Calendar 보여주기
//==================================================================
procedure TFormIpGo.ButtonDate6Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag  := 6;
  seldate   :=ifempty(edit19.Text,datetostr(now));
  xx := GroupBoxCar.Left + ButtonDate6.Left;
  yy := GroupBoxCar.Top + ButtonDate6.Top;
  Calendar_view(1,xx, yy);
end;

//==================================================================
// Name      : Calendar_View
// Desc      :   Calendar view
//==================================================================
Procedure TFormIpGo.Calendar_View(Index,x,y: integer);
begin
  with TMonthCalendar.Create(nil) do begin //CLDr do begin
    Left   := x + 10;
    Top    := y + 30;
    Height := 170;
    Width  := 230;
    Name   := 'MonthCalendar41';
    OnDblClick := CalDblClick;
    case Index  of
     1: Parent := FormIpGo; //Self;
     2: Parent := FormIpGo;
     //3: Parent := Panel2;
    end;
    date   := strtodate(ifempty(selDate,datetostr(now)));
  end;
end;


//==================================================================
// Name      : CalDblClick
// Desc      : 동적으로 생성된 달력 날짜 선택시 처리
//==================================================================
procedure TFormIpGo.CalDblClick(Sender : TObject);
var
  aDate   : AnsiString;
begin
    //showmessage(' Calendar DblClick !!');
  aDate   := DateToStr((sender as tMonthcalendar).Date);
  if (length(adate))=0 then   SelDate := DateToStr(NOW)
                       else   SelDate := aDate;
  case dateFlag of
   1: begin
        editcar111.Text := selDate;
        editcar112.SetFocus;
      end;
   2: begin
        editcar112.Text := selDate;
        editcar113.SetFocus;
      end;
   3: begin
        editcar113.Text := selDate;
        combobox2.SetFocus;
      end;
   4: begin
        edit2.Text  := selDate;
        edit3.SetFocus;
      end;
   5: begin
        edit17.Text := selDate;
        edit18.SetFocus;
      end;
   6: begin
        edit19.Text := selDate;
        edit20.SetFocus;
      end;
  end;
  ObjFree(sender);
  dateFlag :=0;
end;
//==================================================================
// Name      : ObjFree(Sender : TObject)
// Desc      : 동적으로 생성된 달력 날짜 객체 지우기
//==================================================================
procedure TFormIpGo.ObjFree(Sender : TObject);
begin
  (sender as tMonthcalendar).Free;
  (sender as tMonthcalendar).Visible :=False;
end;


//==================================================================
// Name      : RadioGroup1Click
// Desc      : 차량 입고 종류 선택( 보험차량, 일반차량)
//==================================================================
procedure TFormIpGo.RadioGroup1Click(Sender: TObject);
var
  Ssql              : ansistring;
  tmpStr1, tmpStr2  : AnsiString;
  tmpID             : AnsiString;
  i                 : Integer;
  tempI             : ansistring;
begin
  // uToDate
  tmpStr1 := ansileftstr(uToDate, 4);      // 해당연도의 ID를 조회할 문자 조합
  tmpStr2 := ansiMidstr(uToDate, 6, 2);    // 해당월의 ID를 조회할 문자 조합
  case RadioGroup1.ItemIndex of
  0:begin                     // 보험 접수
      groupboxbohum.BringToFront;
      Text_Init(0);
      Text_Init(1);
      if TeamFlag=0 then TeamID := 'B' else TeamID := 'C';
      tmpID := TeamID + tmpStr1 + tmpStr2;
  end; // 0
  1:begin
      groupboxilban.BringToFront;
      Text_Init(0);
      Text_Init(2);
      if TeamFlag=0 then TeamID := 'G' else TeamID := 'H';
      tmpID := TeamID + tmpStr1 + tmpStr2;

  end; // 1
  2:begin
      groupboxilban.BringToFront;
      Text_Init(0);
      Text_Init(2);
      if TeamFlag=0 then TeamID := 'M' else TeamID := 'H';
      tmpID := TeamID + tmpStr1 + tmpStr2;
  end; // 2
  end; // case
  editCar111.Text := uToDate;       // 현재 날짜를 입고일로 미리 저장
  tmpStr1 := tmpID + IIfs((TeamFlag=0), '000', '300');
  tmpStr2 := tmpID + '899';
  //     000 ~ 899 에서 맨 나중의 일련번호를 찾기 위해 ID 순번 조회
  sSql := 'SELECT ID From 차량정보 WHERE ' + QQ + tmpStr1 + QQ +
         '< ID and ID <' + QQ + tmpStr2 + QQ + ' ORDER BY ID DESC; ';
//clipboard.AsText:=ssql;   //   Ctrl - C    복사  copy  uses => ClipBrd
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  If ADOQuery1.Eof Then begin
      If TeamFlag = 0 Then i := 1 Else i := 301;
  end
  Else begin
      //ADOQuery1.Next;
      // ID정렬된 것 중 first +1
      tempI := ansiRightstr(Trim(ADOQuery1.Recordset.Fields.Item[0].Value), 3);
      i := Strtoint(tempI) + 1;
  end; // if
  editID.Text := tmpID + formatcurr('000',i);
  ADOQuery1.Active:=False;

end;

//==================================================================
// Name      : ButtonClientClick
// Desc      : 거래처 찾기 버튼
//==================================================================
procedure TFormIpGo.ButtonClientClick(Sender: TObject);
var
  i,iCnt  : integer;
  Ssql    : AnsiString;
begin
  with TListBox.Create(FormIpGo) do begin
    Parent  := GroupBoxCar;
    Left   := 150; //86+177;
    Top    := 10; //40+157;
    Height := 200;
    Width  := 255;
    Font.Name := '맑은 고딕';
    Font.Size := 11;
    Name   := 'ListBoxCustom';
    OnDblClick := ClientDblClick;
    BringtoFront;
    for i := 0 to Clientcnt - 1 do  Items.Add(Clientlist[i]);

  end; // with

end;

//==================================================================
// Name      : ButtonChargeClick
// Desc      : 보험사 담당자 리스트
//==================================================================
procedure TFormIpGo.ButtonChargeClick(Sender: TObject);
var
  tmpstr    : ansistring;
  Ssql      : ansistring;
  i         : integer;
begin
  tmpstr  := combobox2.Text;
  ChargeName  := nil;
  ChargePhone := nil;
  ChargeFAX   := nil;
  // 보험사별 담당자 읽어 오기
  if not(bNULL(tmpstr)) then begin
    Ssql:='SELECT ID, 보험사, 담당, 이름, 직위, 핸드폰, FAX, 메일, 사무실, ' +
        '콜센타, 메모 ' + ' From 보험담당 ' +
        'WHERE 보험사  LIKE ' + QQ + tmpstr + QQ  +
        'ORDER BY 담당 ASC, 이름 ASC ;' ;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    ChargeCnt  := ADOQuery1.Recordset.RecordCount;
    if ChargeCnt>0 then begin
      SetLength(ChargeName, ChargeCnt);  // 저장변수 메모리 할당(동적 배열임)
      SetLength(ChargePhone, ChargeCnt);
      SetLength(ChargeFAX, ChargeCnt);
      for i := 0 to ChargeCnt - 1 do begin
        ChargeName[i] := (ADOQuery1.Recordset.Fields.Item[3].Value);
        ChargePhone[i]:= (ADOQuery1.Recordset.Fields.Item[5].Value);
        ChargeFAX[i]  := (ADOQuery1.Recordset.Fields.Item[6].Value);
        ADOQuery1.Next;
      end; // for
    end; //if
    ADOQuery1.Active:=False;
    with TListBox.Create(FormIpGo) do begin
      Parent  := GroupBoxBoHum;
      Left   := 150;
      Top    := 70;
      Height := 200;
      Width  := 255;
      Font.Name := '맑은 고딕';
      Font.Size := 11;
      Name   := 'ListBoxCharge';
      OnDblClick := ChargeDblClick;
      BringtoFront;
      for i := 0 to ChargeCnt - 1 do  Items.Add(ChargeName[i]);
    end; // with
  end; // if
end;

 //==================================================================
// Name      : ChargeDblClick
// Desc      : 보험사 담당  뷰어 - ListBox select process
//==================================================================
procedure TFormIpGo.ChargeDblClick(Sender: TObject);
begin
  edit10.Text :=
            (Sender as TListbox).Items.Strings[(Sender as TListbox).ItemIndex];
  edit9.Text  := ChargePhone[(Sender as TListbox).ItemIndex];
  edit7.Text  := ChargeFAX[(Sender as TListbox).ItemIndex];
  (Sender as TListbox).Free;
  //button6.SetFocus;
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
     end; // case 0
  1: begin
      for i := 0 to GroupBoxBohum.ControlCount - 1 do  //  보험
      begin
        TComp :=GroupBoxBohum.Controls[i];
        if TComp.ClassName ='TEdit' then begin
          Tedit(GroupBoxBohum.Controls[i]).text :='';
          Tedit(GroupBoxBohum.Controls[i]).Height:=19;
        end;  // if
        if Tcomp.ClassName='TMemo' then
                                      TMemo(GroupBoxBohum.Controls[i]).text :='';
      end; // for
      combobox1.Clear;  // 사업자  구분
      combobox1.Items.Add('-');
      ComboBox1.Items.Add('일반사업자');
      ComboBox1.Items.Add('간이(2%)');
      ComboBox1.Items.Add('간이(3%)');
      ComboBox1.Items.Add('간이(4%)');
      ComboBox1.Items.Add('면세사업자');
      comboBox3.Clear;   // 담보 구분
      comboBox3.Items.Add('-');
      comboBox3.Items.Add('자차');
      comboBox3.Items.Add('대물');

      editParts.Text:='';

      for i := 0 to GroupBoxSurcharge.ControlCount - 1 do  // 자기부담금
      begin
        TComp :=GroupBoxSurcharge.Controls[i];
        if TComp.ClassName ='TEdit' then begin
          Tedit(GroupBoxSurcharge.Controls[i]).text :='';
          Tedit(GroupBoxSurcharge.Controls[i]).Height:=19;
        end;  // if
        if Tcomp.ClassName='TMemo' then
                                TMemo(GroupBoxSurcharge.Controls[i]).text :='';
      end; // for
      for i := 0 to GroupBoxDemand.ControlCount - 1 do  // 청구금
      begin
        TComp :=GroupBoxDemand.Controls[i];
        if TComp.ClassName ='TEdit' then begin
          Tedit(GroupBoxDemand.Controls[i]).text :='';
          Tedit(GroupBoxDemand.Controls[i]).Height:=19;
        end;  // if
        if Tcomp.ClassName='TMemo' then TMemo(GroupBoxDemand.Controls[i]).text :='';
      end; // for

      for i := 0 to GroupBoxSVS.ControlCount - 1 do  // o=
      begin
        TComp :=GroupBoxSVS.Controls[i];
        if TComp.ClassName ='TEdit' then begin
          Tedit(GroupBoxSVS.Controls[i]).text :='';
          Tedit(GroupBoxSVS.Controls[i]).Height:=19;
        end;  // if
        if Tcomp.ClassName='TMemo' then TMemo(GroupBoxDemand.Controls[i]).text :='';
      end; // for

     end; // case 1
  2: begin
      // ------------------- 일반정보 초기화
      for i := 0 to GroupBox1.ControlCount - 1 do  //
      begin
        TComp :=GroupBox1.Controls[i];
        if TComp.ClassName ='TEdit' then begin
          Tedit(GroupBox1.Controls[i]).text :='';
          Tedit(GroupBox1.Controls[i]).Height:=19;
        end;  // if
        if Tcomp.ClassName='TMemo' then TMemo(GroupBox1.Controls[i]).text :='';
      end; // for
     end; // case 0

  71: begin // find
      //editFind.Text := '';

    end;
  end;

end;

//==================================================================
// Name      : Grid_Init
// Desc      :
//==================================================================
Procedure TFormIpGo.Grid_Init(Index : Integer);
begin
  case Index of
   1: begin        // 보험 그리드 초기화
     with NiceGrid1 do begin
       ColCount     := 18;
       Color        := clWindow;
       RowCount     := 5;
       ShowGrid     := True;
       Align        := alBottom;
       //Width        := 490;
       Height       := 134;
       DefRowHeight := 18;
       Font.Name    := 'Tahoma';
       Font.Size    := 8;
       ShowFooter   :=False;
       GutterWidth  := 0;
       //GutterKind   := gkNumber;
       //GutterFont.Name:='Minion Pro';
       //GutterFont.Size:=8;
       //Columns[0].Title:='보험사';  Columns[0].Width :=42;
       Clear;
     end;  // with
   end;  //
   2: begin      // parts 그리드 초기화
     with NiceGridParts do begin
       ColCount     := 2;
       Color        := clWindow;
       RowCount     := 1;
       ShowGrid     :=True;
       Align        := alBottom;
       //Width        := 176;
       Height       := 139;
       DefRowHeight := 18;
       Font.Name    := 'Tahoma';
       Font.Size    := 8;
       ShowFooter   := False;
       GutterWidth  := 2;
       GutterKind   := gkBlank; //gkNumber;
       //GutterFont.Name:='Minion Pro';
       //GutterFont.Size:=8;
       Columns[0].Title:='부품사';  Columns[0].Width :=80;
       Columns[1].Title:='금액';  Columns[1].Width :=68;
       Clear;
     end;  // with
   end; // 2

  end; // case

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
