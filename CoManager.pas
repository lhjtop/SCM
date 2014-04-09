unit CoManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, ClipBrd,
  LhjModule, DB, ADODB;

type
  TFormCoManager = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
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
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    Edit11: TEdit;
    Edit8: TEdit;
    Edit3: TEdit;
    Edit10: TEdit;
    Panel2: TPanel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label19: TLabel;
    Label36: TLabel;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox1: TGroupBox;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    MaskEdit11: TMaskEdit;
    MaskEdit12: TMaskEdit;
    MaskEdit13: TMaskEdit;
    GroupBox2: TGroupBox;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Panel3: TPanel;
    Label22: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label35: TLabel;
    Label39: TLabel;
    Image3: TImage;
    Label38: TLabel;
    Image4: TImage;
    Image5: TImage;
    Label37: TLabel;
    Label34: TLabel;
    Image6: TImage;
    Memo1: TMemo;
    Label33: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    procedure FormActivate(Sender: TObject);
    Procedure Text_Init_1;  // 텍스트 초기화
    Procedure Text_Init_2;  // 텍스트 초기화
    Procedure Text_Init_3;  // 텍스트 초기화
    procedure Button2Click(Sender: TObject);
    Procedure DB_Read;
    procedure Button1Click(Sender: TObject);  // DB 내용을 읽어옴
    Procedure DB_Insert;
    Procedure DB_Update;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCoManager: TFormCoManager;
  EditFlag : Boolean;

implementation

{$R *.dfm}

type
  TCoInfo= Record
    회사명          : Ansistring;
    사업자번호      : Ansistring;
    종사업자번호    : Ansistring;
    대표전화        : Ansistring;
    팩스번호        : Ansistring;
    창업일          : Ansistring;
    정비업번호      : Ansistring;
    업태            : Ansistring;
    업종            : Ansistring;
    대표자          : Ansistring;
    대표자전화      : Ansistring;
    회사이메일      : Ansistring;
    홈페이지        : Ansistring;
    회사주소        : Ansistring;
    우편번호        : Ansistring;
    정비책임자      : Ansistring;
    환경관리자      : Ansistring;
    회사로고        : Ansistring;
    회사직인        : Ansistring;
    대표자직인      : Ansistring;
    정비책임자직인  : Ansistring;
    환경관리자직인  : Ansistring;
    공장장직인      : Ansistring;
    가열건조비      : Double;
    탈부착공임      : Double;
    판금공임        : Double;
    도장공임        : Double;
    부분판금도장율  : Double;
    수입차판금공임  : Double;
    수입차도장공임  : Double;
    교환1코트       : Double;
    판금1코트       : Double;
    교환2코트       : Double;
    판금2코트       : Double;
    교환2불소       : Double;
    판금2불소       : Double;
    교환3코트       : Double;
    판금3코트       : Double;
    교환3불소       : Double;
    판금3불소       : Double;
    비고            : Ansistring;

end;

var
  CoInfomation : TcoInfo;

//==================================================================
// Name      : Button1Click
// Desc      : Save
//==================================================================
procedure TFormCoManager.Button1Click(Sender: TObject);
var
  sSql  : AnsiString;

begin

  sSql:='SELECT * From 회사정보;';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(sSql);
  ADOQuery1.Active:=True;
  if ADOQuery1.Eof then
   begin
    ADOQuery1.Active:=False;
    DB_Insert;
   end else
   begin
    ADOQuery1.Active:=False;
    DB_Update;
  end;


end;

//==================================================================
// Name      : Button2Click
// Desc      : Cancel
//==================================================================
procedure TFormCoManager.Button2Click(Sender: TObject);
var
  yn1 : integer;

begin
  yn1:=0;
  if EditFlag=True then begin
    yn1:=MessageDlg('수정내용이 있습니다. 수정내용을 저장하지않고 닫을까요?',
         mtInformation,mbYesNo , 0); //yes버튼 : 6 , no버튼 : 7 , cancel버튼 : 2
  end;
  if (yn1=0) or (yn1=6) then     close;
end;


