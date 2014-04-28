unit CarManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, NiceGrid, StrUtils, ClipBrd, DateUtils,
  lhjModule, DB, ADODB, IniFiles,
  ComObj, OleCtrls, Excel2000;
type
  TFormCM = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    PanelMessage: TPanel;
    LabelMessage: TLabel;
    ButtonOK: TButton;
    Timer1: TTimer;
    MonthCalendar1: TMonthCalendar;
    LabelDate: TLabel;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    ButtonEnd: TButton;
    NiceGrid6: TNiceGrid;
    GroupBox1: TGroupBox;
    NiceGrid1: TNiceGrid;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Shape1: TShape;
    Label7: TLabel;
    Label8: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox9: TGroupBox;
    Label18: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    GroupBoxBoHum: TGroupBox;
    NiceGrid4: TNiceGrid;
    NiceGrid5: TNiceGrid;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Memo1: TMemo;
    NiceGrid3: TNiceGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit16: TEdit;
    GroupBoxILBan: TGroupBox;
    Edit15: TEdit;
    CheckBox4: TCheckBox;
    Edit17: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    GroupBoxFind: TGroupBox;
    RadioGroup2: TRadioGroup;
    GroupBox18: TGroupBox;
    Label38: TLabel;
    RadioTerm1: TRadioButton;
    RadioTerm2: TRadioButton;
    RadioTerm3: TRadioButton;
    RadioTerm4: TRadioButton;
    EditDate40: TEdit;
    Button21: TButton;
    EditDate41: TEdit;
    Button22: TButton;
    RadioTerm5: TRadioButton;
    GroupBox19: TGroupBox;
    Label39: TLabel;
    EditFind: TEdit;
    ButtonBB: TButton;
    ButtonFF: TButton;
    ButtonRe: TButton;
    GroupBox20: TGroupBox;
    Label40: TLabel;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    ButtonFindGo: TButton;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Memo3: TMemo;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox6: TGroupBox;
    procedure Grid_Init(Index : Integer);
    Procedure Text_Init(Index : Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure ButtonEndClick(Sender: TObject);
    procedure WorkCar(vDate : AnsiString);
    procedure NiceGrid1DrawCell(Sender: TObject; ACanvas: TCanvas; X,
      Y: Integer; Rc: TRect; var Handled: Boolean);
    procedure Reset_CarList;
    procedure NiceGrid1Click(Sender: TObject);
    procedure DetailView(carID: AnsiString);
    procedure CheckBox4Click(Sender: TObject);
    procedure NiceGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NiceGrid4DrawCell(Sender: TObject; ACanvas: TCanvas; X,
      Y: Integer; Rc: TRect; var Handled: Boolean);
    procedure NiceGrid5DrawCell(Sender: TObject; ACanvas: TCanvas; X,
      Y: Integer; Rc: TRect; var Handled: Boolean);
    procedure FindCarManager();
    procedure Button7Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    Procedure Calendar_View(Index,x,y: integer);
    procedure CalDblClick(Sender : TObject);
    procedure ButtonFindGoClick(Sender: TObject);
    procedure FindCar(Index : Integer; cFinder: AnsiString);
    procedure RadioGroup2Click(Sender: TObject);
    Procedure MakeCustomer(Sender: TObject);
    procedure MakeBoHum();
    procedure EditFindKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonBBClick(Sender: TObject);
    procedure ButtonFFClick(Sender: TObject);
    procedure ButtonReClick(Sender: TObject);
    procedure ObjFree(Sender : TObject);
    procedure RadioTerm1Click(Sender: TObject);
    procedure RadioTerm2Click(Sender: TObject);
    procedure RadioTerm3Click(Sender: TObject);
    procedure RadioTerm4Click(Sender: TObject);
    procedure RadioTerm5Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
  private
    { Private declarations }
    procedure CustomDblClick(Sender : TObject);
    procedure BoHumDblClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FormCM    : TFormCM;
  dLen      : Double;
  viLen     : Integer;
  SelDate   : Ansistring;
  dateFlag  : Integer; // 날짜 처리 변수
  BOHUMLIST1, BOHUMLIST2,GRIDLIST1  : AnsiString;

implementation

{$R *.dfm}

const
  iSpeed      : Integer =2;  // 공지사항 스크롤 속도
  iFindMax    : integer = 30;
type
  T차량현황 = record
    ID        : AnsiString;
    거래처    : AnsiString;
    차량번호  : AnsiString;
    차량명    : AnsiString;
    보험      : AnsiString;
    담보      : AnsiString;
    입고      : AnsiString;
    출고예정  : AnsiString;
    출고      : AnsiString;
    상태      : AnsiString;
    iCond     : Integer;
  end;
var
  TCarList    : array[0..50] of T차량현황;
  GridFlag4   : Boolean;   // 그리드 초기화
  IDs         : Array of string; // 검색시 Id 저장 변수
  FindFlag    : Boolean;            //  검색mode = True
  FindWord    : array[0..30] of ansistring; // 검색 키워드 저장소
  FWordINX    : integer;                    // 검색 키워드 커서
  FWordCnt    : integer;                    // 검색 키워드 갯수
//==================================================================
// Name      : FormActivate
// Desc      :
//==================================================================
procedure TFormCM.FormActivate(Sender: TObject);
var
  i         : integer;
begin
  // Text_Init;
  GridFlag4 := False;
  FindFlag  := False;
  fwordinx  := 0;
  fwordcnt  := 0;
  for I := 0 to iFindMax do FindWord[i]  := '';
  Text_Init(1);  // tabsheet 1 초기화
  Text_Init(10); // 차량 세부정보 초기화
  Grid_Init(1);  // 차량 현황 - 차량현황
  Grid_Init(13); // 차량현황 - 부품
  BOHUMLIST1  :=  'ID, 차량번호, 차량명, 운전자, 연락처, 거래처, ' +
                  '사업자, 세금계산서, 사진경로, 서류경로, 메모 ' +
                  ',입고일, 출고예정, 출고일, 등록증 ' +
                  ', 주행거리, 최초등록일, 칼라, 대차, 렌트카 ' +
                  ', 차대번호 ';
  BOHUMLIST2  := 'ID, 보험사, 담보, 과실, 접수번호, 면책금' +
                 ',정률구분, 담당자, 청구일, 청구금, 입금일' +
                 ', 입금액, 할인액, 서비스, 영업비, 메모, ' +
                 '받은면책금, 등록증, 대차, 렌트카, 부품비, ' +
                 '부품사, 유리, 실란트, 지출일 ';
  GRIDLIST1    := '차량정보.ID, 차량정보.거래처, 차량정보.차량번호, ' +
                  '차량정보.차량명, 차량정보.입고일, 차량정보.출고예정, ' +
                  '차량정보.출고일 ';

  MonthCalendar1.Date:= Now;   // 오늘날짜로 초기화
  LabelDate.Caption:=DateView(MonthCalendar1.Date);
  ADOQuery1.Connection.LoginPrompt:=False;

  labelMessage.Caption  :='*** 공지사항 *** 2014년 4월 18일부터 차량관리 '+
    '프로그램 제작을 시작하였습니다. 본 공지사항은 소소한 팁입니다....';
  dLen:=( length(LabelMessage.Caption) + 5 ) * (-12) ;
  viLen:=PanelMessage.Width-5;
  LabelMessage.left:=viLen;
  WorkCar(DateToStr(MonthCalendar1.Date));
end;

//==================================================================
// Name      : FormKeyDown
// Desc      : Main form에서 단축키 관리
//==================================================================
procedure TFormCM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i     : integer;
  TComp : TComponent; //
begin
  if Key = VK_F3 then Button7.Click;  // 검색
  //if (FindFlag) and(Key = VK_BACK) then Button7.Click;  // 검색
  if (FindFlag) and (Key = VK_ESCAPE) then begin
    for i := 0 to Panel1.ControlCount - 1 do begin //
      TComp :=Panel1.Controls[i];
      if TComp.ClassName ='TListBox' then begin
        if TListBox(Panel1.Controls[i]).Name = 'ListBoxCustom' then begin
          TListBox(Panel1.Controls[i]).Free;
          break;
        end;
        if TListBox(Panel1.Controls[i]).Name = 'ListBoxBoHum' then begin
          TListBox(Panel1.Controls[i]).Free;
          break;
        end;
      end;
    end;
    button28.Click;  // ESC : 닫기
  end;
  if (FindFlag) and (Key = VK_HOME)   then ButtonBB.Click;  // <-
  if (FindFlag) and (Key = VK_END)    then ButtonFF.Click;  // ->

end;

//==================================================================
// Name      : PageControl1Change
// Desc      : 1 = 차량 관리 메인 , 2 = 차량 검색 관리자
//==================================================================
procedure TFormCM.PageControl1Change(Sender: TObject);
begin
  {case PageControl1.TabIndex of
   1:  //차량 관리 메인
   2: FindCarManager; // 차량 검색 관리자

  end;}
end;

//==================================================================
// Name      : FindCarManager
// Desc      : 차량 검색 관리자
//==================================================================
procedure TFormCM.Button7Click(Sender: TObject);
begin
  FindCarManager;
  editFind.SetFocus;
end;

//==================================================================
// Name      : Button28Click
// Desc      : 차량 검색 관리자 - 종료
//==================================================================
procedure TFormCM.Button28Click(Sender: TObject);
begin
  FindFlag  := False;
  Text_Init(1);  // tabsheet 1 초기화
  Text_Init(10); // 차량 세부정보 초기화
  Grid_Init(1);  // 차량 현황 - 차량현황
  Grid_Init(13); // 차량현황 - 부품
  IDs := nil; // id 저장 동적 배열 메모리 해제
  WorkCar(DateToStr(MonthCalendar1.Date));
end;
//==================================================================
// Name      : Button21Click
// Desc      : 차량 검색 기간 - 시작일
//==================================================================
procedure TFormCM.Button21Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag  := 1;
  seldate   :=ifempty(editdate40.Text,datetostr(now));
  xx := GroupBoxFind.Left + GroupBox18.Left + Button21.Left;
  yy := GroupBox18.Top + GroupBox18.Top + Button21.Top;
  Calendar_view(1,xx, yy);
  //Radio_Init;
end;

//==================================================================
// Name      : Button22Click
// Desc      : 차량 검색  기간 - 종료일
//==================================================================
procedure TFormCM.Button22Click(Sender: TObject);
var
  xx,yy     : integer;
begin
  dateFlag := 2;
  seldate:=ifempty(editdate41.Text,datetostr(now));
  xx := GroupBoxFind.Left + GroupBox18.Left + Button22.Left;
  yy := GroupBox18.Top + GroupBox18.Top + Button22.Top;
  Calendar_view(2,xx, yy);

end;

//==================================================================
// Name      : RadioGroup2Click
// Desc      : 차량 검색 라디오 그룹
//==================================================================
procedure TFormCM.RadioGroup2Click(Sender: TObject);
var
  i   : integer;
begin
  i :=RadioGroup2.ItemIndex;
  case i of
  1: MakeCustomer(self); //거래처
  2: MakeBoHum; // 보험사별
  end;
end;




















//==================================================================
// Name      : Button26Click
// Desc      : Excel save
//==================================================================
procedure TFormCM.Button26Click(Sender: TObject);
var
  XL: Variant;
  i,k: integer;
  sData: string;
begin
{  try
    XL := CreateOLEObject('Excel.Application');
  except on E: Exception do
  begin
    ShowMessage('Excel OLE object를 오픈할 수 없습니다.'+E.Message);
    Exit;
  end; end;
  try
    XL.WorkBooks.Add; //새로운 페이지 생성
    XL.Visible := False;
    XL.Workbooks[XL.Workbooks.Count].WorkSheets[1].Name := 'Sheet1';
    sData := '';
    for i := 0 to vDBGrid.Columns.Count - 1 do
    begin
      sData := sData+vDBGrid.Columns[i].Title.Caption+#9;
      if vDBGrid.Columns[i].Field.DataType in [ftString,ftMemo,ftWideString] then
      begin
        XL.Workbooks[XL.Workbooks.Count].WorkSheets['Sheet1'].Columns[i+1].Select;
        XL.Selection.NumberFormatLocal := '@';
      end;
    end;
    sData := sData+#$D#$A;
    with vDBGrid do
    begin
      k := 0;
      DataSource.DataSet.First;
      while not DataSource.DataSet.Eof do
      begin
        inc(k);
        for i := 0 to Columns.Count - 1 do
          sData := sData+Columns[i].Field.AsString+#9;
        sData := sData+#$D#$A;
        DataSource.DataSet.Next;
      end;
    end;
    Clipboard.SetTextBuf(PChar(sData));
    XL.Cells[1,1].Pastespecial;
    XL.Range['A1', Chr(64+vDBGrid.Columns.Count)+IntToStr(k)].select;
    XL.Selection.Columns.AutoFit;
    XL.Range['A1', 'A1'].select;
    XL.Visible := True;
  except on E: Exception do
  begin
    ShowMessage('Excel로 자료를 보내는 중 오류가 발생했습니다.'+E.Message);
    XL.Visible := True;
    Exit;
  end; end;

    // 워크북 저장
     //WorkBook.SaveAs(Filename:='.\' + NOW + datetostr(Timeof) + '-FIND.xls');
    Excel.workbooks.saveas('.\' + datetostr(NOW()) +  '-FIND.xls'); // 저장   timetostr(time) +
  // 워크북 닫기
  WorkBook.close;
  WorkBook:=unAssigned;
  WorkSheet:=unAssigned;
  // 엑셀 종료
  Excel.Quit;
  Excel:=unAssigned;

   }
end;

















































//==================================================================
// Name      : RadioTerm1Click
// Desc      : 기간 선택 - 1
//==================================================================
procedure TFormCM.RadioTerm1Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate40.Text) then Index:=20
                            else Index:=10;
  if bNULL(editDate41.Text) then Index:=Index+2
                            else Index:=Index+1;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncMonth(Date1,1),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncMonth(Date1,1),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate41.Text);
      editDate40.Text := DateToStr(incday(IncMonth(Date1,-1),1));
    end;
   22: begin // X X
      date1:=now();
      editDate40.Text := DateToStr(incday(IncMonth(Date1,-1),1));
      editDate41.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;

