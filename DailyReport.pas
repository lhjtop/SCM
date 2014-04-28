unit DailyReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, NiceGrid, StrUtils, DateUtils,
  lhjModule, Grids, DBGrids, DB, ADODB;

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
    ButtonDaily1: TButton;
    ButtonDaily2: TButton;
    ButtonDaily3: TButton;
    ButtonDaily4: TButton;
    ButtonDaily5: TButton;
    ButtonDailyEnd: TButton;
    NiceGrid1: TNiceGrid;
    ButtonCalView1: TButton;
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
    RadioDate1: TRadioButton;
    RadioDate2: TRadioButton;
    RadioDate3: TRadioButton;
    RadioDate4: TRadioButton;
    EditDate1: TEdit;
    ButtonCalView2: TButton;
    EditDate2: TEdit;
    ButtonCalView3: TButton;
    GroupBox6: TGroupBox;
    Label18: TLabel;
    Edit13: TEdit;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    Button16: TButton;
    Button17: TButton;
    NiceGrid2: TNiceGrid;
    GroupBox5: TGroupBox;
    ButtonSearchEnd: TButton;
    Panel3: TPanel;
    NiceGrid3: TNiceGrid;
    GroupBox8: TGroupBox;
    ButtonAccount1: TButton;
    ButtonAccount3: TButton;
    ButtonAccount4: TButton;
    ButtonAccountEnd: TButton;
    GroupBox7: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Memo1: TMemo;
    Label14: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure FormActivate(Sender: TObject);

    Procedure Text_Init(Index : Integer);
    procedure Radio_Init;
    procedure Grid_Init(Index : Integer);
    procedure ButtonDailyEndClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonCalView1Click(Sender: TObject);
    procedure Calendar_View(Index,x,y: integer);
    procedure DateDisplay(var dDate:ansistring);
    procedure PageControl1Change(Sender: TObject);
    procedure ObjFree(Sender : TObject);
    procedure ButtonCalView2Click(Sender: TObject);
    procedure ButtonCalView3Click(Sender: TObject);
    procedure RadioDate1Click(Sender: TObject);
    procedure RadioDate2Click(Sender: TObject);
    procedure RadioDate3Click(Sender: TObject);
    procedure RadioDate4Click(Sender: TObject);
    //procedure ButtonAccountEndClick(Sender: TObject);
    procedure AccountManager;
    procedure NiceGrid3Click(Sender: TObject);
    procedure AccountViewer(y: Integer);
    procedure NiceGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonAccount4Click(Sender: TObject);
    procedure ButtonAccount1Click(Sender: TObject);
    procedure ButtonAccount3Click(Sender: TObject);
    procedure ButtonDaily1Click(Sender: TObject);
    procedure ButtonDaily4Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalDblClick(Sender : TObject);
    //procedure BtnClick(Sender : TObject);
  public
    { Public declarations }

  end;

var
  FormDailyReport : TFormDailyReport;
  SelDate         : Ansistring;
  dateFlag        : Integer; // 날짜 처리 변수
  FormSecurity    : TFormDailyReport;
implementation

{$R *.dfm}

uses Security;

const
  days: array[1..7] of string = ('일','월','화','수','목','금','토');
type
  TDaily = record
    ID      : AnsiString;
    Account : AnsiString;
    Remark  : AnsiString;
  end;

//==================================================================
// Name      : FormActivate(Sender: TObject)
// Desc      :
//==================================================================
procedure TFormDailyReport.FormActivate(Sender: TObject);
var
  i : Integer;
begin
  for i := 1 to 3 do begin
     Text_Init(i);
     Grid_Init(i);
   end;
  Radio_Init;
  SelDate :=datetostr(now);
  ADOQuery1.Connection.LoginPrompt:=False;
end;

//==================================================================
// Name      : FormShow
// Desc      : 폼 초기화
//==================================================================
procedure TFormDailyReport.FormShow(Sender: TObject);
begin
  PageControl1.Tabindex:=0;
  dateFlag :=0; // 날짜 처리 변수 초기화
end;


//==================================================================
// Name      : PageControl1Change(Sender: TObject);
// Desc      :   Page Control
//==================================================================
procedure TFormDailyReport.PageControl1Change(Sender: TObject);
var
  sSql  : Ansistring;

begin
  case PageControl1.TabIndex of
   //0:
   //1:
   2: AccountManager; // 계정과목 관리

   //3:
  end;
end;


//==================================================================
// Name      : AccountManager
// Desc      :   계정 관리
//==================================================================
procedure TFormDailyReport.AccountManager;
var
  i       : Integer;
  //iCnt    : Integer;
  Ssql    : AnsiString;