//==================================================================
// Name      : FormActivate
// Desc      : 폼 로드시 초기화
//==================================================================
procedure TFormCoManager.FormActivate(Sender: TObject);
begin
  // 초기화
  Text_Init_1;
  Text_Init_2;
  Text_Init_3;
  EditFlag:=False;
  DB_Read;

end;


procedure TFormCoManager.FormShow(Sender: TObject);
begin
   PageControl1.Tabindex:=0;
end;

//==================================================================
// Name      : DB_Read
// Desc      :  DB 정보 읽어오기
//==================================================================
Procedure TFormCoManager.DB_Read;
var
  sSql  : AnsiString;

begin
  sSql:='SELECT * From 회사정보;';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(sSql);
  ADOQuery1.Active:=True;
  with ADOQuery1.Recordset.Fields do
     begin
      if Item[0].Value=Null then Edit1.Text:=''
          else Edit1.Text:=  VarToStr(Item[0].Value); // 회사명
      if Item[1].Value=Null then MaskEdit1.Text:=''
          else MaskEdit1.Text:=  VarToStr(Item[1].Value); // 사업자번호
      if Item[2].Value=Null then Edit2.Text:=''
          else Edit2.Text:=  VarToStr(Item[2].Value); //  종사업자번호
      if Item[3].Value=Null then MaskEdit2.Text:=''
          else MaskEdit2.Text:=  VarToStr(Item[3].Value); // 대표전화
      if Item[4].Value=Null then MaskEdit3.Text:=''
          else MaskEdit3.Text:=  VarToStr(Item[4].Value); // 팩스번호
      if Item[5].Value=Null then Edit5.Text:=''
          else Edit5.Text:=  VarToStr(Item[5].Value); //창업일
      if Item[6].Value=Null then MaskEdit4.Text:=''
          else MaskEdit4.Text:=  VarToStr(Item[6].Value); //정비업번호
      if Item[7].Value=Null then Edit6.Text:=''
          else Edit6.Text:=  VarToStr(Item[7].Value); //업태
      if Item[8].Value=Null then Edit7.Text:=''
          else Edit7.Text:=  VarToStr(Item[8].Value); //업종
      if Item[9].Value=Null then Edit4.Text:=''
          else Edit4.Text:=  VarToStr(Item[9].Value); //대표자
      if Item[10].Value=Null then MaskEdit5.Text:=''
          else MaskEdit5.Text:=  VarToStr(Item[10].Value); //대표자전화
      if Item[11].Value=Null then Edit3.Text:=''
          else Edit3.Text:=  VarToStr(Item[11].Value); //회사이메일
      if Item[12].Value=Null then Edit10.Text:=''
          else Edit10.Text:=  VarToStr(Item[12].Value); //홈페이지
      if Item[13].Value=Null then Edit11.Text:=''
          else Edit11.Text:=  VarToStr(Item[13].Value); //회사주소
      if Item[14].Value=Null then MaskEdit6.Text:=''
          else MaskEdit6.Text:=  VarToStr(Item[14].Value); //우편번호
      if Item[15].Value=Null then Edit8.Text:=''
          else Edit8.Text:=  VarToStr(Item[15].Value); //정비책임자
      if Item[16].Value=Null then Edit9.Text:=''
          else Edit9.Text:=  VarToStr(Item[16].Value); //환경관리자
      if Item[17].Value=Null then Edit22.Text:=''
          else Edit22.Text:=  VarToStr(Item[17].Value); //회사로고
      if Item[18].Value=Null then Edit23.Text:=''
          else Edit23.Text:=  VarToStr(Item[18].Value); //회사직인
      if Item[19].Value=Null then Edit24.Text:=''
          else Edit24.Text:=  VarToStr(Item[19].Value); //대표자직인
      if Item[20].Value=Null then Edit25.Text:=''
          else Edit25.Text:=  VarToStr(Item[20].Value); //정비책임자직인
      if Item[21].Value=Null then Edit26.Text:=''
          else Edit26.Text:=  VarToStr(Item[21].Value); //환경관리자직인
      if Item[22].Value=Null then Edit27.Text:=''
          else Edit27.Text:=  VarToStr(Item[22].Value); //공장장직인
      if Item[23].Value=Null then MaskEdit13.Text:=''
          else MaskEdit13.Text:=  VarToStr(Item[23].Value); //가열건조비
      if Item[24].Value=Null then MaskEdit7.Text:=''
          else MaskEdit7.Text:=  VarToStr(Item[24].Value); //탈부착공임
      if Item[25].Value=Null then MaskEdit8.Text:=''
          else MaskEdit8.Text:=  VarToStr(Item[25].Value); //판금공임
      if Item[26].Value=Null then MaskEdit9.Text:=''
          else MaskEdit9.Text:=  VarToStr(Item[26].Value); //도장공임
      if Item[27].Value=Null then MaskEdit10.Text:=''
          else MaskEdit10.Text:=  VarToStr(Item[27].Value); //부분판금도장율
      if Item[28].Value=Null then MaskEdit11.Text:=''
          else MaskEdit11.Text:=  VarToStr(Item[28].Value); //수입차판금공임
      if Item[29].Value=Null then MaskEdit12.Text:=''
          else MaskEdit12.Text:=  VarToStr(Item[29].Value); // 수입차도장공임
      if Item[30].Value=Null then Edit12.Text:=''
          else Edit12.Text:=  VarToStr(Item[30].Value); // 교환1코트
      if Item[31].Value=Null then Edit13.Text:=''
          else Edit13.Text:=  VarToStr(Item[31].Value); // 판금1코트
      if Item[32].Value=Null then Edit14.Text:=''
          else Edit14.Text:=  VarToStr(Item[32].Value); // 교환2코트
      if Item[33].Value=Null then Edit15.Text:=''
          else Edit15.Text:=  VarToStr(Item[33].Value); // 판금2코트
      if Item[34].Value=Null then Edit16.Text:=''
          else Edit16.Text:=  VarToStr(Item[34].Value); // 교환2불소
      if Item[35].Value=Null then Edit17.Text:=''
          else Edit17.Text:=  VarToStr(Item[35].Value); // 판금2불소
      if Item[36].Value=Null then Edit18.Text:=''
          else Edit18.Text:=  VarToStr(Item[36].Value); // 교환3코트
      if Item[37].Value=Null then Edit19.Text:=''
          else Edit19.Text:=  VarToStr(Item[37].Value); // 판금3코트
      if Item[38].Value=Null then Edit20.Text:=''
          else Edit20.Text:=  VarToStr(Item[38].Value); // 교환3불소
      if Item[39].Value=Null then Edit21.Text:=''
          else Edit21.Text:=  VarToStr(Item[39].Value); // 판금3불소
      if Item[40].Value=Null then Memo1.Text:=''
          else Memo1.Text:=  VarToStr(Item[40].Value); // 비고
     end;
     ADOQuery1.Active:=False;
