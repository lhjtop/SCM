unit Charge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NiceGrid, ExtCtrls, DB, ADODB, IniFiles,
  lhjModule ,ClipBrd ;

type
  TFormCharge = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label14: TLabel;
    NiceGrid1: TNiceGrid;
    GroupBox8: TGroupBox;
    ButtonCharge1: TButton;
    ButtonCharge2: TButton;
    ButtonCharge3: TButton;
    ButtonChargeEnd: TButton;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    Edit8: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    EditFind: TEdit;
    ButtonFind: TButton;
    ButtonFindCancel: TButton;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    Procedure Text_Init(Index : Integer);
    Procedure Grid_Init(Index : Integer);
    procedure ButtonChargeEndClick(Sender: TObject);
    procedure ChargeManager;
    procedure NiceGrid1DrawCell(Sender: TObject; ACanvas: TCanvas; X,
      Y: Integer; Rc: TRect; var Handled: Boolean);
    procedure NiceGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditFindKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_Listing(NGrid : TNiceGrid; Ssql: Ansistring);
    procedure ButtonFindClick(Sender: TObject);
    procedure ButtonFindCancelClick(Sender: TObject);
    procedure DetailView(iRow : integer);
    procedure NiceGrid1Click(Sender: TObject);
    procedure ButtonCharge3Click(Sender: TObject);
    procedure ButtonCharge2Click(Sender: TObject);
    procedure ButtonCharge1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MakeBoHum();
  private
    { Private declarations }
    procedure BoHumDblClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FormCharge    : TFormCharge;
  //FormSecurity  : TFormCharge;
implementation

{$R *.dfm}
uses Security;

var
  FindFlag    : Boolean;            //  �˻�mode = True
  NGrid       : TNiceGrid;

//==================================================================
// Name      : FormActivate
// Desc      : Form �ʱ�ȭ
//==================================================================
procedure TFormCharge.FormActivate(Sender: TObject);
begin
  ADOQuery1.Connection.LoginPrompt:=False;
  FindFlag  := False;
  Grid_Init(0);
  Text_Init(0);
  Text_Init(71); // find
  ChargeManager;
  editfind.SetFocus;

end;

//==================================================================
// Name      : ButtonFindCancelClick
// Desc      : find- cancel
//==================================================================
procedure TFormCharge.ButtonFindCancelClick(Sender: TObject);
begin
  formactivate(nil);
end;
//==================================================================
// Name      : ButtonFindClick
// Desc      : Find
//==================================================================
procedure TFormCharge.ButtonFindClick(Sender: TObject);
var
  cFinder : ansistring;
  Ssql    : AnsiString;
begin
  cFinder := editfind.Text;
  if bNULL(cFinder) then begin
    showmessage('ã�� �̸��� �Է��ϼ���');
  end
  else begin
    Ssql:='SELECT ID, �����, ���, �̸�, ����, �ڵ���, FAX, ����, �繫��, ' +
        '�ݼ�Ÿ, �޸� ' + ' From ������ ' +
        'WHERE �̸� LIKE ' + QQ + '%' + cFinder + '' + QQ  +
        'ORDER BY ����� asc, �̸� ASC ;' ;
    Grid_Listing(NiceGrid1,Ssql);
  end;
  editfind.SelectAll  ; //editfind.SetFocus;

end;
//==================================================================
// Name      : ChargeManager
// Desc      : Manager
//==================================================================
procedure TFormCharge.ChargeManager;
var
  Ssql    : AnsiString;
begin
  Ssql:='SELECT ID, �����, ���, �̸�, ����, �ڵ���, FAX, ����, �繫��, ' +
        '�ݼ�Ÿ, �޸� ' + ' From ������ ORDER BY ����� asc, �̸� ASC ;' ;
  Grid_Listing(NiceGrid1,Ssql);
end;

//==================================================================
// Name      : Grid_Listing
// Desc      : NiceGrid�� ������ �޾Ƽ� �ѷ��ִ� �Լ�
//==================================================================
procedure TFormCharge.Grid_Listing(NGrid : TNiceGrid; Ssql: Ansistring);
var
  i,j      : Integer;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  ngrid.Clear;
  if ADOQuery1.Recordset.RecordCount>0 then
   begin
    i:=0;
    NGrid.BeginUpdate;
    NGrid.RowCount:=ADOQuery1.Recordset.RecordCount;
    while not ADOQuery1.Eof do
    begin
      with ADOQuery1.Recordset.Fields do
       begin
        for j := 0 to ADOQuery1.Recordset.Fields.Count - 1 do
           NGrid[j,i] := ifNULL(Item[j].Value,'');
       end; // with
      inc(i);
      ADOQuery1.Next;
    end; // while
    NGrid.EndUpdate;
   end; // if
  ADOQuery1.Active:=False;