begin

  Ssql:='SELECT ID, 계정과목, 비고 From 계정들 ORDER BY ID asc ;' ;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;

  if ADOQuery1.Recordset.RecordCount>0 then
   begin
    i:=0;
    //iCnt:=ADOQuery1.Recordset.RecordCount;
    NiceGrid3.RowCount:=ADOQuery1.Recordset.RecordCount;
    while not ADOQuery1.Eof do
    begin
      with ADOQuery1.Recordset.Fields do
       begin
        NiceGrid3[00,i] := ifempty(Item[0].Value,''); // ID
        NiceGrid3[01,i] := ifempty(Item[1].Value,''); // ID
        NiceGrid3[02,i] := ifempty(Item[2].Value,''); // ID
       end;
      inc(i);
      ADOQuery1.Next;
    end;
   end;
  ADOQuery1.Active:=False;


end;

//==================================================================
// Name      : ButtonDaily1Click(Sender: TObject)
// Desc      : 입력
//==================================================================
procedure TFormDailyReport.ButtonDaily1Click(Sender: TObject);
begin

end;
//==================================================================
// Name      : ButtonDaily4Click(Sender: TObject)
// Desc      : Clear
//==================================================================
procedure TFormDailyReport.ButtonDaily4Click(Sender: TObject);
begin
  Text_Init(1);
  // Grid_Init(1);
end;

//==================================================================
// Name      : ButtonAccount1Click(Sender: TObject)
// Desc      : 입력
//==================================================================
procedure TFormDailyReport.ButtonAccount1Click(Sender: TObject);
var
  saveDaily : TDaily;
  Ssql      : Ansistring;
  myMessage : AnsiString;

begin
  saveDaily.ID      := edit11.Text;
  saveDaily.Account := edit12.Text;
  saveDaily.Remark  := memo1.Text;

  if bNULL(saveDaily.ID) or bNULL(saveDaily.Account) then begin
    showmessage(' ID 값 또는 계정과목을 확인해 주세요 ');
  end else
  begin
    Ssql:='SELECT ID, 계정과목, 비고 From 계정들 ' +
        ' WHERE ID = ' + MQ + saveDaily.ID + MQ +';' ;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    if ADOQuery1.Eof then begin
    // insert
      try
        ADOConnection1.BeginTrans;                     //트랜젝션 시작
        Ssql:='INSERT INTO 계정들 ' +
        '( ID, 계정과목, 비고 )' +
        ' Values ( ' + MQ + saveDaily.ID      + MQ + ', ' + MQ +
                            saveDaily.Account + MQ + ', ' + MQ +
                            saveDaily.Remark  + MQ + ');';
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text:=sSql;
        myMessage:=' 저장이 완료 되었습니다. ';
     except
        ADOConnection1.RollbackTrans;                 //트랜젝션 롤백
        ADOQuery1.Active:=False; // 예외 처리
     end;
    end
    else begin
    // update
     try      // ' + MQ + '
      ADOConnection1.BeginTrans;                     //트랜젝션 시작
      Ssql:='UPDATE 계정들 SET ' +
        'ID = '       + MQ + saveDaily.ID      + MQ + ', ' +
        '계정과목 = ' + MQ + saveDaily.Account + MQ + ', ' +
        '비고 = '     + MQ + saveDaily.Remark  + MQ + '  ' +
        ' Where ID = '+ MQ + saveDaily.ID      + MQ + '; ';
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text:=sSql;
      myMessage:=' 수정이 완료 되었습니다. ';
     except
        ADOConnection1.RollbackTrans;                 //트랜젝션 롤백
        ADOQuery1.Active:=False; // 예외 처리
     end;
    end;

  // showmessage (' ssql = ' + ssql+ '    ' );    clipboard.AsText:=ssql;
    ADOQuery1.ExecSQL;
    ADOConnection1.CommitTrans;                    //트랜젝션 적용
    ADOQuery1.Active:=False;
    ShowMessage (myMessage);
  end; // if
  AccountManager;

end;

//==================================================================
// Name      : ButtonAccount3Click(Sender: TObject)
// Desc      : 삭제
//==================================================================
procedure TFormDailyReport.ButtonAccount3Click(Sender: TObject);
var
  yn : Integer;
  sSql : AnsiString;
  sID  : AnsiString;
  FormSecurity:TFormSecurity;