end;



//==================================================================
// Name      : DB_Insert
// Desc      :  DB Save - Insert
//==================================================================
Procedure TFormCoManager.DB_Insert;
var
  sSql   : AnsiString;
  sValues : AnsiString;
begin
  sValues:='';
  sValues := sValues+ MQ + VarToStr(Edit1.Text) + MQ;    // 회사명
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit1.Text) + MQ; // 사업자번호
  sValues := sValues+ ', ' + MQ + VarToStr(Edit2.Text) + MQ;     //  종사업자번호
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit2.Text) + MQ; // 대표전화
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit3.Text) + MQ;  // 팩스번호
  sValues := sValues+ ', #'     + VarToStr(Edit5.Text) + '#';     //창업일
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit4.Text) + MQ;  //정비업번호
  sValues := sValues+ ', ' + MQ + VarToStr(Edit6.Text) + MQ;     //업태
  sValues := sValues+ ', ' + MQ + VarToStr(Edit7.Text) + MQ;     //업종
  sValues := sValues+ ', ' + MQ + VarToStr(Edit4.Text) + MQ;     //대표자
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit5.Text) + MQ; //대표자전화
  sValues := sValues+ ', ' + MQ + VarToStr(Edit3.Text) + MQ;      //회사이메일
  sValues := sValues+ ', ' + MQ + VarToStr(Edit10.Text) + MQ;    //홈페이지
  sValues := sValues+ ', ' + MQ + VarToStr(Edit11.Text) + MQ;     //회사주소
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit6.Text) + MQ; //우편번호
  sValues := sValues+ ', ' + MQ + VarToStr(Edit8.Text) + MQ;   //정비책임자
  sValues := sValues+ ', ' + MQ + VarToStr(Edit9.Text) + MQ;   //환경관리자
  sValues := sValues+ ', ' + MQ + VarToStr(Edit22.Text) + MQ; //회사로고
  sValues := sValues+ ', ' + MQ + VarToStr(Edit23.Text) + MQ; //회사직인
  sValues := sValues+ ', ' + MQ + VarToStr(Edit24.Text) + MQ; //대표자직인
  sValues := sValues+ ', ' + MQ + VarToStr(Edit25.Text) + MQ; //정비책임자직인
  sValues := sValues+ ', ' + MQ + VarToStr(Edit26.Text) + MQ; //환경관리자직인
  sValues := sValues+ ', ' + MQ + VarToStr(Edit27.Text) + MQ; //공장장직인
  sValues := sValues + ', ' +     VarToStr(MaskEdit13.Text) ;  //가열건조비
  sValues := sValues + ', ' +     VarToStr(MaskEdit7.Text) ;  //탈부착공임
  sValues := sValues + ', ' +     VarToStr(MaskEdit8.Text) ;  //판금공임
  sValues := sValues + ', ' +     VarToStr(MaskEdit9.Text) ;  //도장공임
  sValues := sValues + ', ' +     VarToStr(MaskEdit10.Text) ;  //부분판금도장율
  sValues := sValues + ', ' +     VarToStr(MaskEdit11.Text) ;  //수입차판금공임
  sValues := sValues + ', ' +     VarToStr(MaskEdit12.Text) ;  // 수입차도장공임
  sValues := sValues + ', ' +     VarToStr(Edit12.Text) ;    // 교환1코트
  sValues := sValues + ', ' +     VarToStr(Edit13.Text) ;    // 판금1코트
  sValues := sValues + ', ' +     VarToStr(Edit14.Text) ;    // 교환2코트
  sValues := sValues + ', ' +     VarToStr(Edit15.Text) ;    // 판금2코트
  sValues := sValues + ', ' +     VarToStr(Edit16.Text) ;    // 교환2불소
  sValues := sValues + ', ' +     VarToStr(Edit17.Text) ;    // 판금2불소
  sValues := sValues + ', ' +     VarToStr(Edit18.Text) ;    // 교환3코트
  sValues := sValues + ', ' +     VarToStr(Edit19.Text) ;    // 판금3코트
  sValues := sValues + ', ' +     VarToStr(Edit20.Text) ;    // 교환3불소
  sValues := sValues + ', ' +     VarToStr(Edit21.Text) ;    // 판금3불소
  sValues := sValues+ ', ' + MQ + VarToStr(Memo1.Text) + MQ ;    // 비고

  Ssql:='INSERT INTO 회사정보 ' +
           '( 회사명, 사업자번호, 종사업자번호 ,대표전화 ,팩스번호 , ' +
           '창업일 , 정비업번호 ,업태 ,업종 ,대표자 ,대표자전화 ,' +
           '회사이메일 ,홈페이지 ,회사주소 ,우편번호 ,정비책임자 , ' +
           '환경관리자 ,회사로고 ,회사직인 ,대표자직인 ,정비책임자직인 , ' +
           '환경관리자직인 ,공장장직인 ,가열건조비 ,탈부착공임 ,판금공임 , ' +
           '도장공임 ,부분판금도장율 ,수입차판금공임 ,수입차도장공임 , ' +
           '교환1코트 ,판금1코트 ,교환2코트 ,판금2코트 ,교환2불소 , ' +
           '판금2불소 ,교환3코트 ,판금3코트 ,교환3불소 ,판금3불소 ,비고 )' +
      ' Values ( ' +  sValues + ' );';

  clipboard.AsText:=ssql;  ///////////////////////////////////////////////////////////

  try
    ADOConnection1.BeginTrans;                     //트랜젝션 시작
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(sSql);
  except
        ADOConnection1.RollbackTrans;             //트랜젝션 롤백
        ADOQuery1.Active:=False; // 예외 처리
  end;
  ADOQuery1.ExecSQL;
  ADOConnection1.CommitTrans;                    //트랜젝션 적용
  ADOQuery1.Active:=False;
  ShowMessage (' 저장이 완료 되었습니다 ');