end;

//==================================================================
// Name      : RadioTerm2Click
// Desc      : 기간 선택 - 3
//==================================================================
procedure TFormCM.RadioTerm2Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate40.Text) then Index:=10
                            else Index:=20;
  if bNULL(editDate41.Text) then Index:=Index+1
                            else Index:=Index+2;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncMonth(Date1,3),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncMonth(Date1,3),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate41.Text);
      editDate40.Text := DateToStr(incday(IncMonth(Date1,-3),1));
    end;
   22: begin // X X
      date1:=now();
      editDate40.Text := DateToStr(incday(IncMonth(Date1,-3),1));
      editDate41.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;

end;
//==================================================================
// Name      : RadioTerm3Click
// Desc      : 기간 선택 - 6
//==================================================================
procedure TFormCM.RadioTerm3Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate40.Text) then Index:=10
                            else Index:=20;
  if bNULL(editDate41.Text) then Index:=Index+1
                            else Index:=Index+2;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncMonth(Date1,6),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncMonth(Date1,6),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate41.Text);
      editDate40.Text := DateToStr(incday(IncMonth(Date1,-6),1));
    end;
   22: begin // X X
      date1:=now();
      editDate40.Text := DateToStr(incday(IncMonth(Date1,-6),1));
      editDate41.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;