begin
  sID := trim(edit11.Text);
  // 삭제 여부 재확인
  yn:=MessageDlg('정말 삭제하겠습니까? 삭제한 자료는 복구가 안됩니다.'
                  ,mtInformation,mbOKCancel,0);   // OK : 1 , Cancel : 2
  if yn=1 then  begin
    FormSecurity:=TFormSecurity.Create(self);
    FormSecurity.ShowModal;
    if FormSecurity.EditPW.Text=pPW then ResultReturn:='OK'
                                    else ResultReturn:='FAIL';
    FormSecurity.Free;
    if ResultReturn='FAIL' then close;

    sSql := 'DELETE FROM 계정들 WHERE ID = '+ MQ + sID + MQ + '; ';
    try
      try
        ADOConnection1.BeginTrans;                     //트랜젝션 시작
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;                           //SQL문 삭제
        ADOQuery1.SQL.Text:=sSql;
        ADOQuery1.ExecSQL;                             //SQL 실행
        ADOConnection1.CommitTrans;                    //트랜젝션 적용
      except
        ADOConnection1.RollbackTrans;                 //트랜젝션 롤백
        //showmessage(' try exception 예외처리');
      end;
    finally
        //ADOQuery1.Open;
        ADOQuery1.Active:=False;
        //showmessage(' try finally 예외처리');
    end;
    ADOQuery1.Active:=False;
  end;
  Text_Init(3);
  AccountManager;

end;

//==================================================================
// Name      : ButtonAccount4Click(Sender: TObject)
// Desc      : 취소
//==================================================================
procedure TFormDailyReport.ButtonAccount4Click(Sender: TObject);
begin
  Text_Init(3);
end;

//==================================================================
// Name      : NiceGrid3Click(Sender: TObject)
// Desc      :
//==================================================================
procedure TFormDailyReport.NiceGrid3Click(Sender: TObject);
begin
  AccountViewer(nicegrid3.Row);
end;

//==================================================================
// Name      : NiceGrid3KeyDown
// Desc      :
//==================================================================
procedure TFormDailyReport.NiceGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //showmessage ('KeyDown ' + floattostr(key));
   case Key of
   VK_UP,VK_DOWN,VK_PRIOR,VK_NEXT : AccountViewer(nicegrid3.Row);
  end;
end;


//==================================================================
// Name      : AccountViewer(y: Integer);
// Desc      :
//==================================================================
procedure TFormDailyReport.AccountViewer(y: Integer);
begin
  edit11.Text := nicegrid3[0, y];
  edit12.Text := nicegrid3[1, y];
  memo1.Text  := nicegrid3[2, y];

end;

//==================================================================
// Name      : ButtonCalView1Click(Sender: TObject)
// Desc      :   Calendar view
//==================================================================
procedure TFormDailyReport.ButtonCalView1Click(Sender: TObject);
begin
  dateFlag := 1;
  Calendar_view(1,ButtonCalView1.Left,ButtonCalView1.Top);
end;

//==================================================================
// Name      : ButtonCalView2Click(Sender: TObject)
// Desc      :   Calendar view
//==================================================================
procedure TFormDailyReport.ButtonCalView2Click(Sender: TObject);
begin
  dateFlag := 2;
  seldate:=ifempty(editdate1.Text,datetostr(now));
  Calendar_view(2,ButtonCalView2.Left,ButtonCalView2.Top);
  Radio_Init;
end;

//==================================================================
// Name      : ButtonCalView3Click(Sender: TObject)
// Desc      :   Calendar view
//==================================================================
procedure TFormDailyReport.ButtonCalView3Click(Sender: TObject);
begin
  dateFlag := 3;
  seldate:=ifempty(editdate2.Text,datetostr(now));
  Calendar_view(3,ButtonCalView3.Left,ButtonCalView3.Top);
  Radio_Init;
end;

//==================================================================
// Name      : Calendar_View
// Desc      :   Calendar view
//==================================================================
Procedure TFormDailyReport.Calendar_View(Index,x,y: integer);

begin
  //SelDate:='';
  with TMonthCalendar.Create(nil) do begin //CLDr do begin
    Left   := x + 10;
    Top    := y + 30;
    Height := 170;
    Width  := 230;
    Name   := 'MonthCalendar71';
    OnDblClick := CalDblClick;
    case Index  of
     1: Parent := Panel1; //Self;
     2: Parent := Panel2;
     3: Parent := Panel2;
    end;
    date   := strtodate(ifempty(selDate,datetostr(now)));
  end;

  {
  with TButton.Create(nil) do begin
    Parent := Self;
    Height := 25;
    Width := 37;
    Left := x + 10 + 230 - 40 ;
    Top := TMonthCalendar.Create(nil).Top + 170 +20;
    Name := 'Button71';
    Caption := '취소';
    OnClick := BtnClick;
  end;}

end;