end;

//==================================================================
// Name      : DB_Update
// Desc      :  DB Save - Update
//==================================================================
Procedure TFormCoManager.DB_Update;
var
  sSql   : AnsiString;

begin

   sSql := 'UPDATE 회사정보 SET ' +
    '회사명       = ' + MQ + VarToStr (Edit1.Text) + MQ + ', ' +   // 회사명
   '사업자번호    = ' + MQ + VarToStr (MaskEdit1.Text) + MQ + ', ' + //사업자번호
   '종사업자번호  = ' + MQ + VarToStr (Edit2.Text) + MQ + ', ' +  //종사업자번호
   '대표전화      = ' + MQ + VarToStr (MaskEdit2.Text) + MQ + ', ' + // 대표전화
   '팩스번호      = ' + MQ + VarToStr (MaskEdit3.Text) + MQ + ', ' +  // 팩스번호
   '창업일        = ' + '#'+ VarToStr (Edit5.Text) + '# , ' +      //창업일
   '정비업번호    = ' + MQ + VarToStr (MaskEdit4.Text) + MQ + ', ' +  //정비업번호
   '업태          = ' + MQ + VarToStr (Edit6.Text) + MQ + ', ' +     //업태
   '업종          = ' + MQ + VarToStr (Edit7.Text) + MQ + ', ' +     //업종
   '대표자        = ' + MQ + VarToStr (Edit4.Text) + MQ + ', ' +     //대표자
   '대표자전화    = ' + MQ + VarToStr (MaskEdit5.Text) + MQ + ', ' + //대표자전화
  '회사이메일     = ' + MQ + VarToStr (Edit3.Text) + MQ + ', ' +      //회사이메일
  '홈페이지       = ' + MQ + VarToStr (Edit10.Text) + MQ + ', ' +    //홈페이지
  '회사주소       = ' + MQ + VarToStr (Edit11.Text) + MQ + ', ' +     //회사주소
  '우편번호       = ' + MQ + VarToStr (MaskEdit6.Text) + MQ + ', ' + //우편번호
  '정비책임자     = ' + MQ + VarToStr (Edit8.Text) + MQ + ', ' +   //정비책임자
  '환경관리자     = ' + MQ + VarToStr (Edit9.Text) + MQ + ', ' +   //환경관리자
  '회사로고       = ' + MQ + VarToStr (Edit22.Text) + MQ + ', ' + //회사로고
  '회사직인       = ' + MQ + VarToStr (Edit23.Text) + MQ + ', ' + //회사직인
  '대표자직인     = ' + MQ + VarToStr (Edit24.Text) + MQ + ', ' + //대표자직인
  '정비책임자직인 = ' + MQ + VarToStr (Edit25.Text) + MQ + ', ' + //정비책임자직인
  '환경관리자직인 = ' + MQ + VarToStr (Edit26.Text) + MQ + ', ' + //환경관리자직인
  '공장장직인     = ' + MQ + VarToStr (Edit27.Text) + MQ + ', ' + //공장장직인
  '가열건조비     = ' + IFEmpty(VarToStr(MaskEdit13.Text),'0') + ', ' + //가열건조비
  '탈부착공임     = ' + IFEmpty(VarToStr(MaskEdit7.Text) ,'0') + ', ' + //탈부착공임
  '판금공임       = ' + IFEmpty(VarToStr(MaskEdit8.Text) ,'0') + ', ' + //판금공임
  '도장공임       = ' + IFEmpty(VarToStr(MaskEdit9.Text) ,'0') + ', ' + //도장공임
  '부분판금도장율 = ' + IFEmpty(VarToStr(MaskEdit10.Text),'0') + ', ' + //부분판금도장율
  '수입차판금공임 = ' + IFEmpty(VarToStr(MaskEdit11.Text),'0') + ', ' + //수입차판금공임
  '수입차도장공임 = ' + IFEmpty(VarToStr(MaskEdit12.Text),'0') + ', ' + // 수입차도장공임
  '교환1코트      = ' + IFEmpty(VarToStr(Edit12.Text),'0') + ', ' + // 교환1코트
  '판금1코트      = ' + IFEmpty(VarToStr(Edit13.Text),'0') + ', ' + // 판금1코트
  '교환2코트      = ' + IFEmpty(VarToStr(Edit14.Text),'0') + ', ' + // 교환2코트
  '판금2코트      = ' + IFEmpty(VarToStr(Edit15.Text),'0') + ', ' + // 판금2코트
  '교환2불소      = ' + IFEmpty(VarToStr(Edit16.Text),'0') + ', ' + // 교환2불소
  '판금2불소      = ' + IFEmpty(VarToStr(Edit17.Text),'0') + ', ' + // 판금2불소
  '교환3코트      = ' + IFEmpty(VarToStr(Edit18.Text),'0') + ', ' + // 교환3코트
  '판금3코트      = ' + IFEmpty(VarToStr(Edit19.Text),'0') + ', ' + // 판금3코트
  '교환3불소      = ' + IFEmpty(VarToStr(Edit20.Text),'0') + ', ' + // 교환3불소
  '판금3불소      = ' + IFEmpty(VarToStr(Edit21.Text),'0') + ', ' + // 판금3불소
  '비고           = ' + MQ + VarToStr (Memo1.Text) + MQ + ' ' +   // 비고
  ' Where 회사명  = ' + MQ + VarToStr (Edit1.Text) + MQ + ' ; ';

    clipboard.AsText:=ssql;  ///////////////////////////////////////////////////////////


  try
    try
      ADOConnection1.BeginTrans;                     //트랜젝션 시작
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text:=(sSql);
   except
        ADOConnection1.RollbackTrans;             //트랜젝션 롤백
        ADOQuery1.Active:=False; // 예외 처리
    end;
  finally
    ADOQuery1.Active:=False; // 예외 처리

  end;
  ADOQuery1.ExecSQL;
  ADOConnection1.CommitTrans;                    //트랜젝션 적용
  ADOQuery1.Active:=False;
  ShowMessage (' 저장이 완료 되었습니다 ');

