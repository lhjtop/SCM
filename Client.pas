                       unit Client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NiceGrid, ExtCtrls, DB, ADODB, IniFiles,
  lhjModule ,ClipBrd ;

type
  TFormClient = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit12: TEdit;
    Edit8: TEdit;
    Memo1: TMemo;
    Edit11: TEdit;
    Edit7: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit19: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    NiceGridSync1: TNiceGridSync;
    NiceGrid1: TNiceGrid;
    GroupBox2: TGroupBox;
    EditFind: TEdit;
    ButtonFind: TButton;
    ButtonFindCancel: TButton;
    GroupBox8: TGroupBox;
    ButtonClient1: TButton;
    ButtonClient2: TButton;
    ButtonClient3: TButton;
    ButtonClientEnd: TButton;
    procedure FormActivate(Sender: TObject);
    Procedure Grid_Init(Index : Integer);
    Procedure Text_Init(Index : Integer);
    procedure ClientManager;
    procedure Grid_Listing_Client(NGrid : TNiceGrid; Ssql: Ansistring);
    procedure NiceGridSync1DrawCell(Sender: TObject; ACanvas: TCanvas; X,
      Y: Integer; Rc: TRect; var Handled: Boolean);
    procedure NiceGrid1DrawCell(Sender: TObject; ACanvas: TCanvas; X,
      Y: Integer; Rc: TRect; var Handled: Boolean);
    procedure NiceGrid1Click(Sender: TObject);
    procedure DetailView(iRow : integer);
    procedure NiceGridSync1Click(Sender: TObject);
    procedure NiceGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NiceGridSync1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonFindClick(Sender: TObject);
    procedure ButtonFindCancelClick(Sender: TObject);
    procedure EditFindKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonClientEndClick(Sender: TObject);
    procedure ButtonClient3Click(Sender: TObject);
    procedure ButtonClient2Click(Sender: TObject);
    procedure ButtonClient1Click(Sender: TObject);
  private
    { Private declarations }
   // procedure BoHumDblClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FormClient    : TFormClient;
  //FormSecurity  : TFormCharge;
implementation

{$R *.dfm}

var
  FindFlag    : Boolean;            //  �˻�mode = True
  NGrid       : TNiceGrid;
  DBLIST1     : ansistring;
//==================================================================
// Name      : FormActivate
// Desc      : Form �ʱ�ȭ
//==================================================================
procedure TFormClient.FormActivate(Sender: TObject);
begin
  ADOQuery1.Connection.LoginPrompt:=False;
  FindFlag  := False;
  Grid_Init(0);
  Text_Init(0);
  Text_Init(71);

  dblist1 := 'ID, �ŷ�ó�̸�, �ڵ���, ����, ��ȣ, ����, ����ڹ�ȣ, ������, ' +
             '��ȭ, ��ȭ2, �ѽ�, ����, ����, ����, ��������, ����, ����1, ' +
             '����2, �ּ�, ��� ';
  ClientManager;
end;


//==================================================================
// Name      : ClientManager
// Desc      : Manager
//==================================================================
procedure TFormClient.ClientManager;
var
  Ssql    : AnsiString;
begin
  Ssql  :='SELECT ' + DBLIST1 + ' From �ŷ�ó ORDER BY �ŷ�ó�̸� asc, ���� ASC ;' ;
  Grid_Listing_Client(NiceGrid1,Ssql);
end;

//==================================================================
// Name      : Grid_Listing_Client
// Desc      : NiceGrid�� ������ �޾Ƽ� �ѷ��ִ� �Լ�
//==================================================================
procedure TFormClient.Grid_Listing_Client(NGrid : TNiceGrid; Ssql: Ansistring);
var
  i,j       : Integer;
  SGridS    : TNiceGridSync;
