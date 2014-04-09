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
    Procedure Text_Init_1;  // �ؽ�Ʈ �ʱ�ȭ
    Procedure Text_Init_2;  // �ؽ�Ʈ �ʱ�ȭ
    Procedure Text_Init_3;  // �ؽ�Ʈ �ʱ�ȭ
    procedure Button2Click(Sender: TObject);
    Procedure DB_Read;
    procedure Button1Click(Sender: TObject);  // DB ������ �о��
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
    ȸ���          : Ansistring;
    ����ڹ�ȣ      : Ansistring;
    ������ڹ�ȣ    : Ansistring;
    ��ǥ��ȭ        : Ansistring;
    �ѽ���ȣ        : Ansistring;
    â����          : Ansistring;
    �������ȣ      : Ansistring;
    ����            : Ansistring;
    ����            : Ansistring;
    ��ǥ��          : Ansistring;
    ��ǥ����ȭ      : Ansistring;
    ȸ���̸���      : Ansistring;
    Ȩ������        : Ansistring;
    ȸ���ּ�        : Ansistring;
    ������ȣ        : Ansistring;
    ����å����      : Ansistring;
    ȯ�������      : Ansistring;
    ȸ��ΰ�        : Ansistring;
    ȸ������        : Ansistring;
    ��ǥ������      : Ansistring;
    ����å��������  : Ansistring;
    ȯ�����������  : Ansistring;
    ����������      : Ansistring;
    ����������      : Double;
    Ż��������      : Double;
    �Ǳݰ���        : Double;
    �������        : Double;
    �κ��Ǳݵ�����  : Double;
    �������Ǳݰ���  : Double;
    �������������  : Double;
    ��ȯ1��Ʈ       : Double;
    �Ǳ�1��Ʈ       : Double;
    ��ȯ2��Ʈ       : Double;
    �Ǳ�2��Ʈ       : Double;
    ��ȯ2�Ҽ�       : Double;
    �Ǳ�2�Ҽ�       : Double;
    ��ȯ3��Ʈ       : Double;
    �Ǳ�3��Ʈ       : Double;
    ��ȯ3�Ҽ�       : Double;
    �Ǳ�3�Ҽ�       : Double;
    ���            : Ansistring;

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

  sSql:='SELECT * From ȸ������;';
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
    yn1:=MessageDlg('���������� �ֽ��ϴ�. ���������� ���������ʰ� �������?',
         mtInformation,mbYesNo , 0); //yes��ư : 6 , no��ư : 7 , cancel��ư : 2
  end;
  if (yn1=0) or (yn1=6) then     close;
end;


//==================================================================
// Name      : FormActivate
// Desc      : �� �ε�� �ʱ�ȭ
//==================================================================
procedure TFormCoManager.FormActivate(Sender: TObject);
begin
  // �ʱ�ȭ
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
// Desc      :  DB ���� �о����
//==================================================================
Procedure TFormCoManager.DB_Read;
var
  sSql  : AnsiString;