end;

//==================================================================
// Name      : EditFindKeyPress
// Desc      : fidn enter / esc key press
//==================================================================
procedure TFormCharge.EditFindKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then buttonfind.Click;
  if key= #27 then buttonfindcancel.Click;


end;

//==================================================================
// Name      : Text_Init
// Desc      : �ؽ�Ʈ �ڽ� �ʱ�ȭ
//==================================================================
Procedure TFormCharge.Text_Init(Index : Integer);
var
  i   : Integer;
  TComp : TComponent; //Tedit;
begin
  case Index of
  0: begin
      // ------------------- �������� �ʱ�ȭ
      for i := 0 to GroupBox1.ControlCount - 1 do  // �������� - ��ü
      begin
        TComp :=GroupBox1.Controls[i];
        if TComp.ClassName ='TEdit' then begin
          Tedit(GroupBox1.Controls[i]).text :='';
          Tedit(GroupBox1.Controls[i]).Height:=19;
        end;  // if
        if Tcomp.ClassName='TMemo' then TMemo(GroupBox1.Controls[i]).text :='';
      end; // for
     end;
  71: begin // find
      editFind.Text := '';

    end;
  end;

end;

//==================================================================
// Name      : Grid_Init
// Desc      : �׸��� �ʱ�ȭ
//==================================================================
procedure TFormCharge.Grid_Init(Index : Integer);
begin
  // �׸��� �ʱ�ȭ
  with NiceGrid1 do begin
    ColCount     := 11;
    Color        := clWindow;
    DefRowHeight := 18;
    Font.Name    := '����ü';
    Font.Size    := 8;
    GutterWidth  := 21;
    GutterKind   := gkNumber;
    GutterFont.Name:='Minion Pro';
    GutterFont.Size:=9;
    Height       := 390;
    RowCount     :=1;
    ShowFooter   :=False;
    ShowGrid     :=True;
    Width        := 950;
    Columns[0].Title:='ID';       Columns[0].Width  :=80;
    Columns[1].Title:='�����';   Columns[1].Width  :=88;
    Columns[2].Title:='���';     Columns[2].Width  :=48;
    Columns[3].Title:='�̸�';     Columns[3].Width  :=80;
    Columns[4].Title:='����';     Columns[4].Width  :=48;
    Columns[5].Title:='�ڵ���';   Columns[5].Width  :=85;
    Columns[6].Title:='FAX';      Columns[6].Width  :=90;
    Columns[7].Title:='�����ּ�'; Columns[7].Width  :=100;
    Columns[8].Title:='�繫��';   Columns[8].Width  :=85;
    Columns[9].Title:='�ݼ���';   Columns[9].Width  :=85;
    Columns[10].Title:='�޸�';    Columns[10].Width :=110;
    Clear;
  end;
end;

//==================================================================
// Name      : NiceGrid1DrawCell
// Desc      : �׸��� color
//==================================================================
procedure TFormCharge.NiceGrid1DrawCell(Sender: TObject; ACanvas: TCanvas; X,
  Y: Integer; Rc: TRect; var Handled: Boolean);
var
  i: Integer;
begin
  //(y and 1) =0 ¦��  , =1  Ȧ��  bit�����̰� ���� ������ 1����¦��/Ȧ�� ����
  if (y and 1) =0 then begin
    for i := 0 to Nicegrid1.ColCount - 1 do begin
      ACanvas.Brush.Color := clGradientActiveCaption;
    end; // for
  end
  else begin
    for i := 0 to Nicegrid1.ColCount - 1 do begin
      ACanvas.Brush.Color := clGradientInactiveCaption;
    end; // for
  end;  // if
end;

//==================================================================
// Name      : NiceGrid1Click
// Desc      : Grid Select
//==================================================================
procedure TFormCharge.NiceGrid1Click(Sender: TObject);
begin
  DetailView(NiceGrid1.Row);
end;

//==================================================================
// Name      : NiceGrid1KeyDown
// Desc      : Grid Select
//==================================================================
procedure TFormCharge.NiceGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //showmessage ('KeyDown ' + floattostr(key));
  case Key of
    VK_UP,VK_DOWN,VK_PRIOR,VK_NEXT : DetailView(NiceGrid1.Row);
  end;
end;
//==================================================================
// Name      : DetailView
// Desc      :
//==================================================================
procedure TFormCharge.DetailView(iRow : integer);
var
  i   : integer;
begin
  edit1.Text := NiceGrid1[00,irow];
  edit2.Text := NiceGrid1[01,irow];
  edit3.Text := NiceGrid1[02,irow];
  edit4.Text := NiceGrid1[03,irow];
  edit5.Text := NiceGrid1[04,irow];
  edit6.Text := NiceGrid1[05,irow];
  edit7.Text := NiceGrid1[06,irow];
  edit8.Text := NiceGrid1[07,irow];
  edit9.Text := NiceGrid1[08,irow];
  edit10.Text:= NiceGrid1[09,irow];
  memo1.Text := NiceGrid1[10,irow];