begin
  //
  sGrids  :=NiceGridSync1;
  //
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  ngrid.Clear;
  if ADOQuery1.Recordset.RecordCount>0 then begin
    i:=0;
    NGrid.BeginUpdate;
    sgrids.BeginUpdate;
    NGrid.RowCount  := ADOQuery1.Recordset.RecordCount;
    sGrids.RowCount := ADOQuery1.Recordset.RecordCount;
    while not ADOQuery1.Eof do begin
      with ADOQuery1.Recordset.Fields  do begin
        for j := 0 to ADOQuery1.Recordset.Fields.Count - 1 do begin
          //
          case j of
           0, 1: begin SGrids[j,i] := ifNULL(Item[j].Value,''); end;
           else begin NGrid[j-2 ,i]  := ifNULL(Item[j].Value,''); end;
          end; // case
        end; // for
      end; // with
      inc(i);
      //if i=70 then showmessage (' i = 87 ');

      ADOQuery1.Next;
    end; // while
    NGrid.EndUpdate;
    sgrids.EndUpdate;
  end; // if
  ADOQuery1.Active:=False;

end;


//==================================================================
// Name      : ButtonClient1Click
// Desc      : save
//==================================================================
procedure TFormClient.ButtonClient1Click(Sender: TObject);
var
  Flag      : boolean;
  yn        : integer;
  Ssql      : Ansistring;
  myMessage : AnsiString;
  tmpstr    : ansistring;