begin
  sSql:='SELECT * From ȸ������;';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(sSql);
  ADOQuery1.Active:=True;
  with ADOQuery1.Recordset.Fields do
     begin
      if Item[0].Value=Null then Edit1.Text:=''
          else Edit1.Text:=  VarToStr(Item[0].Value); // ȸ���
      if Item[1].Value=Null then MaskEdit1.Text:=''
          else MaskEdit1.Text:=  VarToStr(Item[1].Value); // ����ڹ�ȣ
      if Item[2].Value=Null then Edit2.Text:=''
          else Edit2.Text:=  VarToStr(Item[2].Value); //  ������ڹ�ȣ
      if Item[3].Value=Null then MaskEdit2.Text:=''
          else MaskEdit2.Text:=  VarToStr(Item[3].Value); // ��ǥ��ȭ
      if Item[4].Value=Null then MaskEdit3.Text:=''
          else MaskEdit3.Text:=  VarToStr(Item[4].Value); // �ѽ���ȣ
      if Item[5].Value=Null then Edit5.Text:=''
          else Edit5.Text:=  VarToStr(Item[5].Value); //â����
      if Item[6].Value=Null then MaskEdit4.Text:=''
          else MaskEdit4.Text:=  VarToStr(Item[6].Value); //�������ȣ
      if Item[7].Value=Null then Edit6.Text:=''
          else Edit6.Text:=  VarToStr(Item[7].Value); //����
      if Item[8].Value=Null then Edit7.Text:=''
          else Edit7.Text:=  VarToStr(Item[8].Value); //����
      if Item[9].Value=Null then Edit4.Text:=''
          else Edit4.Text:=  VarToStr(Item[9].Value); //��ǥ��
      if Item[10].Value=Null then MaskEdit5.Text:=''
          else MaskEdit5.Text:=  VarToStr(Item[10].Value); //��ǥ����ȭ
      if Item[11].Value=Null then Edit3.Text:=''
          else Edit3.Text:=  VarToStr(Item[11].Value); //ȸ���̸���
      if Item[12].Value=Null then Edit10.Text:=''
          else Edit10.Text:=  VarToStr(Item[12].Value); //Ȩ������
      if Item[13].Value=Null then Edit11.Text:=''
          else Edit11.Text:=  VarToStr(Item[13].Value); //ȸ���ּ�
      if Item[14].Value=Null then MaskEdit6.Text:=''
          else MaskEdit6.Text:=  VarToStr(Item[14].Value); //������ȣ
      if Item[15].Value=Null then Edit8.Text:=''
          else Edit8.Text:=  VarToStr(Item[15].Value); //����å����
      if Item[16].Value=Null then Edit9.Text:=''
          else Edit9.Text:=  VarToStr(Item[16].Value); //ȯ�������
      if Item[17].Value=Null then Edit22.Text:=''
          else Edit22.Text:=  VarToStr(Item[17].Value); //ȸ��ΰ�
      if Item[18].Value=Null then Edit23.Text:=''
          else Edit23.Text:=  VarToStr(Item[18].Value); //ȸ������
      if Item[19].Value=Null then Edit24.Text:=''
          else Edit24.Text:=  VarToStr(Item[19].Value); //��ǥ������
      if Item[20].Value=Null then Edit25.Text:=''
          else Edit25.Text:=  VarToStr(Item[20].Value); //����å��������
      if Item[21].Value=Null then Edit26.Text:=''
          else Edit26.Text:=  VarToStr(Item[21].Value); //ȯ�����������
      if Item[22].Value=Null then Edit27.Text:=''
          else Edit27.Text:=  VarToStr(Item[22].Value); //����������
      if Item[23].Value=Null then MaskEdit13.Text:=''
          else MaskEdit13.Text:=  VarToStr(Item[23].Value); //����������
      if Item[24].Value=Null then MaskEdit7.Text:=''
          else MaskEdit7.Text:=  VarToStr(Item[24].Value); //Ż��������
      if Item[25].Value=Null then MaskEdit8.Text:=''
          else MaskEdit8.Text:=  VarToStr(Item[25].Value); //�Ǳݰ���
      if Item[26].Value=Null then MaskEdit9.Text:=''
          else MaskEdit9.Text:=  VarToStr(Item[26].Value); //�������
      if Item[27].Value=Null then MaskEdit10.Text:=''
          else MaskEdit10.Text:=  VarToStr(Item[27].Value); //�κ��Ǳݵ�����
      if Item[28].Value=Null then MaskEdit11.Text:=''
          else MaskEdit11.Text:=  VarToStr(Item[28].Value); //�������Ǳݰ���
      if Item[29].Value=Null then MaskEdit12.Text:=''
          else MaskEdit12.Text:=  VarToStr(Item[29].Value); // �������������
      if Item[30].Value=Null then Edit12.Text:=''
          else Edit12.Text:=  VarToStr(Item[30].Value); // ��ȯ1��Ʈ
      if Item[31].Value=Null then Edit13.Text:=''
          else Edit13.Text:=  VarToStr(Item[31].Value); // �Ǳ�1��Ʈ
      if Item[32].Value=Null then Edit14.Text:=''
          else Edit14.Text:=  VarToStr(Item[32].Value); // ��ȯ2��Ʈ
      if Item[33].Value=Null then Edit15.Text:=''
          else Edit15.Text:=  VarToStr(Item[33].Value); // �Ǳ�2��Ʈ
      if Item[34].Value=Null then Edit16.Text:=''
          else Edit16.Text:=  VarToStr(Item[34].Value); // ��ȯ2�Ҽ�
      if Item[35].Value=Null then Edit17.Text:=''
          else Edit17.Text:=  VarToStr(Item[35].Value); // �Ǳ�2�Ҽ�
      if Item[36].Value=Null then Edit18.Text:=''
          else Edit18.Text:=  VarToStr(Item[36].Value); // ��ȯ3��Ʈ
      if Item[37].Value=Null then Edit19.Text:=''
          else Edit19.Text:=  VarToStr(Item[37].Value); // �Ǳ�3��Ʈ
      if Item[38].Value=Null then Edit20.Text:=''
          else Edit20.Text:=  VarToStr(Item[38].Value); // ��ȯ3�Ҽ�
      if Item[39].Value=Null then Edit21.Text:=''
          else Edit21.Text:=  VarToStr(Item[39].Value); // �Ǳ�3�Ҽ�
      if Item[40].Value=Null then Memo1.Text:=''
          else Memo1.Text:=  VarToStr(Item[40].Value); // ���
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
  sValues := sValues+ MQ + VarToStr(Edit1.Text) + MQ;    // ȸ���
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit1.Text) + MQ; // ����ڹ�ȣ
  sValues := sValues+ ', ' + MQ + VarToStr(Edit2.Text) + MQ;     //  ������ڹ�ȣ
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit2.Text) + MQ; // ��ǥ��ȭ
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit3.Text) + MQ;  // �ѽ���ȣ
  sValues := sValues+ ', #'     + VarToStr(Edit5.Text) + '#';     //â����
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit4.Text) + MQ;  //�������ȣ
  sValues := sValues+ ', ' + MQ + VarToStr(Edit6.Text) + MQ;     //����
  sValues := sValues+ ', ' + MQ + VarToStr(Edit7.Text) + MQ;     //����
  sValues := sValues+ ', ' + MQ + VarToStr(Edit4.Text) + MQ;     //��ǥ��
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit5.Text) + MQ; //��ǥ����ȭ
  sValues := sValues+ ', ' + MQ + VarToStr(Edit3.Text) + MQ;      //ȸ���̸���
  sValues := sValues+ ', ' + MQ + VarToStr(Edit10.Text) + MQ;    //Ȩ������
  sValues := sValues+ ', ' + MQ + VarToStr(Edit11.Text) + MQ;     //ȸ���ּ�
  sValues := sValues+ ', ' + MQ + VarToStr(MaskEdit6.Text) + MQ; //������ȣ
  sValues := sValues+ ', ' + MQ + VarToStr(Edit8.Text) + MQ;   //����å����
  sValues := sValues+ ', ' + MQ + VarToStr(Edit9.Text) + MQ;   //ȯ�������
  sValues := sValues+ ', ' + MQ + VarToStr(Edit22.Text) + MQ; //ȸ��ΰ�
  sValues := sValues+ ', ' + MQ + VarToStr(Edit23.Text) + MQ; //ȸ������
  sValues := sValues+ ', ' + MQ + VarToStr(Edit24.Text) + MQ; //��ǥ������
  sValues := sValues+ ', ' + MQ + VarToStr(Edit25.Text) + MQ; //����å��������
  sValues := sValues+ ', ' + MQ + VarToStr(Edit26.Text) + MQ; //ȯ�����������
  sValues := sValues+ ', ' + MQ + VarToStr(Edit27.Text) + MQ; //����������
  sValues := sValues + ', ' +     VarToStr(MaskEdit13.Text) ;  //����������
  sValues := sValues + ', ' +     VarToStr(MaskEdit7.Text) ;  //Ż��������
  sValues := sValues + ', ' +     VarToStr(MaskEdit8.Text) ;  //�Ǳݰ���
  sValues := sValues + ', ' +     VarToStr(MaskEdit9.Text) ;  //�������
  sValues := sValues + ', ' +     VarToStr(MaskEdit10.Text) ;  //�κ��Ǳݵ�����
  sValues := sValues + ', ' +     VarToStr(MaskEdit11.Text) ;  //�������Ǳݰ���
  sValues := sValues + ', ' +     VarToStr(MaskEdit12.Text) ;  // �������������
  sValues := sValues + ', ' +     VarToStr(Edit12.Text) ;    // ��ȯ1��Ʈ
  sValues := sValues + ', ' +     VarToStr(Edit13.Text) ;    // �Ǳ�1��Ʈ
  sValues := sValues + ', ' +     VarToStr(Edit14.Text) ;    // ��ȯ2��Ʈ
  sValues := sValues + ', ' +     VarToStr(Edit15.Text) ;    // �Ǳ�2��Ʈ
  sValues := sValues + ', ' +     VarToStr(Edit16.Text) ;    // ��ȯ2�Ҽ�
  sValues := sValues + ', ' +     VarToStr(Edit17.Text) ;    // �Ǳ�2�Ҽ�
  sValues := sValues + ', ' +     VarToStr(Edit18.Text) ;    // ��ȯ3��Ʈ
  sValues := sValues + ', ' +     VarToStr(Edit19.Text) ;    // �Ǳ�3��Ʈ
  sValues := sValues + ', ' +     VarToStr(Edit20.Text) ;    // ��ȯ3�Ҽ�
  sValues := sValues + ', ' +     VarToStr(Edit21.Text) ;    // �Ǳ�3�Ҽ�
  sValues := sValues+ ', ' + MQ + VarToStr(Memo1.Text) + MQ ;    // ���

  Ssql:='INSERT INTO ȸ������ ' +
           '( ȸ���, ����ڹ�ȣ, ������ڹ�ȣ ,��ǥ��ȭ ,�ѽ���ȣ , ' +
           'â���� , �������ȣ ,���� ,���� ,��ǥ�� ,��ǥ����ȭ ,' +
           'ȸ���̸��� ,Ȩ������ ,ȸ���ּ� ,������ȣ ,����å���� , ' +
           'ȯ������� ,ȸ��ΰ� ,ȸ������ ,��ǥ������ ,����å�������� , ' +
           'ȯ����������� ,���������� ,���������� ,Ż�������� ,�Ǳݰ��� , ' +
           '������� ,�κ��Ǳݵ����� ,�������Ǳݰ��� ,������������� , ' +
           '��ȯ1��Ʈ ,�Ǳ�1��Ʈ ,��ȯ2��Ʈ ,�Ǳ�2��Ʈ ,��ȯ2�Ҽ� , ' +
           '�Ǳ�2�Ҽ� ,��ȯ3��Ʈ ,�Ǳ�3��Ʈ ,��ȯ3�Ҽ� ,�Ǳ�3�Ҽ� ,��� )' +
      ' Values ( ' +  sValues + ' );';

  clipboard.AsText:=ssql;  ///////////////////////////////////////////////////////////

  try
    ADOConnection1.BeginTrans;                     //Ʈ������ ����
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(sSql);
  except
        ADOConnection1.RollbackTrans;             //Ʈ������ �ѹ�
        ADOQuery1.Active:=False; // ���� ó��
  end;
  ADOQuery1.ExecSQL;
  ADOConnection1.CommitTrans;                    //Ʈ������ ����
  ADOQuery1.Active:=False;
  ShowMessage (' ������ �Ϸ� �Ǿ����ϴ� ');