end;


//==================================================================
// Name      : Button1Click
// Desc      : MakeBoHum  - listbox
//==================================================================
procedure TFormCharge.Button1Click(Sender: TObject);
begin
  MakeBoHum;
end;
//==================================================================
// Name      : MakeBoHum
// Desc      : ����� ���
//==================================================================
procedure TFormCharge.MakeBoHum();
var
  i,bCnt    : integer;
  Ssql      : AnsiString;
  FileName  : Ansistring;
  iniSet    : TIniFile;
  bList     : Ansistring;
  iLen,iPos : integer;
begin
  with TListBox.Create(FormCharge) do begin
    Parent  := Panel1;
    Left   := 100;
    Top    := 26 + 58 + 9;
    Height := 450;
    Width  := 255;
    Font.Name := '���� ����';
    Font.Size := 11;
    Name   := 'ListBoxBoHum';
    OnDblClick := BoHumDblClick;

    FileName:='.\' + 'SCM1.ini';
    iniSet := TIniFile.Create(ChangeFileExt(FileName, '.ini'));
    //try
      bCnt  := iniSet.ReadInteger('����縮��Ʈ', 'Count', 1);
      bList := iniSet.ReadString ('����縮��Ʈ', '�����', 'New Form');
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
// Desc      : ����� ��� - ListBox select process
//==================================================================
procedure TFormCharge.BoHumDblClick(Sender: TObject);
begin
  //
  edit2.Text:=(Sender as TListbox).Items.Strings[(Sender as TListbox).ItemIndex];
  (Sender as TListbox).Free;
end;


//==================================================================
// Name      : ButtonCharge1Click
// Desc      : save
//==================================================================
procedure TFormCharge.ButtonCharge1Click(Sender: TObject);
var
  Flag      : boolean;
  yn        : integer;
  Ssql      : Ansistring;
  myMessage : AnsiString;
  tmpstr    : ansistring;
begin
  Ssql:='SELECT ID, �����, �̸� From ������ ' +
        'WHERE �̸� = ' +  QQ + edit4.Text + QQ  +
        ' AND ����� = ' + QQ + edit2.Text + QQ  +
        'ORDER BY ����� asc, �̸� ASC ;' ;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  tmpstr := formatdatetime('yyyymmddhhnnss', now());
  if ADOQuery1.Recordset.RecordCount>0 then begin
    yn:=MessageDlg('������ ����翡 ���� �̸��� �ֽ��ϴ�. ������ұ�� ?'
                  ,mtInformation,mbOKCancel,0);   // OK : 1 , Cancel : 2
    if yn=1 then begin
         edit1.Text  := ifNULL(ADOQuery1.Recordset.Fields.Item[0].Value,tmpstr)
    end else begin
      edit1.Text  := tmpstr;
    end; // if
  end else begin
    edit1.Text  := tmpstr;
  end; // if
  ADOQuery1.Active:=False;