begin
  Ssql:='SELECT ID, �ŷ�ó�̸�, ��ȣ From �ŷ�ó ' +
        'WHERE �ŷ�ó�̸� = ' +  QQ + edit2.Text + QQ  +
        // ' AND ��ȣ = ' + QQ + edit5.Text + QQ  +
        'ORDER BY �ŷ�ó�̸� asc, ���� ASC ;' ;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=(Ssql);
  ADOQuery1.Open;
  tmpstr := formatdatetime('yyyymmddhhnnss', now());
  if ADOQuery1.Recordset.RecordCount>0 then begin
    yn:=MessageDlg('������ �ŷ�ó �̸��� �ֽ��ϴ�. ������ұ�� ?'
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
  if (vNULL(edit2.Text)) and (vNULL(edit5.Text)) and (vNULL(edit6.Text)) then
  begin
    showmessage('DATA �Է��� �Ϻ����� �ʽ��ϴ�. �ٽ��ѹ� Ȯ���� �ּ���...');
    exit;
  end;
  //if (vNULL(edit8.Text)) then begin
  //    showmessage('������ �Է������� Ȯ���� �ּ��� ��¥ ����(yyyy-mm-dd) �Դϴ�. ...');
  //    exit;
  //end;

    Ssql  :='SELECT ' + DBLIST1 + ' From �ŷ�ó ' +
            'WHERE ID = ' + QQ + trim(edit1.Text) + QQ + ';' ;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=(Ssql);
    ADOQuery1.Open;
    if ADOQuery1.Recordset.RecordCount<=0 then begin
      try     // insert
        ADOConnection1.BeginTrans;                     //Ʈ������ ����
        // ������
        if (vNULL(edit8.Text)) then
          Ssql:='INSERT INTO �ŷ�ó ' +
              '( ID, �ŷ�ó�̸�, �ڵ���, ����, ��ȣ, ����, ����ڹ�ȣ, ' +
             '��ȭ, ��ȭ2, �ѽ�, ����, ����, ����, ��������, ����, ����1, ' +
             '����2, �ּ�, ��� )' +
          ' Values ( ' + QQ +
          ifNULL(edit1.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit2.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit3.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit4.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit5.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit6.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit7.Text,' ') + QQ + ', ' + QQ +

          ifNULL(edit9.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit10.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit11.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit12.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit13.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit14.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit15.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit16.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit17.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit18.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit19.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(memo1.Text,' ') + QQ + ') ; '

        else
          Ssql:='INSERT INTO �ŷ�ó ' +
              '( ID, �ŷ�ó�̸�, �ڵ���, ����, ��ȣ, ����, ����ڹ�ȣ, ������, ' +
             '��ȭ, ��ȭ2, �ѽ�, ����, ����, ����, ��������, ����, ����1, ' +
             '����2, �ּ�, ��� )' +
          ' Values ( ' + QQ +
          ifNULL(edit1.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit2.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit3.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit4.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit5.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit6.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit7.Text,' ') + QQ + ', ' + MS +
          ifNULL(edit8.Text,' ') + MS + ', ' + QQ +
          ifNULL(edit9.Text,' ') + QQ + ', ' + QQ +
          ifNULL(edit10.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit11.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit12.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit13.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit14.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit15.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit16.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit17.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit18.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(edit19.Text,' ')+ QQ + ', ' + QQ +
          ifNULL(memo1.Text,' ') + QQ + ') ; ';

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
        // ������
        if (vNULL(edit8.Text)) then
          Ssql:='UPDATE �ŷ�ó SET ' +
              'ID          = ' + QQ + ifNULL(edit1.Text,' ') + QQ + ', ' +
              '�ŷ�ó�̸�  = ' + QQ + ifNULL(edit2.Text,' ') + QQ + ', ' +
              '�ڵ���      = ' + QQ + ifNULL(edit3.Text,' ') + QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit4.Text,' ') + QQ + ', ' +
              '��ȣ        = ' + QQ + ifNULL(edit5.Text,' ') + QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit6.Text,' ') + QQ + ', ' +
              '����ڹ�ȣ  = ' + QQ + ifNULL(edit7.Text,' ') + QQ + ', ' +

              '��ȭ        = ' + QQ + ifNULL(edit9.Text,' ') + QQ + ', ' +
              '��ȭ2       = ' + QQ + ifNULL(edit10.Text,' ')+ QQ + ', ' +
              '�ѽ�        = ' + QQ + ifNULL(edit11.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit12.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit13.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit14.Text,' ')+ QQ + ', ' +
              '��������    = ' + QQ + ifNULL(edit15.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit16.Text,' ')+ QQ + ', ' +
              '����1       = ' + QQ + ifNULL(edit17.Text,' ')+ QQ + ', ' +
              '����2       = ' + QQ + ifNULL(edit18.Text,' ')+ QQ + ', ' +
              '�ּ�        = ' + QQ + ifNULL(edit19.Text,' ')+ QQ + ', ' +
              '���        = ' + QQ + ifNULL(memo1.Text,' ') + QQ + '  ' +
              ' Where ID = ' + QQ + edit1.Text + QQ + ' ;'
        else
          Ssql:='UPDATE �ŷ�ó SET ' +
              'ID          = ' + QQ + ifNULL(edit1.Text,' ') + QQ + ', ' +
              '�ŷ�ó�̸�  = ' + QQ + ifNULL(edit2.Text,' ') + QQ + ', ' +
              '�ڵ���      = ' + QQ + ifNULL(edit3.Text,' ') + QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit4.Text,' ') + QQ + ', ' +
              '��ȣ        = ' + QQ + ifNULL(edit5.Text,' ') + QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit6.Text,' ') + QQ + ', ' +
              '����ڹ�ȣ  = ' + QQ + ifNULL(edit7.Text,' ') + QQ + ', ' +

              '������      = ' + MS + ifNULL(edit8.Text,'1900/01/01') + MS + ', ' +

              '��ȭ        = ' + QQ + ifNULL(edit9.Text,' ') + QQ + ', ' +
              '��ȭ2       = ' + QQ + ifNULL(edit10.Text,' ')+ QQ + ', ' +
              '�ѽ�        = ' + QQ + ifNULL(edit11.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit12.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit13.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit14.Text,' ')+ QQ + ', ' +
              '��������    = ' + QQ + ifNULL(edit15.Text,' ')+ QQ + ', ' +
              '����        = ' + QQ + ifNULL(edit16.Text,' ')+ QQ + ', ' +
              '����1       = ' + QQ + ifNULL(edit17.Text,' ')+ QQ + ', ' +
              '����2       = ' + QQ + ifNULL(edit18.Text,' ')+ QQ + ', ' +
              '�ּ�        = ' + QQ + ifNULL(edit19.Text,' ')+ QQ + ', ' +
              '���        = ' + QQ + ifNULL(memo1.Text,' ') + QQ + '  ' +
              ' Where ID = ' + QQ + edit1.Text + QQ + ' ;';

        ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text:=sSql; //.Add �Լ��� ����ϸ� �ſ� ��������. ������� ����.
        myMessage:=' ������ �Ϸ� �Ǿ����ϴ�. ';
     except
        ADOConnection1.RollbackTrans;                 //Ʈ������ �ѹ�
        ADOQuery1.Active:=False; // ���� ó��
     end;  //try
  end; // if