//==================================================================
// Name      : CalDblClick
// Desc      : 동적으로 생성된 달력 날짜 선택시 처리
//==================================================================
procedure TFormDailyReport.CalDblClick(Sender : TObject);
var
  aDate   : AnsiString;
begin
    //showmessage(' Calendar DblClick !!');
  aDate   := DateToStr((sender as tMonthcalendar).Date);
  if (length(adate))=0 then   SelDate := DateToStr(NOW)
                       else   SelDate := aDate;
  case dateFlag of
   1: begin
        DateDisplay(SelDate);
      end;
   2: begin
        editDate1.Text := selDate;
      end;
   3: begin
        editDate2.Text := selDate;
      end;
  end;
  ObjFree(sender);
  dateFlag :=0;
end;

//==================================================================
// Name      : ObjFree(Sender : TObject)
// Desc      : 동적으로 생성된 달력 날짜 객체 지우기
//==================================================================
procedure TFormDailyReport.ObjFree(Sender : TObject);
begin
  (sender as tMonthcalendar).Free;
  (sender as tMonthcalendar).Visible :=False;
end;

//==================================================================
// Name      : DateView(dDate:TDateTime): ansistring
// Desc      : 날짜형을 년 월 일 요일로 표시
//==================================================================
procedure TFormDailyReport.DateDisplay(var dDate:ansistring);
var
  yy,mm,dd,ww : ansistring;

  begin
  yy:=ansiMidStr(dDate,1,4);
  mm:=ansiMidStr(dDate,6,2);
  dd:=ansiMidStr(dDate,9,2);
  ww:= days[DayOfWeek(StrToDate(dDate))];
  labelYear.Caption     := yy + ' 년';
  labelMonth.Caption    := mm + ' 월 ';
  labelDay.Caption      := dd + ' 일 ';
  labelweek.Caption     := ww + '요일 일계표' ;
end;

//==================================================================
// Name      : RadioDate1Click
// Desc      :   1 개월
//==================================================================
procedure TFormDailyReport.RadioDate1Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate1.Text) then Index:=20
                           else Index:=10;
  if bNULL(editDate2.Text) then Index:=Index+2
                           else Index:=Index+1;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncMonth(Date1),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncMonth(Date1),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate2.Text);
      editDate1.Text := DateToStr(incday(IncMonth(Date1,-1),1));
    end;
   22: begin // X X
      date1:=now();
      editDate1.Text := DateToStr(incday(IncMonth(Date1,-1),1));
      editDate2.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;
end;
//==================================================================
// Name      : RadioDate1Click
// Desc      :   3 개월
//==================================================================
procedure TFormDailyReport.RadioDate2Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate1.Text) then Index:=10
                           else Index:=20;
  if bNULL(editDate2.Text) then Index:=Index+1
                           else Index:=Index+2;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncMonth(Date1,3),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncMonth(Date1,3),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate2.Text);
      editDate1.Text := DateToStr(incday(IncMonth(Date1,-3),1));
    end;
   22: begin // X X
      date1:=now();
      editDate1.Text := DateToStr(incday(IncMonth(Date1,-3),1));
      editDate2.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;
end;
//==================================================================
// Name      : RadioDate1Click
// Desc      :   6 개월
//==================================================================
procedure TFormDailyReport.RadioDate3Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate1.Text) then Index:=10
                           else Index:=20;
  if bNULL(editDate2.Text) then Index:=Index+1
                           else Index:=Index+2;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncMonth(Date1,6),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncMonth(Date1,6),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate2.Text);
      editDate1.Text := DateToStr( incDay(IncMonth(Date1,-6),1) );
    end;
   22: begin // X X
      date1:=now();
      editDate1.Text := DateToStr( incDay(IncMonth(Date1,-6),1) );
      editDate2.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;
end;
//==================================================================
// Name      : RadioDate1Click
// Desc      :   12 개월  (1 년 )
//==================================================================
procedure TFormDailyReport.RadioDate4Click(Sender: TObject);
var
  Index : Integer;
  Date1 : TDateTime;

begin
  if bNULL(editDate1.Text) then Index:=10
                           else Index:=20;
  if bNULL(editDate2.Text) then Index:=Index+1
                           else Index:=Index+2;
  case Index of
   11: begin // O O
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncYear(Date1),-1) );
    end;
   12: begin // O X
      date1:=StrtoDate(editDate1.Text);
      editDate2.Text := DateToStr( incDay(IncYear(Date1),-1) );
    end;
   21: begin // X O
      date1:=StrtoDate(editDate2.Text);
      editDate1.Text := DateToStr(incday(IncYear(Date1,-1),1));
    end;
   22: begin // X X
      date1:=now();
      editDate1.Text := DateToStr(incday(IncYear(Date1,-1),1));
      editDate2.Text := DateToStr(date1);
    end;
  end;
  //Radio_Init;