end;
//==================================================================
// Name      : RadioTerm4Click
// Desc      : 기간 선택 - 12
//==================================================================
procedure TFormCM.RadioTerm4Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate40.Text) then Index:=10
                            else Index:=20;
  if bNULL(editDate41.Text) then Index:=Index+1
                            else Index:=Index+2;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncYear(Date1),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate40.Text);
      editDate41.Text := DateToStr( incDay(IncYear(Date1),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate41.Text);
      editDate40.Text := DateToStr(incday(IncYear(Date1,-1),1));
    end;
   22: begin // X X
      date1:=now();
      editDate40.Text := DateToStr(incday(IncYear(Date1,-1),1));
      editDate41.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;

end;
//==================================================================
// Name      : RadioTerm5Click
// Desc      : 기간 선택 - all
//==================================================================
procedure TFormCM.RadioTerm5Click(Sender: TObject);
begin
  editDate40.Text := '';
  editDate41.Text := '';
end;

//==================================================================
// Name      : MakeCustomer
// Desc      : 거래처 뷰어
//==================================================================
Procedure TFormCM.MakeCustomer(Sender: TObject);
var
  i   : integer;
  Ssql    : AnsiString;
begin
  with TListBox.Create(FormCM) do begin
    Parent  := Panel1;
    Left   := 100;
    Top    := 26 + 58 + 9;
    Height := 450;
    Width  := 255;
    Font.Name := '맑은 고딕';
    Font.Size := 11;
    Name   := 'ListBoxCustom';
    OnDblClick := CustomDblClick;

    sSql := 'SELECT Id, 거래처이름,구분,핸드폰,전화,팩스,주소,비고 ' +
                  'From 거래처 order by 거래처이름 ASC;'; // 구분 asc,
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    if ADOQuery1.Recordset.RecordCount>0 then begin
      for i := 0 to ADOQuery1.Recordset.RecordCount - 1 do begin
        Items.Add(ADOQuery1.Recordset.Fields.Item[1].Value);
        ADOQuery1.Next;
      end; // for
    end; //if
    ADOQuery1.Active:=False;
  end; // with
end;
//==================================================================
// Name      : CustomDblClick
// Desc      : 보험사 뷰어 - ListBox select process
//==================================================================
procedure TFormCM.CustomDblClick(Sender: TObject);
begin
  //
  editFind.Text:=(Sender as TListbox).Items.Strings[(Sender as TListbox).ItemIndex];
  (Sender as TListbox).Free;
  ButtonFindGoClick(self); //  FindCar(1, editfind.Text); //
end;
//==================================================================
// Name      : MakeBoHum
// Desc      : 보험사 뷰어
//==================================================================
procedure TFormCM.MakeBoHum();
var
  i,bCnt    : integer;
  Ssql      : AnsiString;
  FileName  : Ansistring;
  iniSet    : TIniFile;
  bList     : Ansistring;
  iLen,iPos : integer;
begin
  with TListBox.Create(FormCM) do begin
    Parent  := Panel1;
    Left   := 100;
    Top    := 26 + 58 + 9;
    Height := 450;
    Width  := 255;
    Font.Name := '맑은 고딕';
    Font.Size := 11;
    Name   := 'ListBoxBoHum';
    OnDblClick := BoHumDblClick;

    FileName:='.\' + 'SCM1.ini';
    iniSet := TIniFile.Create(ChangeFileExt(FileName, '.ini'));
    //try
      bCnt  := iniSet.ReadInteger('보험사리스트', 'Count', 1);
      bList := iniSet.ReadString ('보험사리스트', '보험사', 'New Form');
    //============================================================
      i:=0;
      ilen:=length(widestring(bList));
      ipos:=pos(',',widestring(bList));
      while ipos>0 do begin
        inc(i);
        Items.Add(copy(widestring(bList),0,ipos-1));
        bList:= copy(widestring(bList),ipos+1,ilen-1);
        ilen:=length(widestring(bList));
        ipos:=pos(',',widestring(bList));
      end; // while
      Items.Add(bList);
    //finally
      iniSet.Free;
   // end;  // try
  end; // with
end;

//==================================================================
// Name      : BoHumDblClick
// Desc      : 보험사 뷰어 - ListBox select process
//==================================================================
procedure TFormCM.BoHumDblClick(Sender: TObject);
begin
  //
  editFind.Text:=(Sender as TListbox).Items.Strings[(Sender as TListbox).ItemIndex];
  (Sender as TListbox).Free;
  ButtonFindGoClick(self); //  FindCar(1, editfind.Text); //
end;
//==================================================================
// Name      : FindCarManager
// Desc      : 차량 검색 관리자
//==================================================================
procedure TFormCM.FindCarManager();
var
  i       : Integer;
  Ssql    : AnsiString;

begin
  FindFlag  := True;
  Text_Init(10); // 차량 세부정보 초기화
  Text_Init(11);  // 차량검색 초기화
  Grid_Init(11);  // 차량 현황 - 차량현황
  RadioGroup2.ItemIndex := 0; // 차량으로
end;

//==================================================================
// Name      : ButtonFindGoClick
// Desc      :   찾기
//==================================================================
procedure TFormCM.ButtonFindGoClick(Sender: TObject);
var
  i     : integer;
begin
// showmessage(' RadioGroup2.ItemIndex, editFind.Text Result = '+ inttostr(RadioGroup2.ItemIndex) + ' [' + editFind.Text + '] ');
  if vNULL(editFind.Text) then
    showmessage('찾을 차량 번호나 검색어를 넣어 주세요')
  else  begin
    inc(fwordcnt);
    if fwordcnt> ifindmax then fwordcnt :=0;
    fwordinx  := fwordcnt;
    FindWord[fwordcnt]  := editFind.Text;
    FindCar(RadioGroup2.ItemIndex, editFind.Text );
  end;
end;
//==================================================================
// Name      : ButtonBBClick
// Desc      :   찾기    <-
//==================================================================
procedure TFormCM.ButtonBBClick(Sender: TObject);
var
  i     : integer;
  loopFlag  : Boolean;

begin
  loopFlag  := True;
  i         := fwordinx;
  while loopFlag do begin
    dec(i);
    if i < 0 then i :=iFindMax;
    if i=fwordcnt then begin
      loopFlag := False;
      fwordinx  := fwordcnt;
      break;
    end; // if
    if not(bNULL(FindWord[i])) then begin
      loopFlag := False;
      fwordinx  := i;
      break;
    end; // if
  end; // while
  if not(bNULL(FindWord[fwordinx])) then begin
    editFind.Text := FindWord[fwordinx];
    buttonFindGo.Click;
  end; // if
end;
//==================================================================
// Name      : ButtonFFClick
// Desc      :   찾기    ->
//==================================================================
procedure TFormCM.ButtonFFClick(Sender: TObject);
var
  i     : integer;
  loopFlag  : Boolean;

begin
  loopFlag  := True;
  i         := fwordinx;
  while loopFlag do begin
    inc(i);
    if (i >= iFindMax) then i :=0;
    if i >= fwordcnt then begin
      loopFlag := False;
      fwordinx  := fwordcnt;
      break;
    end; // if
    if not(bNULL(FindWord[i])) then begin
      loopFlag := False;
      fwordinx  := i;
      break;
    end; // if
  end; // while
  if not(bNULL(FindWord[fwordinx])) then begin
    editFind.Text := FindWord[fwordinx];
    buttonFindGo.Click;
  end; // if

end;
//==================================================================
// Name      : ButtonReClick
// Desc      :   찾기  - Re
//==================================================================
 procedure TFormCM.ButtonReClick(Sender: TObject);
begin
  editfind.Text := findword[fwordcnt];
  buttonFindGo.Click;
end;




































//==================================================================
// Name      : FindCar
// Desc      :   찾기
//==================================================================
procedure TFormCM.FindCar(Index : Integer; cFinder: AnsiString);
var
  i,ikubun  : Integer;
  iCnt,iSql : Integer;
  ii        : integer;
  Ssql      : Ansistring;
  tmpStr    : ansistring;
  sDate,eDate : Ansistring;  // 조회 시작일, 종료일
  Ssqls     : array[0..6] of Ansistring;
begin
  {// ID를 저장해 놓을 공간 마련: 변수 배열이나 구조체 배열로 처리하려 하였으나,
  // 가변 배열을 사용하는 VB와 달라 이를 리스트 박스에 동적으로 생성하고
  // 보이지 않게 한 다음 이를 참조하는 형식으로 바꿨음.

  with TListBox.Create(nil) do begin //
    Left   := 100;
    Top    := 50;
    Height := 300;
    Width  := 255;
    Name   := 'ListBoxIDs';
    //OnDblClick := CustomDblClick;
  end; // with
  // TListBox.Create(nil).SendToBack;
  }
  iCnt  :=0;
  for i:=0 to 6 do  ssqls[i]:='';
  tmpstr  := ', 보험.보험사, 보험.담보 ';
  sDate := edit40.Text; // 조회 시작일
  eDate := edit41.Text; // 조회 종료일
  case Index of
   0: begin // 차량번호4자리
      if bNULL(sDate) or bNULL(eDate) then begin
        sSql := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr + ' From 차량정보 ' +
             'left outer join 보험 on 차량정보.ID=보험.ID ' +
             'WHERE 차량번호 LIKE ' + QQ + '%' + cFinder + '' + QQ  +
             ' order by 입고일 DESC;';
      end else begin
        sSql := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr + ' From 차량정보 ' +
             'left outer join 보험 on 차량정보.ID=보험.ID ' +
             'WHERE 차량번호 LIKE ' + QQ + '%' + cFinder + '' + QQ  +
             ' order by 입고일 DESC;';
       //  "( (입고일 <= #" & vDate & "#) AND (#" & vDate & "# <= 출고일) )"   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
      end; // if
   end; // 0:
   1: begin // 거래처
      if bNULL(sDate) or bNULL(eDate) then begin
        sSql := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr + ' From 차량정보 ' +
             'left outer join 보험 on 차량정보.ID=보험.ID ' +
             'WHERE 거래처 LIKE ' + QQ + '' + cFinder + '' + QQ  +
             ' order by 입고일 DESC;';
      end else begin
        sSql := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr + ' From 차량정보 ' +
             'left outer join 보험 on 차량정보.ID=보험.ID ' +
             'WHERE 거래처 LIKE ' + QQ + '' + cFinder + '' + QQ  +
             ' order by 입고일 DESC;';
      end; // if
   end; //    1:
   2: begin  // 보험사별로
      if bNULL(sDate) or bNULL(eDate) then begin
        sSql := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr + ' From 차량정보 ' +
             'left outer join 보험 on 차량정보.ID=보험.ID ' +
             'WHERE 보험.보험사 LIKE ' + QQ + '' + cFinder + '' + QQ  +
             ' order by 입고일 DESC;';
      end else begin
        sSql := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr + ' From 차량정보 ' +
             'left outer join 보험 on 차량정보.ID=보험.ID ' +
             'WHERE 보험.보험사 LIKE ' + QQ + '' + cFinder + '' + QQ  +
             ' order by 입고일 DESC;';
      end; // if

   end; //  2:
   3: begin  // 모든자료
      ssqls[0]  := '차량번호';
      ssqls[1]  := '차량명';
      ssqls[2]  := '운전자';
      ssqls[3]  := '연락처';
      ssqls[4]  := '거래처';
      ssqls[5]  := '차량정보.메모';
      ssqls[6]  := '보험.메모';
      if bNULL(sDate) or bNULL(eDate) then begin
        for i := 0 to 5 do begin
          ssqls[i]  := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr +
              ' From 차량정보 ' +
              'left outer join 보험 on 차량정보.ID=보험.ID ' +
              'WHERE ' + ssqls[i] + ' LIKE ' + QQ + '%' +
              cFinder + '%' + QQ  + ' order by 입고일 DESC;';
clipboard.AsText:=ssqls[i];   //   Ctrl - C    복사  copy  uses => ClipBrd
        end; // for
        ssqls[6]  := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr +
              ' From 차량정보 ' +
              'left outer join 보험 on 차량정보.ID=보험.ID ' +
              'WHERE ' + ssqls[6] + ' LIKE ' + QQ + '%' +
              cFinder + '%' + QQ  + ' order by 입고일 DESC;';
clipboard.AsText:=ssqls[6];   //   Ctrl - C    복사  copy  uses => ClipBrd
     end // if
      else begin
        for i := 0 to 5 do begin
          ssqls[i]  := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr +
              ' From 차량정보 ' +
              'left outer join 보험 on 차량정보.ID=보험.ID ' +
              'WHERE ' + ssql[i] + ' LIKE ' + QQ + '%' +
              cFinder + '%' + QQ  + ' order by 입고일 DESC;';
        end; // for
        ssqls[6]  := 'SELECT DISTINCT ' + GRIDLIST1 + tmpstr +
              ' From 차량정보 ' +
              'left outer join 보험 on 차량정보.ID=보험.ID ' +
              'WHERE ' + ssql[6] + ' LIKE ' + QQ + '%' +
              cFinder + '%' + QQ  + ' order by 입고일 DESC;';
      end;  // if
   end;  //   3:
  end; // case

//                                                                          showmessage ('ssql = [' + ssql + '] ' );
  if Not(Index=3) then begin  // 차량 번호 4자리, 거래처별, 보험사별 조회 ======
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    iCnt  := ADOQuery1.Recordset.RecordCount;
    if iCnt>0 then begin
      NiceGrid1.BeginUpdate;
      NiceGrid1.RowCount  := iCnt;
      SetLength(IDs, iCnt);  // id 저장변수 메모리 할당(동적 배열임)
      if iCnt>100 then NiceGrid1.GutterWidth  := 19
                  else NiceGrid1.GutterWidth  := 14;
      for i := 0 to iCnt - 1 do begin
        with ADOQuery1.Recordset.Fields do
        begin
          try
            IDs[i]              := ifNULL(Item[0].Value,' '); // ID
            NiceGrid1[00,i]     := ifNULL(Item[1].Value,' '); // 거래처
            NiceGrid1[01,i]     := ifNULL(Item[2].Value,' '); // 차량번호
            NiceGrid1[02,i]     := ifNULL(Item[3].Value,' '); // 차량명
            if vNULL(Item[7].Value) then begin                // 보험사
              tmpstr := AnsiLeftStr(Item[0].Value,1);
              if (tmpstr='G') or (tmpstr='H') then ikubun := 0;
              if (tmpstr='M') or (tmpstr='m') then ikubun := 1;
              case iKubun  of
               0: begin // 일반수리
                    NiceGrid1[03,i]    := '일반'; // 일반
                    NiceGrid1[04,i]    := '--';
               end;
               1: begin // 일반 정비
                    NiceGrid1[03,i]    := '정비'; // 정비
                    NiceGrid1[04,i]    := '--';
               end;
              end; // case
            end else begin
               NiceGrid1[03,i]     := ifNULL(Item[7].Value,' '); // 보험사
               NiceGrid1[04,i]     := ifNULL(Item[8].Value,' '); // 담보
            end; // if
            NiceGrid1[05,i]     := ifNULL(Item[4].Value,' '); // 입고
            NiceGrid1[06,i]     := ifNULL(Item[5].Value,' '); // 출고예정
            NiceGrid1[07,i]     := ifNULL(Item[6].Value,' '); // 출고
          except
           // showmessage('Error 발생!! ['+ inttostr(i)+'] [' + Item[0].Value+'] ['+Item[1].Value +'] ['+Item[2].Value+'] ['+Item[3].Value+'] ['+Item[4].Value+'] ['+Item[5].Value+'] ['+Item[6].Value+'] ['+Item[7].Value+'] ');
            ADOQuery1.Active:=False;
            // Break;  // loop ending !!!!
          end; // try
        end; // with
        ADOQuery1.Next;
        // bug - 거래처로 2팀 눌렀을 때 73개 쯤에서 에러 발생함.
        // 이유를 찾지 못했음. 2014.4.28
        //if i>73 then begin
        //  showmessage ('i = ' + inttostr(i) );
        //end;

      end; // for
      NiceGrid1.EndUpdate;
    end; //if
    ADOQuery1.Active:=False;
    GroupBox1.Caption  := '[ 검색 결과 : ' + formatcurr('#,##0;0;"0"',(iCnt)) +
                          ' 건의 차량이 검색되었습니다 ]';
  end
  else begin // index =3  전체 검색 =======================================
    iCnt  :=0;
    NiceGrid1.BeginUpdate;
    for iSql := 0 to 6 do begin
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text:=(Ssqls[isql]);
      ADOQuery1.Open;
      ii  := ADOQuery1.Recordset.RecordCount;

      if ii>0 then begin
        NiceGrid1.RowCount  := iCnt+ii;
        SetLength(IDs, iCnt + ii);  // id 저장변수 메모리 할당(동적 배열임)
        if (iCnt+ii)>100  then NiceGrid1.GutterWidth  := 19
                          else NiceGrid1.GutterWidth  := 14;
        for i := 0 to ii - 1 do begin
          with ADOQuery1.Recordset.Fields do
          begin
            try
              IDs[icnt]              := ifNULL(Item[0].Value,' '); // ID
              NiceGrid1[00,icnt]     := ifNULL(Item[1].Value,' '); // 거래처
              NiceGrid1[01,icnt]     := ifNULL(Item[2].Value,' '); // 차량번호
              NiceGrid1[02,icnt]     := ifNULL(Item[3].Value,' '); // 차량명
              if vNULL(Item[7].Value) then begin                // 보험사
                tmpstr := AnsiLeftStr(Item[0].Value,1);
                if (tmpstr='G') or (tmpstr='H') then ikubun := 0;
                if (tmpstr='M') or (tmpstr='m') then ikubun := 1;
                case iKubun  of
                 0: begin // 일반수리
                      NiceGrid1[03,icnt]    := '일반'; // 일반
                      NiceGrid1[04,icnt]    := '--';
                 end;
                 1: begin // 일반 정비
                      NiceGrid1[03,icnt]    := '정비'; // 정비
                      NiceGrid1[04,icnt]    := '--';
                 end;
                end; // case
              end else begin
                 NiceGrid1[03,icnt]     := ifNULL(Item[7].Value,' '); // 보험사
                 NiceGrid1[04,icnt]     := ifNULL(Item[8].Value,' '); // 담보
              end; // if
              NiceGrid1[05,icnt]     := ifNULL(Item[4].Value,' '); // 입고
              NiceGrid1[06,icnt]     := ifNULL(Item[5].Value,' '); // 출고예정
              NiceGrid1[07,icnt]     := ifNULL(Item[6].Value,' '); // 출고
            except
              //showmessage('Error 발생!! ['+ inttostr(icnt)+'] [' + Item[0].Value+'] ['+Item[1].Value +'] ['+Item[2].Value+'] ['+Item[3].Value+'] ['+Item[4].Value+'] ['+Item[5].Value+'] ['+Item[6].Value+'] ['+Item[7].Value+'] ');                                                          // Break;  // loop ending !!!!
              ADOQuery1.Active:=False;
            end; // try
          end; // with
          ADOQuery1.Next;
          inc(iCnt);

        // bug - 거래처로 2팀 눌렀을 때 73개 쯤에서 에러 발생함.
        // 이유를 찾지 못했음. 2014.4.28
        //if i>73 then begin
        //  showmessage ('i = ' + inttostr(i) );
        //end;

        end; // for
      end; //if
    end;  // for iSql
    ADOQuery1.Active:=False;
    NiceGrid1.EndUpdate;
    GroupBox1.Caption  := '[ 검색 결과 : ' + formatcurr('#,##0;0;"0"',(iCnt)) +
                          ' 건의 차량이 검색되었습니다 ]';



  end; // if index
end;

//==================================================================
// Name      : Calendar_View
// Desc      :   Calendar view
//==================================================================
Procedure TFormCM.Calendar_View(Index,x,y: integer);
begin
  with TMonthCalendar.Create(nil) do begin //CLDr do begin
    Left   := x + 10;
    Top    := y + 30;
    Height := 170;
    Width  := 230;
    Name   := 'MonthCalendar41';
    OnDblClick := CalDblClick;
    case Index  of
     1: Parent := Panel1; //Self;
     2: Parent := Panel1;
     //3: Parent := Panel2;
    end;
    date   := strtodate(ifempty(selDate,datetostr(now)));
  end;

end;
//==================================================================
// Name      : CalDblClick
// Desc      : 동적으로 생성된 달력 날짜 선택시 처리
//==================================================================
procedure TFormCM.CalDblClick(Sender : TObject);
var
  aDate   : AnsiString;
begin
    //showmessage(' Calendar DblClick !!');
  aDate   := DateToStr((sender as tMonthcalendar).Date);
  if (length(adate))=0 then   SelDate := DateToStr(NOW)
                       else   SelDate := aDate;
  case dateFlag of
   1: begin
        editDate40.Text := selDate;
      end;
   2: begin
        editDate41.Text := selDate;
      end;
  end;
  ObjFree(sender);
  dateFlag :=0;
end;


//==================================================================
// Name      : ObjFree(Sender : TObject)
// Desc      : 동적으로 생성된 달력 날짜 객체 지우기
//==================================================================
procedure TFormCM.ObjFree(Sender : TObject);
begin
  (sender as tMonthcalendar).Free;
  (sender as tMonthcalendar).Visible :=False;
end;

//==================================================================
// Name      : MonthCalendar1Click
// Desc      : Calendar
//==================================================================
procedure TFormCM.MonthCalendar1Click(Sender: TObject);
var
  ToDate : AnsiString;
  ACanvas: TCanvas;
begin
  //Text_Init;
  ToDate:=DateToStr(MonthCalendar1.Date);
  LabelDate.Caption:=DateView(MonthCalendar1.Date);
  WorkCar(ToDate);
end;

//==================================================================
// Name      : NiceGrid1Click
// Desc      : Grid Click
//==================================================================
procedure TFormCM.NiceGrid1Click(Sender: TObject);
begin
  GridFlag4 := True;
  if FindFlag then DetailView(IDs[NiceGrid1.Row])
              else DetailView(Tcarlist[NiceGrid1.Row].ID);
end;

//==================================================================
// Name      : NiceGrid1KeyDown
// Desc      : Grid Select
//==================================================================
procedure TFormCM.NiceGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //showmessage ('KeyDown ' + floattostr(key));
   case Key of
   VK_UP,VK_DOWN,VK_PRIOR,VK_NEXT : begin
    if FindFlag then DetailView(IDs[NiceGrid1.Row])
                else DetailView(Tcarlist[NiceGrid1.Row].ID);
   end;
  end;

end;



//==================================================================
// Name      : Reset_CarList
// Desc      : 구조체 배열 초기화
//==================================================================
procedure TFormCM.Reset_CarList;
var
  i: Integer;
begin
  for I := 0 to 50 do begin
    tcarlist[i].ID          :='';
    tcarlist[i].거래처      :='';
    tcarlist[i].차량번호    :='';
    tcarlist[i].차량명      :='';
    tcarlist[i].보험        :='';
    tcarlist[i].담보        :='';
    tcarlist[i].입고        :='';
    tcarlist[i].출고예정    :='';
    tcarlist[i].출고        :='';
    tcarlist[i].상태        :='';
    tcarlist[i].iCond       :=0;
  end;
end;
//==================================================================
// Name      : WorkCar
// Desc      : 해당 일의 차량 재고 현황
//==================================================================
procedure TFormCM.WorkCar(vDate : AnsiString);
var
  i,j,k         : Integer;
  iCnt,dayCnt   : Integer;  // 현 재고 , 금일 입고
  outCnt,outCnt2: Integer;  //  금일 출고예정, 금일 출고
  Ssql          : Ansistring;
  strTemp       : AnsiString;
  iKubun        : Integer;

begin
  Reset_CarList;
  dayCnt  :=0;
  outCnt  :=0;
  outCnt2 :=0;
  Ssql := 'SELECT ' + GRIDLIST1 + ' From 차량정보 WHERE (' +
          '( (입고일 <= #' + vDate + '#) AND (#' + vDate + '# <= 출고일) )' +
          ' OR ( (입고일 <= #' + vDate + '#) AND ( ISNULL(출고일) ) )' +
          ') order by 출고예정 ASC , 입고일 ASC;';  // ID ASC , 입고일 ASC;

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;

  if ADOQuery1.Recordset.RecordCount>0 then
   begin
    i:=0;
    iCnt:=ADOQuery1.Recordset.RecordCount;
    NiceGrid1.RowCount:=iCnt;
    while not ADOQuery1.Eof do
    begin
      with ADOQuery1.Recordset.Fields do
       begin
        Tcarlist[i].ID      := ifNULL(Item[0].Value,' '); // ID
        Tcarlist[i].거래처  := ifNULL(Item[1].Value,' '); // 거래처
        Tcarlist[i].차량번호:= ifNULL(Item[2].Value,' '); // 차량번호
        Tcarlist[i].차량명  := ifNULL(Item[3].Value,' '); // 차량명
        Tcarlist[i].입고    := ifNULL(Item[4].Value,' '); // 입고
        Tcarlist[i].출고예정:= ifNULL(Item[5].Value,' '); // 출고예정
        Tcarlist[i].출고    := ifNULL(Item[6].Value,' '); // 출고
        Tcarlist[i].상태    := '' // 상태
       end;
       // 차량 상태 저장 신규 = 1, 출고예정 = 3, 출고시기지남 = 5, 출고 = 7
       with Tcarlist[i] do begin
         if (입고=vdate)     then begin
            iCond:=1;
            inc(dayCnt);
         end;
         if (출고예정=vdate) then begin
            iCond:=iCond+3;
            inc(outCnt);
         end;
         if (출고예정<vdate) then iCond:=iCond+5;
         if (출고=vdate)     then begin
            iCond:=iCond+7;
            inc(outCnt2);
         end;
       end;  // with
      inc(i);
      ADOQuery1.Next;
    end; //while
    ADOQuery1.Active:=False;
    for i := 0 to icnt-1 do begin
      ikubun  := 0;
      strtemp := AnsiLeftStr(tcarlist[i].ID,1);
      if (strtemp='B') or (strtemp='C') then ikubun := 9;
      if (strtemp='G') or (strtemp='H') then ikubun := 0;
      if (strtemp='M') or (strtemp='m') then ikubun := 1;
      case iKubun  of
       0: begin // 일반수리
            Tcarlist[i].보험    := '일반'; // 일반
            Tcarlist[i].담보    := '--';
       end;
       1: begin // 일반 정비
            Tcarlist[i].보험    := '정비'; // 정비
            Tcarlist[i].담보    := '--';
       end;
       9: begin
            sSql := 'SELECT 보험사,담보 From 보험 WHERE ' +
                  '(보험.ID = ' + MQ + tcarlist[i].ID + MQ + ' );'; // Chr(34)
            ADOQuery1.SQL.Clear;
            ADOQuery1.SQL.Text:=(Ssql);
            ADOQuery1.Open;
            with ADOQuery1.Recordset do begin
              if RecordCount>0 then begin
                Tcarlist[i].보험    := ifNULL(Fields.Item[0].Value,''); // 보험
                Tcarlist[i].담보    := ifNULL(Fields.Item[1].Value,''); // 담보
              end else begin
                Tcarlist[i].보험    := ' '; //
                Tcarlist[i].담보    := ' ';
              end; // if
            end; //with
       end;
      end; // case
    end; //for

    NiceGrid1.BeginUpdate;
    for i := 0 to icnt-1 do begin
      with tcarlist[i] do begin
        // ------------------- 차량 상태 처리
        case iCond of
         1: 상태 := 상태 + '新 ';
         3: begin
            상태 := 상태 + '約 ';
         end;
         4: begin
           상태 := 상태 + '約 ';
         end;
         5: begin
            상태 := 상태 + '後 ';
         end;
         7..16: begin
            상태 := '出 ';
         end;
        end;
        NiceGrid1[00,i] := ifempty(거래처 ,''); //
        NiceGrid1[01,i] := ifempty(차량번호 ,'');
        NiceGrid1[02,i] := ifempty(차량명 ,''); //
        NiceGrid1[03,i] := ifempty(보험 ,''); //
        NiceGrid1[04,i] := ifempty(담보 ,'');
        NiceGrid1[05,i] := ifempty(입고 ,''); //
        NiceGrid1[06,i] := ifempty(출고예정 ,''); //
        NiceGrid1[07,i] := ifempty(상태 ,'');
      end; // with
    end; // for
    NiceGrid1.EndUpdate;
    GroupBox1.Caption   :='[ 총 ' + FormatCurr('#0;0;"0"',iCnt) +
                  '대 / 금일예정: '+ FormatCurr('#0;0;"0"',outCnt)+
                  '대 / 금일출고: '+ FormatCurr('#0;0;"0"',outCnt2)+
                  '대(작업중: '+ FormatCurr('#0;0;"0"',(iCnt-outCnt2) )+'대) ]';
   end;   // if
  ADOQuery1.Active:=False;


end;

//==================================================================
// Name      : DetailView
// Desc      : 차량 세부 정보 보기
//==================================================================
procedure TFormCM.DetailView(carID: AnsiString);
var
  i         : Integer;
  iRow      : Integer;     // grid row position
  Ssql      : AnsiString;
  stmp,stmp2: Ansistring;  // temp
  dd        : Double;      // temp
  dParts    : Currency;      // 부품 금액 합계
  DisCount  : array[0..2] of Currency; // 보험 할인액 계산
  oldDBParts: array[0..2] of Currency; // old-DB 부품 가격 정보
  SumCount  : array[0..2] of Currency; // 총 청구금, 총 지급금
  //tmpRecord : array[1..14] of Ansistring; // DB레코드 임시 저장함
begin
  for i := 0 to 2 do begin
    DisCount[i]   := 0;
    oldDBParts[i] := 0;
    SumCount[i]   := 0;
  end;
  dParts  := 0; dd  := 0;

  sSql := 'SELECT ' + BOHUMLIST1 +
          'From 차량정보 WHERE [차량정보.ID] = ' + MQ + carID + MQ + ';';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  if ADOQuery1.Recordset.RecordCount>0 then
   begin
     with ADOQuery1.Recordset.Fields do
       begin
        edit1.Text  := ifNULL(Item[0].Value,' '); // ID
        edit2.Text  := ifNULL(Item[1].Value,' '); // 차량번호
        edit3.Text  := ifNULL(Item[2].Value,' '); // 차량명
        edit8.Text  := ifNULL(Item[3].Value,' '); // 운전자
        edit9.Text  := ifNULL(Item[4].Value,' '); // 연락처
        edit11.Text := ifNULL(Item[5].Value,' '); // 거래처
        i  := strtoint(ifNULL(Item[6].Value,'0')); // 사업자 여부
        case i of
         0: begin
              edit10.Text   := '-';
              edit10.Color  := clWindow;
         end;
         1: begin
              edit10.Text   := '일반 (10%)';
              edit10.Color  := $00FFFF;  // 노랑
         end;
         2: begin
              edit10.Text   := '간이사업자';
              edit10.Color  := $99FFFF;  // 연노랑 ?
         end;
        end;  // case
        i  := strtoint(ifNULL(Item[7].Value,'0')); // 세금계산서
        if i=1 then begin
          CheckBox2.checked := True;
          CheckBox2.Color   := $00FFFF;  // 노랑
        end else begin
          CheckBox2.Checked := False;
          CheckBox2.Color   := clGradientInactiveCaption;
        end;  // if
        // 사진경로 Item[8].Value
        // 서류경로 Item[9].Value
        Memo1.Text  := ifNULL(Item[10].Value,' '); // 메모
        edit12.Text := ifNULL(Item[11].Value,' '); // 입고일
        edit13.Text := ifNULL(Item[12].Value,' '); // 출고예정일
        edit14.Text := ifNULL(Item[13].Value,' '); // 출고일
        if bNULL(edit14.Text) then edit14.Color :=clGradientInactiveCaption
                              else edit14.Color :=$CC99FF;
        //등록증 없음/차계부 미발행=1,등록증있음/차계부 미발행=0,
        //등록증 없음/차계부 발행=3,등록증있음/차계부 발행=2
        i  := StrToInt(ifNULL(Item[14].Value,'0'));
        case i of
         0: begin
            edit16.Text :=''; //CheckBox1.Checked:=False;
            CheckBox3.Checked:=False;
         end;
         1: begin
            edit16.Text :='등록증없음'; //CheckBox1.Checked:=True;
            CheckBox3.Checked:=False;
         end;
         2: begin
            edit16.Text :=''; //CheckBox1.Checked:=False;
            CheckBox3.Checked:=True;
         end;
         3: begin
            edit16.Text :='등록증없음'; //CheckBox1.Checked:=True;
            CheckBox3.Checked:=True;
         end;
         else begin
            edit16.Text :=''; //CheckBox1.Checked:=False;
            CheckBox3.Checked:=False;
         end;
        end; // case
        if (i=1)or (i=3) then edit16.Color   := $00FFFF  // 노랑
                         else edit16.Color   := clGradientInactiveCaption;
        dd  := StrToFloat(ifNULL(Item[15].Value,'0'));
        edit6.Text := formatcurr('#,##0;0;" "',dd); // 주행거리
        edit4.Text := ifNULL(Item[16].Value,' '); // 최초등록일
        edit7.Text := ifNULL(Item[17].Value,' '); // 도장코드(칼라)
        i  := StrToInt(ifNULL(Item[18].Value,'0'));  // 대차
        if i=0 then CheckBox4.Checked  := False
               else CheckBox4.Checked  := True;
        edit15.Text := ifNULL(Item[19].Value,' '); // 렌트카 회사명
        if bNULL(edit15.Text) then edit15.Color :=clGradientInactiveCaption
                              else edit15.Color :=$CC99FF;
        edit5.Text  := ifNULL(Item[20].Value,' '); // 차대번호
       end;   // with
   end; // if
  ADOQuery1.Active:=False;
  //------------------------------------ 보험 및 일반 정보 가져오기
  stmp  := AnsiLeftStr(trim(carID),1);
  Grid_Init(13);
  if (stmp='B') or (stmp='C') then
  begin
    GroupBoxBohum.BringToFront;  //보험
    sSql := 'SELECT ' + BOHUMLIST2 +
            'From 보험 WHERE [보험.ID] = ' + MQ + carID + MQ + ';';
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    if ADOQuery1.Recordset.RecordCount>0 then
    begin
      iRow  := -1;
      Nicegrid4.RowCount:=ADOQuery1.Recordset.RecordCount;
      Nicegrid5.RowCount:=ADOQuery1.Recordset.RecordCount;
      while not ADOQuery1.Eof do
      begin
        inc(iRow);
        NiceGrid4.BeginUpdate;
        NiceGrid5.BeginUpdate;
        for i := 0 to 2 do DisCount[i]   :=0; //보험 할인액 초기화
        //for i := 1 to 14 do tmpRecord[i] :='';// DB레코드 초기화
        dParts := 0; // 부품 합계 초기화
        with ADOQuery1.Recordset.Fields do
        begin
          NiceGrid4[00,iRow] := ifempty(Item[1].Value,''); // 보험사
          NiceGrid4[01,iRow] := ifempty(Item[2].Value,''); // 담보
          NiceGrid4[02,iRow] := ifempty(Item[3].Value,''); // 과실
          NiceGrid4[03,iRow] := ifempty(Item[4].Value,''); // 접수번호
          NiceGrid4[05,iRow] :=MyAmount(Item[5].Value); // 면책금
          NiceGrid4[04,iRow] := ifNULL(Item[6].Value,''); // 정률구분
          NiceGrid4[07,iRow] := ifempty(Item[7].Value,''); // 담당자
          NiceGrid4[08,iRow] := '000-0000-0000'; // 담당자 연락처(다시 조회)
          NiceGrid4[09,iRow] := '0000-000-0000'; // 담당자 FAX(다시 조회)
          NiceGrid4[06,iRow] :=MyAmount(Item[16].Value); // 받은 면책금

          NiceGrid5[00,iRow] := NiceGrid4[00,iRow]; // 보험사
          NiceGrid5[01,iRow] := ifNULL(Item[8].Value,''); // 청구일
          NiceGrid5[02,iRow] :=MyAmount(Item[9].Value); // 청구금
          NiceGrid5[03,iRow] := ifNULL(Item[10].Value,''); // 입금일
          if vNULL(NiceGrid5[03,iRow]) then begin
            NiceGrid5[04,iRow] := '-';
            NiceGrid5[05,iRow] := '-';
            NiceGrid5[06,iRow] := '-';
          end
          else begin
            stmp2 := ifEmpty(NiceGrid5[02,iRow],'0');
//showmessage ('NiceGrid5[02,iRow] = [' + NiceGrid5[02,iRow] + ']');
            DisCount[0] := strtoint(conNumber(stmp2)); // 청구금
            NiceGrid5[04,iRow] :=MyAmount(Item[11].Value); // 입금액
              stmp2 := ifEmpty(NiceGrid5[04,iRow],'0');
              DisCount[1] := strtoint(conNumber(stmp2));// 입금액
              if not((DisCount[0]=0) or (Discount[1]=0)) then
                DisCount[2] := (DisCount[1] /  DisCount[0] * 100.0);
            NiceGrid5[05,iRow] := MyAmount((DisCount[0] - DisCount[1]));//할인액
            NiceGrid5[06,iRow] := formatcurr('#0.0;0;" "',DisCount[2]); //할인율
          end; // if
          NiceGrid5[07,iRow] := ifNULL(Item[15].Value,''); // 메모
          NiceGrid5[09,iRow] := ifNULL(Item[24].Value,''); // 영업비 지출일
          NiceGrid5[10,iRow] := ifempty(Item[14].Value,''); // 영업비
          //edit17.Text := '부품 + 공임 = '; // 총 수리비 청구액
          //txtSub(7) = ConvAmount(txtSub(7)) + DisCount(1) '청구금 계
          //txtSub(8) = ConvAmount(txtSub(8)) + DisCount(2) '입금 계

          // 옛날 DB자료 조회 - 렌트
          if CheckBox4.Checked=False then begin
            i:=StrToInt(ifNULL(Item[18].Value,'0'));  // old-DB 대차
            if i=0 then CheckBox4.Checked  := False
                   else CheckBox4.Checked  := True;
            edit15.Text := ifNULL(Item[19].Value,' '); // old-DB 렌트카 회사명
            if bNULL(edit15.Text) then edit15.Color :=clGradientInactiveCaption
                                  else edit15.Color :=$CC99FF;
          end;
          // 옛날 DB자료 조회 - 부품가격
          oldDBParts[0] :=StrToFloat(ifNULL(Item[20].Value,'0'));  // 부품비
          oldDBParts[1] :=StrToFloat(ifNULL(Item[22].Value,'0'));  // 유리
          oldDBParts[2] :=StrToFloat(ifNULL(Item[23].Value,'0'));  // 실란트
          dParts := olddbparts[0]+olddbparts[1]+olddbparts[2];
          if (dParts)>0 then
          begin
            NiceGrid3.RowCount := 3;
            NiceGrid3[00,00] := '(old)' + ifempty(Item[21].Value,''); // 부품 사
            NiceGrid3[01,00] := MyAmount(oldDBParts[0]); // amount
            NiceGrid3[00,01] := '(old)유리';
            NiceGrid3[01,01] := MyAmount(oldDBParts[1]);
            NiceGrid3[00,02] := '(old)실란트';
            NiceGrid3[01,02] := MyAmount(oldDBParts[2]);
            Nicegrid3.Columns[1].Footer := MyAmount(dParts);
          end;
        end;  // with
        ADOQuery1.Next;
      end; // while
      NiceGrid4.EndUpdate;
      NiceGrid5.EndUpdate;
      ADOQuery1.Active:=False;
      // 보험담당 전화, 팩스번호
      for i := 0 to iRow do begin
        sSql := 'SELECT 핸드폰,FAX From 보험담당 WHERE 이름 = ' +
             MQ + NiceGrid4[07,i] + MQ + ' AND ' +
             MQ + NiceGrid4[00,i] + MQ + ' ;';
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text:=(Ssql);
        ADOQuery1.Open;
        if ADOQuery1.Recordset.RecordCount>0 then
        begin
          NiceGrid4[08,i] := ifNULL(ADOQuery1.Recordset.Fields.Item[0].Value,'-');
          // 담당자 연락처
          NiceGrid4[09,i] := ifNULL(ADOQuery1.Recordset.Fields.Item[1].Value,'-');
          // 담당자 FAX(다시 조회)
        end; //if
        ADOQuery1.Active:=False;
      end; // for
      // 부품 조회
      sSql := 'SELECT ID, No, 부품사, 부품비, 메모 ' +
             ' From 부품 WHERE ID = ' + MQ + carID + MQ + ' ;';
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text:=(Ssql);
      ADOQuery1.Open;

      if ADOQuery1.Recordset.RecordCount>0 then
       begin
        i:=0;
        //iCnt:=ADOQuery1.Recordset.RecordCount;
        NiceGrid3.BeginUpdate;
        NiceGrid3.RowCount:=ADOQuery1.Recordset.RecordCount;
        for i := 0 to ADOQuery1.Recordset.RecordCount - 1 do
        begin
          with ADOQuery1.Recordset.Fields do
           begin
            NiceGrid3[00,i] := ifempty(Item[2].Value,''); // 부품사
            dd:= StrToFloat(ifNULL(Item[3].Value,'0'));
            NiceGrid3[01,i] := MyAmount(dd); // money
            dParts  := dParts + dd;
           end;  // with
          ADOQuery1.Next;
        end; // for
        NiceGrid3.EndUpdate;
       end; // if
      ADOQuery1.Active:=False;
      Nicegrid3.Columns[1].Footer := MyAmount(dParts);
      if DisCount[0]=0 then edit17.Text := ''
      else begin
        SumCount[0] := DisCount[0] + dParts;
        edit17.Text := MyAmount(SumCount[0]);
      end;
      if DisCount[1]=0 then begin
        edit18.Text := ''; // 지급계
        edit19.Text := ''; // 지급계
      end
      else begin
        SumCount[1] := DisCount[1] + dParts;
        SumCount[2] := SumCount[0] - SumCount[1];
        edit18.Text := MyAmount(SumCount[1]); // 지급계
        edit19.Text := MyAmount(SumCount[2]); // 차액
      end;
      // 보험 건 이면서 일반 수리 하는거 처리

    end; // if
  end else // if (stmp='B') or (stmp='C')
  begin   // ----------------------------------------------일반 정보 가져오기
    GroupBoxILBan.BringToFront;  //  일반
    sSql :='SELECT ID, 부품비, 공임액, 청구액, 입금일, 입금액, 결제, ' +
           ' 할인액, 영업비, 메모, 부품사 ' +
           ' From 일반 WHERE [일반.ID] = ' + MQ + carID + MQ + ';';
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    if ADOQuery1.Recordset.RecordCount>0 then
    begin
      with ADOQuery1.Recordset.Fields do
      begin
          edit40.Text := MyAmount(Item[1].Value);  // 부품비
          edit41.Text := MyAmount(Item[2].Value);  // 공임액
          edit42.Text := MyAmount(Item[3].Value);  // 청구액
          edit43.Text := ifNULL(Item[10].Value,'');// 부품사
          edit44.Text := ifNULL(Item[4].Value,''); // 입금일
          edit45.Text := MyAmount(Item[5].Value);  // 입금액
          edit46.Text := ifNULL(Item[6].Value,''); // 결제방법
          edit47.Text := MyAmount(Item[7].Value);  // 할인액
          edit48.Text := MyAmount(Item[8].Value);  // 영업비 or 서비스
          Memo3.Text  := ifNULL(Item[9].Value,''); //  메모
      end;  // with
    end; // if
    edit17.Text :='';
    edit18.Text :='';
    edit19.Text :='';

  end; // if (stmp='B') or (stmp='C')  -- 일반
  //


end;

//==================================================================
// Name      : EditFindKeyPress
// Desc      :
//==================================================================
procedure TFormCM.EditFindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    if RadioGroup2.ItemIndex = 0 then ButtonFindGoClick(self)
                                 else RadioGroup2Click(self);
  end;
end;

//==================================================================
// Name      : NiceGrid1DrawCell
// Desc      : 그리드에 상태 별로 색깔 넣기
//==================================================================
procedure TFormCM.NiceGrid1DrawCell(Sender: TObject; ACanvas: TCanvas; X,
  Y: Integer; Rc: TRect; var Handled: Boolean);
var
  i: Integer;
  stmp  : Ansistring;
begin
  // 금일 출고 예정일 차량 : 파란색 폰트
  if (NiceGrid1[06,y]=DateToStr(MonthCalendar1.Date)) then
      ACanvas.Font.Color := clBlue; //clMaroon;
  // 출고된 차량 옅은 분홍 바탕, 회색 폰트
  stmp := (NiceGrid1[07,y]);
  if (stmp='出') then begin
    for I := 0 to 6 do begin
        //stmp := NiceGrid1.Cells[i,y] ;
        ACanvas.Brush.Color := $00DFDFFF; //clMaroon; //clYellow;
        ACanvas.Font.Color := clGrayText;
    end;
  end;
end;

//==================================================================
// Name      : NiceGrid4DrawCell
// Desc      : 그리드에 상태 별로 색깔 넣기
//==================================================================
procedure TFormCM.NiceGrid4DrawCell(Sender: TObject; ACanvas: TCanvas; X,
  Y: Integer; Rc: TRect; var Handled: Boolean);
var
  stmp  : Ansistring;
begin
  ACanvas.Brush.Color := clWindow;
  if (GridFlag4) and (x=4) then begin
    stmp := ifnull(NiceGrid4[04,y],'');
    if (stmp='--') then ACanvas.Brush.Color := clGradientInactiveCaption;
  end;
  if (GridFlag4) and (x=5) then begin
    stmp := ifnull(NiceGrid4[05,y],'');
    if (stmp='-') then ACanvas.Brush.Color := clGradientInactiveCaption;
    if (stmp='') then begin
      if (NiceGrid4[01,y]='자차') then ACanvas.Brush.Color := clYellow
      else                             ACanvas.Brush.Color := cl3DLight;
    end;
  end;
  if (GridFlag4) and (x=6) then begin
    stmp := ifnull(NiceGrid4[06,y],'');
    if (stmp='-') then ACanvas.Brush.Color := clGradientInactiveCaption;
    if (stmp='') then begin
      if (NiceGrid4[01,y]='자차') then ACanvas.Brush.Color := clYellow
      else                             ACanvas.Brush.Color := cl3DLight;
    end;
  end;
end;

//==================================================================
// Name      : NiceGrid5DrawCell
// Desc      : 그리드에 상태 별로 색깔 넣기
//==================================================================
procedure TFormCM.NiceGrid5DrawCell(Sender: TObject; ACanvas: TCanvas; X,
  Y: Integer; Rc: TRect; var Handled: Boolean);
var
  i: Integer;
  stmp  : Ansistring;
begin
  ACanvas.Brush.Color := clWindow;
  if (GridFlag4) then begin
    stmp  := ifnull(NiceGrid5[03,y],'');
    if (stmp = '') then ACanvas.Font.Color := clBlue; //현재미입금
  end;
 {
  stmp  := ifnull(NiceGrid5[06,y],'0');
  i := round( int(strtoint(stmp)*10) /10)   ;

  case i of
   0..70:   ACanvas.Brush.Color := clMaroon;
   71..80:  ACanvas.Brush.Color := clYellow;
   81..90:  ACanvas.Brush.Color := $FFFFFF; // 옅은 노랑
  end;  }
end;

//==================================================================
// Name      : ButtonOKClick
// Desc      : 공지사항 OK
//==================================================================
procedure TFormCM.ButtonOKClick(Sender: TObject);
begin
  timer1.Enabled:=not(timer1.Enabled);
end;


procedure TFormCM.CheckBox4Click(Sender: TObject);
begin

end;

//==================================================================
// Name      : Timer1Timer
// Desc      : 공지사항용 타이머
//==================================================================
procedure TFormCM.Timer1Timer(Sender: TObject);
var
  i     : Integer;
begin
   if LabelMessage.left > dLen then     // -548
    begin
      LabelMessage.left := LabelMessage.left-iSpeed;
      inc(i);
    end else LabelMessage.left := viLen; //800;
end;


//==================================================================
// Name      : Grid_Init
// Desc      : 그리드 초기화
//==================================================================
procedure TformCM.Grid_Init(Index : Integer);
begin
  case Index of
   1: begin        // 날짜 선택시 그리드 초기화
     with NiceGrid1 do begin
       ColCount     := 8;
       Color        := clWindow;
       RowCount     :=1;
       ShowGrid     :=True;
       Width        := 490;
       Height       := 465;
       DefRowHeight := 16;
       Font.Name    := 'Tahoma';
       Font.Size    := 8;
       ShowFooter   :=False;
       GutterWidth  := 14;
       GutterKind   := gkNumber;
       GutterFont.Name:='Minion Pro';
       GutterFont.Size:=8;
       Columns[0].Title:='거래처';  Columns[0].Width :=48;
       Columns[1].Title:='차량번호';  Columns[1].Width :=80;
       Columns[2].Title:='차량명';  Columns[2].Width :=100;
       Columns[3].Title:='보험';  Columns[3].Width :=42;
       Columns[4].Title:='담보';  Columns[4].Width :=30;
       Columns[5].Title:='입고일';  Columns[5].Width :=46;
       Columns[6].Title:='예정일';  Columns[6].Width :=46;
       Columns[7].Title:='상태';  Columns[7].Width :=50;
       Clear;
     end;
   end;
   11: begin      // 보험 검색시 그리드 초기화
     with NiceGrid1 do begin
       ColCount     := 8;
       Color        := clWindow;
       RowCount     :=1;
       ShowGrid     :=True;
       Width        := 490;
       Height       := 465;
       DefRowHeight := 16;
       Font.Name    := 'Tahoma';
       Font.Size    := 8;
       ShowFooter   :=False;
       GutterWidth  := 14;
       GutterKind   := gkNumber;
       GutterFont.Name:='Minion Pro';
       GutterFont.Size:=8;
       Columns[0].Title:='거래처';  Columns[0].Width :=48;
       Columns[1].Title:='차량번호';  Columns[1].Width :=80;
       Columns[2].Title:='차량명';  Columns[2].Width :=100;
       Columns[3].Title:='보험';  Columns[3].Width :=42;
       Columns[4].Title:='담보';  Columns[4].Width :=30;
       Columns[5].Title:='입고일';  Columns[5].Width :=46;
       Columns[6].Title:='예정일';  Columns[6].Width :=46;
       Columns[7].Title:='출고일';  Columns[7].Width :=46;
       Clear;
     end;

   end;
   13: begin      // 세부 정보 뷰어 - 부품, 보험 그리드 내용 초기화
      NiceGrid3.RowCount    :=0;
      Nicegrid3.ShowFooter  :=True;
      Nicegrid3.Columns[1].Footer := '';
      Nicegrid3.Clear;
      NiceGrid4.Clear;
      Nicegrid5.Clear;
   end;

  end;
end;

//==================================================================
// Name      : Text_Init
// Desc      : 텍스트 박스 초기화
//==================================================================
Procedure TformCM.Text_Init(Index : Integer);
var
  i   : Integer;
  TComp : TComponent; //Tedit;
begin
  case Index of
   1 : begin    // ------------------------ tab 1
          GroupBoxILBan.SendToBack;    //일반수리 그룹박스를 맨 뒤로 보내기
          GroupBoxFind.Visible  := False;
          GroupBoxBohum.BringToFront;  //보험수리 그룹박스를 맨 위로 올리기
          GroupBox2.BringToFront;      // 차량 세부 정보 박스
          MonthCalendar1.Visible  := True;
          edit1.Color  := clGradientInactiveCaption;
          edit2.Height := 19;  edit2.Font.Size := 9;
          //edit2.borderwidth := (edit2.Height - Abs(Font.Height*2) ) div 2;
          edit3.Height := 19;  edit3.Font.Size := 9;
          GroupBox1.Caption  := '[ 현재 재고: 총 ___대 / 금일출고예정: ___대 ]';
   end;
   10 : begin     // ------------------- 차량 세부정보 초기화
          for i := 0 to GroupBox2.ControlCount - 1 do  // 세부정보 - 전체
           begin
              TComp :=GroupBox2.Controls[i];
              if TComp.ClassName ='TEdit' then begin
                        Tedit(GroupBox2.Controls[i]).text :='';
                        Tedit(GroupBox2.Controls[i]).Height:=16;
              end;
              if Tcomp.ClassName='TMemo' then
                TMemo(GroupBox2.Controls[i]).text :='';
          end;
          for i := 0 to GroupBox9.ControlCount - 1 do  // 세부정보 - 차량
           begin
              TComp :=GroupBox9.Controls[i];
              if TComp.ClassName ='TEdit' then begin
                        Tedit(GroupBox9.Controls[i]).text :='';
                        Tedit(GroupBox9.Controls[i]).Height:=17;
              end;
          end;
          for i := 0 to GroupBoxILBan.ControlCount - 1 do  // 세부정보 - 일반
           begin
              TComp :=GroupBoxILBan.Controls[i];
              if TComp.ClassName ='TEdit' then begin
                        Tedit(GroupBoxILBan.Controls[i]).text :='';
                        Tedit(GroupBoxILBan.Controls[i]).Height:=16;
              end;
              if Tcomp.ClassName='TMemo' then
                TMemo(GroupBoxILBan.Controls[i]).text :='';
          end;
   end;
   11 : begin    // ------------------------ tab 1 - Find
          GroupBoxILBan.SendToBack;    //일반수리 그룹박스를 맨 뒤로 보내기
          MonthCalendar1.Visible  := False;
          GroupBoxFind.Visible  := True;
          GroupBoxFind.BringToFront;
          GroupBoxBohum.SendToBack;  //보험수리 그룹박스를 맨 위로 올리기
          GroupBox2.BringToFront; // 차량 세부 정보 박스
          for i := 0 to GroupBox18.ControlCount - 1 do
           begin
              TComp :=GroupBox18.Controls[i];
              if TComp.ClassName ='TEdit' then begin
                        Tedit(GroupBox18.Controls[i]).text :='';
                        Tedit(GroupBox18.Controls[i]).Height:=17;
              end;
           end;
          for i := 0 to GroupBox19.ControlCount - 1 do
           begin
              TComp :=GroupBox19.Controls[i];
              if TComp.ClassName ='TEdit' then begin
                        Tedit(GroupBox19.Controls[i]).text :='';
                        Tedit(GroupBox19.Controls[i]).Height:=16;
              end;
              if Tcomp.ClassName='TMemo' then
                TMemo(GroupBox2.Controls[i]).text :='';
           end;
           edit1.Color  := clGradientInactiveCaption;
           edit2.Height := 19;  edit2.Font.Size := 9;
           //edit2.borderwidth := (edit2.Height - Abs(Font.Height*2) ) div 2;
           edit3.Height := 19;  edit3.Font.Size := 9;
           GroupBox1.Caption  := '[ 검색 결과 ]';
           RadioGroup2.ItemIndex  := 0;
           RadioTerm1.Checked:= False;
           RadioTerm2.Checked:= False;
           RadioTerm3.Checked:= False;
           RadioTerm4.Checked:= False;
           RadioTerm5.Checked:= True;

   end;

   2 : begin   //---------------------- tab 2      //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
       {   for i := 0 to GroupBox5.ControlCount - 1 do
           begin
              TComp :=GroupBox5.Controls[i];
              if TComp.ClassName ='TEdit' then begin
                        Tedit(GroupBox5.Controls[i]).text :='';
                        Tedit(GroupBox5.Controls[i]).Height:=17;
              end;
           end;
          for i := 0 to GroupBox11.ControlCount - 1 do
           begin
              TComp :=GroupBox11.Controls[i];
              if TComp.ClassName ='TEdit' then begin
                        Tedit(GroupBox11.Controls[i]).text :='';
                        Tedit(GroupBox11.Controls[i]).Height:=17;
              end;
           end;
           edit20.Color  := clGradientInactiveCaption;
           edit21.Height := 19;  edit21.Font.Size := 9;
           //edit2.borderwidth := (edit2.Height - Abs(Font.Height*2) ) div 2;
           edit22.Height := 19;  edit22.Font.Size := 9;
    }
   end;
   3 : begin   //--------------------  tab 3
          {edit11.Text :='';
          edit12.Text :='';
          memo1.Text  :=''; }
   end;
  end;
end;



//==================================================================
// Name      : ButtonEndClick
// Desc      : close
//==================================================================

procedure TFormCM.ButtonEndClick(Sender: TObject);
begin
  close;
end;


end.