end;

//==================================================================
// Name      : Text_Init_1
// Desc      : 첫번째 탭 초기화 - 기초 정보
//==================================================================
Procedure TFormCoManager.Text_Init_1;
begin
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
    Edit11.Text:='';
    MaskEdit1.Text:='';
    MaskEdit2.Text:='';
    MaskEdit3.Text:='';
    MaskEdit4.Text:='';
    MaskEdit5.Text:='';
    MaskEdit6.Text:='';


end;
//==================================================================
// Name      : Text_Init_2
// Desc      : 첫번째 탭 초기화 - 추가 정보
//==================================================================
Procedure TFormCoManager.Text_Init_2;
begin
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
    Edit11.Text:='';
    MaskEdit1.Text:='';
    MaskEdit2.Text:='';
    MaskEdit3.Text:='';
    MaskEdit4.Text:='';
    MaskEdit5.Text:='';
    MaskEdit6.Text:='';

    Edit22.Text:='';
    Edit23.Text:='';
    Edit24.Text:='';
    Edit25.Text:='';
    Edit26.Text:='';
    Edit27.Text:='';

end;
//==================================================================
// Name      : Text_Init_3
// Desc      : 첫번째 탭 초기화 - 공임 정보
//==================================================================
Procedure TFormCoManager.Text_Init_3;
begin
    Edit12.Text:='';
    Edit13.Text:='';
    Edit14.Text:='';
    Edit15.Text:='';
    Edit16.Text:='';
    Edit17.Text:='';
    Edit18.Text:='';
    Edit19.Text:='';
    Edit20.Text:='';
    Edit21.Text:='';
    MaskEdit7.Text:='';
    MaskEdit8.Text:='';
    MaskEdit9.Text:='';
    MaskEdit10.Text:='';
    MaskEdit11.Text:='';
    MaskEdit12.Text:='';
    MaskEdit13.Text:='';
    Memo1.Text:='';

end;




end.