//clipboard.AsText:= '[' + edit1.Text +']';
  if (vNULL(edit2.Text)) and (vNULL(edit4.Text)) and (vNULL(edit6.Text)) then
    showmessage('DATA �Է��� �Ϻ����� �ʽ��ϴ�. �ٽ��ѹ� Ȯ���� �ּ���...')
  else begin
    Ssql:='SELECT ID, �����, ���, �̸�, ����, �ڵ���, FAX, ����, �繫��, ' +
        '�ݼ�Ÿ, �޸� ' + ' From ������ ' +
        'WHERE ID = ' + QQ + edit1.Text + QQ + ';' ;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    if ADOQuery1.Eof then begin
      try     // insert
        ADOConnection1.BeginTrans;                     //Ʈ������ ����
        Ssql:='INSERT INTO ������ ' +
          '( ID, �����, ���, �̸�, ����, �ڵ���, FAX, ����, �繫��, ' +
          '�ݼ�Ÿ, �޸� )' +
          ' Values ( ' + QQ +
          ifNULL(edit1.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit2.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit3.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit4.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit5.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit6.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit7.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit8.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit9.Text,'-') + QQ + ', ' + QQ +
          ifNULL(edit10.Text,'-')+ QQ + ', ' + QQ +
          ifNULL(memo1.Text,'-') + QQ + ') ; ';

        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text:=sSql; //.Add �Լ��� ����ϸ� �ſ� ��������. ������� ����.
        myMessage:=' ������ �Ϸ� �Ǿ����ϴ�. ';
      except
        ADOConnection1.RollbackTrans;                 //Ʈ������ �ѹ�
        ADOQuery1.Active:=False; // ���� ó��
      end;  // try
    end  //if ADOQuery1.Eof
    else begin
      try         // update   // ' + MQ + '
        ADOConnection1.BeginTrans;                     //Ʈ������ ����
        Ssql:='UPDATE ������ SET ' +
              'ID     = ' + QQ + ifNULL(edit1.Text,'-') + QQ + ', ' +
              '����� = ' + QQ + ifNULL(edit2.Text,'-') + QQ + ', ' +
              '���   = ' + QQ + ifNULL(edit3.Text,'-') + QQ + ', ' +
              '�̸�   = ' + QQ + ifNULL(edit4.Text,'-') + QQ + ', ' +
              '����   = ' + QQ + ifNULL(edit5.Text,'-') + QQ + ', ' +
              '�ڵ��� = ' + QQ + ifNULL(edit6.Text,'-') + QQ + ', ' +
              'FAX    = ' + QQ + ifNULL(edit7.Text,'-') + QQ + ', ' +
              '����   = ' + QQ + ifNULL(edit8.Text,'-') + QQ + ', ' +
              '�繫�� = ' + QQ + ifNULL(edit9.Text,'-') + QQ + ', ' +
              '�ݼ�Ÿ = ' + QQ + ifNULL(edit10.Text,'-')+ QQ + ', ' +
              '�޸�   = ' + QQ + ifNULL(memo1.Text,'-') + QQ + '  ' +
              ' Where ID = ' + QQ + edit1.Text + QQ + ' ;';
        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text:=sSql; //.Add �Լ��� ����ϸ� �ſ� ��������. ������� ����.
        myMessage:=' ������ �Ϸ� �Ǿ����ϴ�. ';
     except
        ADOConnection1.RollbackTrans;                 //Ʈ������ �ѹ�
        ADOQuery1.Active:=False; // ���� ó��
     end;
   end; // if
//clipboard.AsText:=ssql;   //   Ctrl - C    ����  copy  uses => ClipBrd
//showmessage (' ssql = ' + ssql+ '    ' );    clipboard.AsText:=ssql;
  ADOQuery1.ExecSQL;
  ADOConnection1.CommitTrans;                    //Ʈ������ ����
  ADOQuery1.Active:=False;
  ShowMessage (myMessage);
  end; //if
  ChargeManager;
end;

//==================================================================
// Name      : ButtonCharge2Click
// Desc      : delete
//==================================================================
procedure TFormCharge.ButtonCharge2Click(Sender: TObject);
var
  yn : Integer;
  sSql : AnsiString;
  ToDay : AnsiString;
  //FormSecurity:TFormSecurity;
  tString   : string;
begin
  // ���� ���� ��Ȯ��
  yn:=MessageDlg('���� �����ϰڽ��ϱ�? ������ �ڷ�� ������ �ȵ˴ϴ�.'
                  ,mtInformation,mbOKCancel,0);   // OK : 1 , Cancel : 2
  if yn=1 then  begin
    {FormSecurity:=TFormSecurity.Create_FormSecurity(tstring, self);

    FormSecurity.ShowModal;
    FormSecurity.Free;
    //if FormSecurity.EditPW.Text=pPW then ResultReturn:='OK'
    //                                else ResultReturn:='FAIL';
    if tString=pPW then ResultReturn:='OK'
                   else ResultReturn:='FAIL';
    if ResultReturn='FAIL' then close;
    }
    sSql := 'DELETE FROM ������ WHERE ID = ' + QQ + edit1.Text + QQ + ';';
// clipboard.AsText:=ssql;   //   Ctrl - C    ����  copy  uses => ClipBrd
    try
      try
        ADOConnection1.BeginTrans;                     //Ʈ������ ����
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text:=(Ssql);
        ADOQuery1.ExecSQL;
        ADOConnection1.CommitTrans;                    //Ʈ������ ����
      except
        ADOConnection1.RollbackTrans;                 //Ʈ������ �ѹ�
        showmessage(' try exception ����ó��');    ///////////////////////////////////////
      end; // try
    finally
        //ADOQuery1.Open;
        ADOQuery1.Active:=False;
        //showmessage(' try finally ����ó��');       ///////////////////////////////////////
    end;  // try
  end; //if
  Text_Init(0);
  ChargeManager;

end;

//==================================================================
// Name      : ButtonCharge3Click
// Desc      : ��� /  Clear
//==================================================================
procedure TFormCharge.ButtonCharge3Click(Sender: TObject);
begin
  Text_Init(0);
end;

//==================================================================
// Name      : ButtonChargeEndClick
// Desc      : end , close
//==================================================================

procedure TFormCharge.ButtonChargeEndClick(Sender: TObject);
begin
  close;
end;
end.