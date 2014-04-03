unit Booth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NiceGrid, ComCtrls, StrUtils, Grids, Outline, DB,
  ADODB;

type
  TFormBooth = class(TForm)
    LabelDate: TLabel;
    MonthCalendar1: TMonthCalendar;
    NiceGrid1: TNiceGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label11: TLabel;
    ButtonClear: TButton;
    ButtonTimeComp: TButton;
    ButtonSave: TButton;
    ButtonDelete: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ButtonClose: TButton;
    procedure FormActivate(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    Function DateView(dDate:TDateTime): ansistring; // ��¥�� ���������κ�ȯ
    procedure Grid_Init; // �׸��� �ʱ�ȭ
    Procedure Text_Init; // �ؽ�Ʈ �ڽ� �ʱ�ȭ
    Procedure Work_Booth(dDate:TDateTime); // �ش����� �ν� ���� ��ȸ
    Procedure YesterDayWork_Booth(dDate:TDateTime);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonDeleteClick(Sender: TObject);   // ���� �ν� ��뷮 ���ϱ�
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  FormBooth: TFormBooth;
  FormSecurity: TFormBooth;

implementation

uses Security;

{$R *.dfm}

//==================================================================
// Name      : FormActivate(Sender: TObject)
// Desc      :
//==================================================================
procedure TFormBooth.FormActivate(Sender: TObject);
begin
  Grid_Init;  // �׸��� �ʱ�ȭ
  Text_Init;
  MonthCalendar1.Date:= Now;   // ���ó�¥�� �ʱ�ȭ
  LabelDate.Caption:=DateView(MonthCalendar1.Date);
  Work_Booth(MonthCalendar1.Date);  // �ش����� �ν� ���� ��ȸ
  //YesterDayWork_Booth;
end;


//==================================================================
// Name      : MonthCalendar1Click(Sender: TObject)
// Desc      : �޷� Ŭ����, ���� �ش� ��¥�� �ٲ۴�.
//==================================================================
procedure TFormBooth.MonthCalendar1Click(Sender: TObject);
begin
  Text_Init;
  LabelDate.Caption:=DateView(MonthCalendar1.Date);
  Work_Booth(MonthCalendar1.Date);  // �ش����� �ν� ���� ��ȸ
  //YesterDayWork_Booth;
end;



//==================================================================
// Name      : DateView(dDate:TDateTime): ansistring
// Desc      : ��¥���� �� �� �� ���Ϸ� ǥ��
//==================================================================
Function TFormBooth.DateView(dDate:TDateTime): ansistring;
var
  aDate,yy,mm,dd,ww : ansistring;
  const days: array[1..7] of string = ('��','��','ȭ','��','��','��','��');
begin
  aDate:=DatetoStr(dDate);
  yy:=ansiMidStr(aDate,1,4);
  mm:=ansiMidStr(aDate,6,2);
  dd:=ansiMidStr(aDate,9,2);
  ww:= days[DayOfWeek(dDate)];
  DateView:= yy + ' �� '+mm+' �� '+dd+' �� '+ ww+ '����' ;
end;
//==================================================================
// Name      : Work_Booth(dDate:TDateTime)
// Desc      : �ش����� �ν� ���� ��ȸ
//==================================================================
Procedure TFormBooth.Work_Booth(dDate:TDateTime);
var
  aDate,yy,mm,dd : ansistring;
  Ssql: AnsiString;
  tmpStr1,tmpStr2: AnsiString;
  ddDate:TDateTime;

begin
  aDate:=DatetoStr(dDate);
  ddDate:=dDate;
  yy:=ansiMidStr(aDate,1,4);
  mm:=ansiMidStr(aDate,6,2);
  dd:=ansiMidStr(aDate,9,2);

  Ssql:='SELECT Date, ����, �µ�, ����1, ����1, ����2, ����2, ' +
          ' ����1, ����2, �޸� From �ν� WHERE (�ν�.Date= #' + aDate + '# );';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(Ssql);
  ADOQuery1.Active:=True;

  if ADOQuery1.Recordset.RecordCount>0 then
   begin
    with ADOQuery1.Recordset.Fields do
     begin
      //Edit1.Text:=  FormatCurr('0.0;0;"0"',VarToStr(Item[3].Value)); // ����1
      Edit1.Text:=  FormatCurr('0.0;0;"0"',(Item[3].Value)); // ����1
      //Edit2.Text:=  FormatCurr('0.0;0;"0"',VarToStr(Item[4].Value)); // ����1
      Edit2.Text:=  FormatCurr('0.0;0;"0"',(Item[4].Value)); // ����1
      //Edit3.Text:=  FormatCurr('0.0',VarToStr(Item[5].Value)); // ����2
      Edit3.Text:=  FormatCurr('0.0;0;"0"',(Item[5].Value)); // ����2
      //Edit4.Text:=  FormatCurr('0.0',VarToStr(Item[6].Value)); // ����2
      Edit4.Text:=  FormatCurr('0.0;0;"0"',(Item[6].Value)); // ����2
      Edit5.Text:=  VarToStr(Item[7].Value); // ����1
      Edit6.Text:=  '';
      Edit7.Text:=  VarToStr(Item[8].Value); // ����2
      Edit8.Text:=  '';
      Edit9.Text:=  VarToStr(Item[1].Value); // ����
      Edit10.Text:= VarToStr(Item[2].Value); // �µ�
     end;
    ADOQuery1.Active:=False;
    tmpStr1:=VarToStr(Edit5.Text);
    tmpStr2:=VarToStr(Edit7.Text);
    //YesterDayWork_Booth(dDate,Edit5.Text,Edit7.Text); // ���� �ν� ��뷮 ���ϱ�
    //YesterDayWork_Booth(dDate,tmpStr1,tmpStr2); // ���� �ν� ��뷮 ���ϱ�
    //showmessage  ( 'dDate, tmpstr1,2 = '+ Datetostr(ddate)+' '+tmpstr1+' '+tmpstr2);
    YesterDayWork_Booth(dDate);
   end
  else ADOQuery1.Active:=False;

end;

//==================================================================
// Name      : YesterDayWork_Booth
// Desc      : ���� �ν� ��뷮 ���ϱ�
//==================================================================
Procedure TFormBooth.YesterDayWork_Booth(dDate:TDateTime);

var
  //yyDate : TDateTime;
  i,j : integer;
  aDate,yy,mm,dd : ansistring;
  sBooth1,sBooth2: Ansistring;
  Ssql: AnsiString;
  BoothToDay, BoothYesterDay,BoothUsing : Array[0..1] of double;
  tmpString : Array[0..1] of AnsiString;

begin
  //yyDate:=MonthCalendar1.Date;
  //aDate:=DateToStr(yyDate);
  if MonthCalendar1.Date=NULL then aDate:=DateToStr(NOW)
                              else aDate:=DateToStr(MonthCalendar1.Date);
  aDate:=DateToStr(dDate);
  if Edit5.Text='' then sBooth1:='0' else sBooth1:= Edit5.Text;
  if Edit7.Text='' then SBooth2:='0' else sBooth2:= Edit7.Text;

  for i := 0 to 1 do begin
    BoothToDay[i]:=0;
    BoothYesterDay[i]:=0;
    tmpString[i]:='';
  end;
  BoothToDay[0]:=StrToFloat(sBooth1);
  BoothToDay[1]:=StrToFloat(sBooth2);

  //showmessage  ( 'aDate, sBooth1,2 = '+ adate+' '+sBooth1+' '+sBooth2);

  i:=0;
  repeat
    inc(i);
    // ������ �Ͽ��� �Ǵ� �����̸� �� ���� ���귮�� ����
    Ssql:='SELECT Date, ����1, ����2 From �ν� ' +
          ' WHERE (�ν�.Date= #' +  aDate + '# -' + IntToStr(i) + ' );';
    // showmessage ('Ssq; = ['+Ssql+']');
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add(Ssql);
    ADOQuery1.Active:=True;
    if not(ADOQuery1.Recordset.BOF) then begin
      tmpString[0]:=varToStr(ADOQuery1.Recordset.Fields.Item[1].Value);
      tmpString[1]:=varToStr(ADOQuery1.Recordset.Fields.Item[2].Value);
       for j := 0 to 1 do begin
         if tmpString[j]=NULL then tmpString[j]:='0';
       end;

       //{
      if (StrToFloat(tmpstring[0])>0) and (StrToFloat(tmpstring[1])>0) then
       begin
         for j := 0 to 1 do begin
            BoothYesterDay[j]:= StrToFloat(tmpstring[j]);
         end;
         ADOQuery1.Active:=False;
         Break;  // �ݺ��� ���� ����
       end
      else // }
         ADOQuery1.Active:=False;
    end;
  until (i>30);

  for i := 0 to 1 do begin
    if BoothToDay[i]=0 then BoothYesterDay[i]:=0
    else begin
      BoothUsing[i]:=BoothToDay[i]-BoothYesterDay[i];
      if BoothUsing[i]< Myover then
        BoothUsing[i]:=MyMax - BoothYesterDay[i] + BoothToDay[i];
    end;
  end;
  // ���� ���갪�� ������ ���̸� 0���� ó�� �ʿ���
  if BoothUsing[0]<0 then Edit6.Text:=  '0'
   else Edit6.Text:=  FloatToStr(BoothUsing[0]);
  if BoothUsing[1]<0 then Edit8.Text:=  '0'
   else Edit8.Text:=  FloatToStr(BoothUsing[1]);





end;

//==================================================================
// Name      : Grid_Init
// Desc      : �׸��� �ʱ�ȭ
//==================================================================
procedure TformBooth.Grid_Init;

begin

  with NiceGrid1 do begin    // NiceGrid1 ���� ������
    headerline:=3;
    colcount:=13;
    columns[0].Title:='��¥';    columns[1].Title:='����';
    columns[0].Width:=90;     columns[1].Width:=25;
    columns[2].Title:='�� ��';   columns[2].Width:=100;
    columns[3].Title:='�µ�;��'; columns[3].Width:=30;
    columns[4].Title:='����ü������ð�|1ȣ��|����';
     columns[4].Width:=40;
    columns[5].Title:='����ü������ð�|1ȣ��|����';
     columns[5].Width:=40;
    columns[6].Title:='����ü������ð�|2ȣ��|����';
     columns[6].Width:=40;
    columns[7].Title:='����ü������ð�|2ȣ��|����';
     columns[7].Width:=40;
    columns[8].Title:= '�����ü����»�뷮(KW)|1ȣ��|����';
     columns[8].Width:=50;
    columns[9].Title:= '�����ü����»�뷮(KW)|1ȣ��|��뷮';
     columns[9].Width:=40;
    columns[10].Title:='�����ü����»�뷮(KW)|2ȣ��|����';
     columns[10].Width:=50;
    columns[11].Title:='�����ü����»�뷮(KW)|2ȣ��|��뷮';
     columns[11].Width:=40;
    columns[12].Title:='��   ��';
     columns[12].Width:=100;
  end;
  nicegrid1.RowCount:=20;

end;
//==================================================================
// Name      : Text_Init
// Desc      : �ؽ�Ʈ �ڽ� �ʱ�ȭ
//==================================================================
Procedure TFormBooth.Text_Init;
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

end;


//==================================================================
// Name      : ButtonClearClick
// Desc      : Clear
//==================================================================
procedure TFormBooth.ButtonClearClick(Sender: TObject);
begin
  Grid_Init;  // �׸��� �ʱ�ȭ
  Text_Init;
end;

//==================================================================
// Name      : ButtonCloseClick
// Desc      : ���� , â �ݱ�
//==================================================================
procedure TFormBooth.ButtonCloseClick(Sender: TObject);
begin
  close;
end;

//==================================================================
// Name      : ButtonDeleteClick
// Desc      : ����
//==================================================================
procedure TFormBooth.ButtonDeleteClick(Sender: TObject);
var
  yn : Integer;
  FormSecurity:TFormSecurity;

begin

  // ���� ���� ��Ȯ��
   yn:=MessageDlg('���� �����ϰڽ��ϱ�? ������ �ڷ�� ������ �ȵ˴ϴ�.'
                  ,mtInformation,mbOKCancel,0);   // OK : 1 , Cancel : 2
   if yn=1 then  begin
      FormBooth:=FormSecurity.Create(Application);
      FormSecurity.ShowModal;
      FormSecurity.Free;
      ShowMessage(IntToStr(yn));
   end;

  {
  Dim sSql As String            ' SQL ����
   Dim tmpStr As String
   Dim I As Integer
   Dim BoothTime1, BoothTime2 As Double
   Dim BCount1, BCount2 As Double



         ' -------------------------------------------------------------  �������� ��Ȯ��
         sSql = "DELETE FROM �ν� WHERE Date = #" & sToDay & "#;"
         CnDaily.Execute sSql


      'RsDaily.Close


  }
  Text_Init;
  Grid_Init;
end;

end.