end;

//==================================================================
// Name      : DB_Update
// Desc      :  DB Save - Update
//==================================================================
Procedure TFormCoManager.DB_Update;
var
  sSql   : AnsiString;

begin

   sSql := 'UPDATE ȸ������ SET ' +
    'ȸ���       = ' + MQ + VarToStr (Edit1.Text) + MQ + ', ' +   // ȸ���
   '����ڹ�ȣ    = ' + MQ + VarToStr (MaskEdit1.Text) + MQ + ', ' + //����ڹ�ȣ
   '������ڹ�ȣ  = ' + MQ + VarToStr (Edit2.Text) + MQ + ', ' +  //������ڹ�ȣ
   '��ǥ��ȭ      = ' + MQ + VarToStr (MaskEdit2.Text) + MQ + ', ' + // ��ǥ��ȭ
   '�ѽ���ȣ      = ' + MQ + VarToStr (MaskEdit3.Text) + MQ + ', ' +  // �ѽ���ȣ
   'â����        = ' + '#'+ VarToStr (Edit5.Text) + '# , ' +      //â����
   '�������ȣ    = ' + MQ + VarToStr (MaskEdit4.Text) + MQ + ', ' +  //�������ȣ
   '����          = ' + MQ + VarToStr (Edit6.Text) + MQ + ', ' +     //����
   '����          = ' + MQ + VarToStr (Edit7.Text) + MQ + ', ' +     //����
   '��ǥ��        = ' + MQ + VarToStr (Edit4.Text) + MQ + ', ' +     //��ǥ��
   '��ǥ����ȭ    = ' + MQ + VarToStr (MaskEdit5.Text) + MQ + ', ' + //��ǥ����ȭ
  'ȸ���̸���     = ' + MQ + VarToStr (Edit3.Text) + MQ + ', ' +      //ȸ���̸���
  'Ȩ������       = ' + MQ + VarToStr (Edit10.Text) + MQ + ', ' +    //Ȩ������
  'ȸ���ּ�       = ' + MQ + VarToStr (Edit11.Text) + MQ + ', ' +     //ȸ���ּ�
  '������ȣ       = ' + MQ + VarToStr (MaskEdit6.Text) + MQ + ', ' + //������ȣ
  '����å����     = ' + MQ + VarToStr (Edit8.Text) + MQ + ', ' +   //����å����
  'ȯ�������     = ' + MQ + VarToStr (Edit9.Text) + MQ + ', ' +   //ȯ�������
  'ȸ��ΰ�       = ' + MQ + VarToStr (Edit22.Text) + MQ + ', ' + //ȸ��ΰ�
  'ȸ������       = ' + MQ + VarToStr (Edit23.Text) + MQ + ', ' + //ȸ������
  '��ǥ������     = ' + MQ + VarToStr (Edit24.Text) + MQ + ', ' + //��ǥ������
  '����å�������� = ' + MQ + VarToStr (Edit25.Text) + MQ + ', ' + //����å��������
  'ȯ����������� = ' + MQ + VarToStr (Edit26.Text) + MQ + ', ' + //ȯ�����������
  '����������     = ' + MQ + VarToStr (Edit27.Text) + MQ + ', ' + //����������
  '����������     = ' + IFEmpty(VarToStr(MaskEdit13.Text),'0') + ', ' + //����������
  'Ż��������     = ' + IFEmpty(VarToStr(MaskEdit7.Text) ,'0') + ', ' + //Ż��������
  '�Ǳݰ���       = ' + IFEmpty(VarToStr(MaskEdit8.Text) ,'0') + ', ' + //�Ǳݰ���
  '�������       = ' + IFEmpty(VarToStr(MaskEdit9.Text) ,'0') + ', ' + //�������
  '�κ��Ǳݵ����� = ' + IFEmpty(VarToStr(MaskEdit10.Text),'0') + ', ' + //�κ��Ǳݵ�����
  '�������Ǳݰ��� = ' + IFEmpty(VarToStr(MaskEdit11.Text),'0') + ', ' + //�������Ǳݰ���
  '������������� = ' + IFEmpty(VarToStr(MaskEdit12.Text),'0') + ', ' + // �������������
  '��ȯ1��Ʈ      = ' + IFEmpty(VarToStr(Edit12.Text),'0') + ', ' + // ��ȯ1��Ʈ
  '�Ǳ�1��Ʈ      = ' + IFEmpty(VarToStr(Edit13.Text),'0') + ', ' + // �Ǳ�1��Ʈ
  '��ȯ2��Ʈ      = ' + IFEmpty(VarToStr(Edit14.Text),'0') + ', ' + // ��ȯ2��Ʈ
  '�Ǳ�2��Ʈ      = ' + IFEmpty(VarToStr(Edit15.Text),'0') + ', ' + // �Ǳ�2��Ʈ
  '��ȯ2�Ҽ�      = ' + IFEmpty(VarToStr(Edit16.Text),'0') + ', ' + // ��ȯ2�Ҽ�
  '�Ǳ�2�Ҽ�      = ' + IFEmpty(VarToStr(Edit17.Text),'0') + ', ' + // �Ǳ�2�Ҽ�
  '��ȯ3��Ʈ      = ' + IFEmpty(VarToStr(Edit18.Text),'0') + ', ' + // ��ȯ3��Ʈ
  '�Ǳ�3��Ʈ      = ' + IFEmpty(VarToStr(Edit19.Text),'0') + ', ' + // �Ǳ�3��Ʈ
  '��ȯ3�Ҽ�      = ' + IFEmpty(VarToStr(Edit20.Text),'0') + ', ' + // ��ȯ3�Ҽ�
  '�Ǳ�3�Ҽ�      = ' + IFEmpty(VarToStr(Edit21.Text),'0') + ', ' + // �Ǳ�3�Ҽ�
  '���           = ' + MQ + VarToStr (Memo1.Text) + MQ + ' ' +   // ���
  ' Where ȸ���  = ' + MQ + VarToStr (Edit1.Text) + MQ + ' ; ';

    clipboard.AsText:=ssql;  ///////////////////////////////////////////////////////////


  try
    try
      ADOConnection1.BeginTrans;                     //Ʈ������ ����
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Text:=(sSql);
   except
        ADOConnection1.RollbackTrans;             //Ʈ������ �ѹ�
        ADOQuery1.Active:=False; // ���� ó��
    end;
  finally
    ADOQuery1.Active:=False; // ���� ó��

  end;
  ADOQuery1.ExecSQL;
  ADOConnection1.CommitTrans;                    //Ʈ������ ����
  ADOQuery1.Active:=False;
  ShowMessage (' ������ �Ϸ� �Ǿ����ϴ� ');

end;

//==================================================================
// Name      : Text_Init_1
// Desc      : ù��° �� �ʱ�ȭ - ���� ����
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
// Desc      : ù��° �� �ʱ�ȭ - �߰� ����
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
// Desc      : ù��° �� �ʱ�ȭ - ���� ����
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