clipboard.AsText:=ssql;   //   Ctrl - C    ����  copy  uses => ClipBrd
showmessage (' ssql = ' + ssql+ '    ' );    clipboard.AsText:=ssql;
  ADOQuery1.ExecSQL;
  ADOConnection1.CommitTrans;                    //Ʈ������ ����
  ADOQuery1.Active:=False;
  ShowMessage (myMessage);

  ClientManager;
end;

//==================================================================
// Name      : ButtonClient2Click
// Desc      : delete
//==================================================================
procedure TFormClient.ButtonClient2Click(Sender: TObject);
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
    } {
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
    end;  // try }
  end; //if
  Text_Init(0);
  ClientManager;
end;

//==================================================================
// Name      : ButtonClient3Click
// Desc      : ��� /  Clear
//==================================================================
procedure TFormClient.ButtonClient3Click(Sender: TObject);
begin
  Text_Init(0);
end;














//==================================================================
// Name      : ButtonFindClick
// Desc      : Find
//==================================================================
procedure TFormClient.ButtonFindClick(Sender: TObject);
var
  cFinder : ansistring;
  Ssql    : ansistring;
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
    Grid_Listing_Client(NiceGrid1,Ssql);
  end; // if
  editfind.SelectAll  ; //editfind.SetFocus;

end;

//==================================================================
// Name      : ButtonFindCancelClick
// Desc      : find- cancel
//==================================================================
procedure TFormClient.ButtonFindCancelClick(Sender: TObject);
begin
  formactivate(nil);
end;

//==================================================================
// Name      : EditFindKeyPress
// Desc      : fidn enter / esc key press
//==================================================================
procedure TFormClient.EditFindKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then buttonfind.Click;
  if key= #27 then buttonfindcancel.Click;
end;









//==================================================================
// Name      : DetailView
// Desc      :
//==================================================================
procedure TFormClient.DetailView(iRow : integer);
var
  i   : integer;
begin
  edit1.Text := NiceGridSync1[00,irow];
  edit2.Text := NiceGridSync1[01,irow];
  edit3.Text := NiceGrid1[00,irow];
  edit4.Text := NiceGrid1[01,irow];
  edit5.Text := NiceGrid1[02,irow];
  edit6.Text := NiceGrid1[03,irow];
  edit7.Text := NiceGrid1[04,irow];
  edit8.Text := NiceGrid1[05,irow];
  edit9.Text := NiceGrid1[06,irow];
  edit10.Text:= NiceGrid1[07,irow];
  edit11.Text:= NiceGrid1[08,irow];
  edit12.Text:= NiceGrid1[09,irow];
  edit13.Text:= NiceGrid1[10,irow];
  edit14.Text:= NiceGrid1[11,irow];
  edit15.Text:= NiceGrid1[12,irow];
  edit16.Text:= NiceGrid1[13,irow];
  edit17.Text:= NiceGrid1[14,irow];
  edit18.Text:= NiceGrid1[15,irow];
  edit19.Text:= NiceGrid1[16,irow];
  memo1.Text := NiceGrid1[17,irow];
end;

//==================================================================
// Name      : NiceGrid1Click
// Desc      : Grid Select
//==================================================================
procedure TFormClient.NiceGrid1Click(Sender: TObject);
begin
  DetailView(NiceGrid1.Row);
end;

//==================================================================
// Name      : NiceGridSync1Click
// Desc      : Grid Select
//==================================================================
procedure TFormClient.NiceGridSync1Click(Sender: TObject);
begin
  DetailView(NiceGrid1.Row);
end;

//==================================================================
// Name      : NiceGrid1KeyDown
// Desc      : Grid Select
//==================================================================
procedure TFormClient.NiceGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //showmessage ('KeyDown ' + floattostr(key));
  case Key of
    VK_UP,VK_DOWN,VK_PRIOR,VK_NEXT : DetailView(NiceGrid1.Row);
  end;
end;

//==================================================================
// Name      : NiceGridSync1KeyDown
// Desc      : Grid Select
//==================================================================
procedure TFormClient.NiceGridSync1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP,VK_DOWN,VK_PRIOR,VK_NEXT : DetailView(NiceGrid1.Row);
  end;
end;

//==================================================================
// Name      : NiceGrid1DrawCell
// Desc      : �׸��� color
//==================================================================
procedure TFormClient.NiceGrid1DrawCell(Sender: TObject; ACanvas: TCanvas; X,
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
// Name      : NiceGridSync1DrawCell
// Desc      : �׸��� color
//==================================================================
procedure TFormClient.NiceGridSync1DrawCell(Sender: TObject; ACanvas: TCanvas;
  X, Y: Integer; Rc: TRect; var Handled: Boolean);
var
  i: Integer;
begin
  //(y and 1) =0 ¦��  , =1  Ȧ��  bit�����̰� ���� ������ 1����¦��/Ȧ�� ����
  if (y and 1) =0 then begin
    for i := 0 to NiceGridSync1.ColCount - 1 do begin
      ACanvas.Brush.Color := clGradientActiveCaption;
    end; // for
  end
  else begin
    for i := 0 to NiceGridSync1.ColCount - 1 do begin
      ACanvas.Brush.Color := clGradientInactiveCaption;
    end; // for
  end;  // if

end;

//==================================================================
// Name      : Text_Init1
// Desc      : �ؽ�Ʈ �ڽ� �ʱ�ȭ
//==================================================================
Procedure TFormClient.Text_Init(Index : Integer);
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
// Name      : Grid_Init1
// Desc      : �׸��� �ʱ�ȭ
//==================================================================
procedure TFormClient.Grid_Init(Index : Integer);
begin
  // �׸��� �ʱ�ȭ
  with NiceGrid1 do begin
    ColCount     := 18;
    Color        := clWindow;
    DefRowHeight := 18;
    Font.Name    := '����ü';
    Font.Size    := 8;
    GutterWidth  := 0;
    GutterKind   := gkNumber;
    GutterFont.Name:='Minion Pro';
    GutterFont.Size:=9;
    Height       := 288;
    RowCount     :=1;
    ShowFooter   :=False;
    ShowGrid     :=True;
    Width        := 776; //755;
    {Columns[0].Title:='ID';       Columns[0].Width  :=80;
    Columns[1].Title:='�����';   Columns[1].Width  :=88;
    Columns[2].Title:='���';     Columns[2].Width  :=48;
    Columns[3].Title:='�̸�';     Columns[3].Width  :=80;
    Columns[4].Title:='����';     Columns[4].Width  :=48;
    Columns[5].Title:='�ڵ���';   Columns[5].Width  :=85;
    Columns[6].Title:='FAX';      Columns[6].Width  :=90;
    Columns[7].Title:='�����ּ�'; Columns[7].Width  :=100;
    Columns[8].Title:='�繫��';   Columns[8].Width  :=85;
    Columns[9].Title:='�ݼ���';   Columns[9].Width  :=85;
    Columns[10].Title:='�޸�';    Columns[10].Width :=110;}
    Clear;
  end; // with
  with NiceGridSync1 do begin
    ColCount     := 2;
    Color        := clWindow;
    DefRowHeight := 18;
    Font.Name    := '����ü';
    Font.Size    := 8;
    Grid         := NiceGrid1;
    GutterWidth  := 22;
    GutterKind   := gkNumber;
    GutterFont.Name:='Minion Pro';
    GutterFont.Size:=9;
    Height       := 288;
    RowCount     :=1;
    ShowFooter   :=False;
    ShowGrid     :=True;
    Width        := 187; //207;
    Columns[0].Title:='ID';         Columns[0].Width  :=68;
    Columns[1].Title:='�ŷ�ó��';   Columns[1].Width  :=92;
    Clear;
  end;
end;

//==================================================================
// Name      : ButtonChargeEndClick
// Desc      : end , close
//==================================================================
procedure TFormClient.ButtonClientEndClick(Sender: TObject);
begin
  close;
end;

end.