end;


//==================================================================
// Name      : Text_Init
// Desc      : 텍스트 박스 초기화
//==================================================================
Procedure TFormDailyReport.Text_Init(Index : Integer);
begin
  case Index of
   1 : begin    // ------------------------ tab 1
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
   end;
   2 : begin   //---------------------- tab 2      //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
          EditDate1.Text:='';
          EditDate2.Text:='';
          Edit13.Text:='';
   end;
   3 : begin   //--------------------  tab 3
          edit11.Text :='';
          edit12.Text :='';
          memo1.Text  :='';
   end;
  end;
end;

//==================================================================
// Name      : Radio_Init
// Desc      : 라디오 체크 초기화
//==================================================================
procedure TFormDailyReport.Radio_Init;
begin
  RadioDate1.Checked:=False; // 1개월
  RadioDate2.Checked:=False; // 3개월
  RadioDate3.Checked:=False; // 6개월
  RadioDate4.Checked:=False; // 1년

end;


//==================================================================
// Name      : Grid_Init
// Desc      : 그리드 초기화
//==================================================================
procedure TFormDailyReport.Grid_Init(Index : Integer);
begin
  case index of
   1: begin
          with NiceGrid1 do begin    // NiceGrid1 제목 디자인
          BeginUpdate; // -------- Start
          headerline:=1;
          AutoAddRow:=True;
          colcount:=9;
          ShowFooter:=True;               FooterFont.Style :=[fsBold];
          //--------------------------------------------------------
          columns[0].Title:='No';         columns[0].Width:=20;
            columns[0].HorzAlign:=haCenter;
          columns[1].Title:='차 종';      columns[1].Width:=120;
          columns[2].Title:='차량번호';   columns[2].Width:=80;
          columns[3].Title:='내   용';    columns[3].Width:=150;
          columns[4].Title:='(청구액)';   columns[4].Width:=78;
            columns[4].HorzAlign:=haRight;
          columns[5].Title:='입금액';     columns[5].Width:=78;
            columns[5].HorzAlign:=haRight;
            columns[5].Color:=$00F0F0FF;
          columns[6].Title:='지급율';     columns[6].Width:=40;
            columns[6].HorzAlign:=haRight;
          columns[7].Title:='출금액';     columns[7].Width:=78;
            columns[7].HorzAlign:=haRight;
            columns[7].Color:=$00FFFAF4;
          columns[8].Title:= '비고';      columns[8].Width:=80;
          //------------------------------------------------------
          Columns[0].Footer:='계';
          EndUpdate; // -------- End
        end;
        nicegrid1.RowCount:=40;
        Nicegrid1.GutterKind:=gkNumber;
        // test  line

        nicegrid1[0,1]:='01';
        nicegrid1[1,1]:='그랜드스타렉스12인';
        nicegrid1[2,1]:='경기12하9876';
        nicegrid1[3,1]:='보험 - 테스트 라인임..';
        nicegrid1[4,1]:='99,000,000';
        nicegrid1[5,1]:='98,500,000';
        nicegrid1[6,1]:='89.65';
        nicegrid1[7,1]:='99,999,999';
        nicegrid1[8,1]:='테스트 라인';

        nicegrid1.Columns[0].Footer:='계';
   end;
   2: begin

   end;
   3: begin
        with NiceGrid3 do begin    // NiceGrid3 제목 디자인
          BeginUpdate; // -------- Start
          headerline:=1;
          colcount:=3;
          ShowFooter:=False;
          //--------------------------------------------------------
          columns[0].Title:='ID';         columns[0].Width:=60;
            columns[0].HorzAlign:=haCenter;
          columns[1].Title:='계정과목';   columns[1].Width:=150;
            columns[1].HorzAlign:=haCenter;
          columns[2].Title:='비고';       columns[2].Width:=450;
            //columns[2].HorzAlign:=haCenter;
          EndUpdate; // -------- End
        end;
        nicegrid3.RowCount:=40;
        Nicegrid3.GutterKind:=gkNumber;
        // test line
        NiceGrid3[0,1]:='10001';
        NiceGrid3[1,1]:='계정이름 테스트용';
        NiceGrid3[2,1]:='연습용 비고 라인...';
   end;
  end;



end;


//==================================================================
// Name      : ButtonDailyEndClick
// Desc      :   종료  close
//==================================================================
procedure TFormDailyReport.ButtonDailyEndClick(Sender: TObject);
begin
  close;
end;

end.
