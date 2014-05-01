unit Security;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, lhjModule;

type
  TFormSecurity = class(TForm)
    Label1: TLabel;
    EditPW: TEdit;
    ButtonOK: TButton;
    ButtonCancel: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure EditPWKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSecurity: TFormSecurity;

implementation

{$R *.dfm}

//==================================================================
// Name      : EditPWKeyPress
// Desc      : Enter & ESC Key Press
//==================================================================
procedure TFormSecurity.EditPWKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13  then ButtonOKClick(self);       // Enter
  if Key=#27  then ButtonCancelClick(self);         // ESC

end;

//==================================================================
// Name      : ButtonCancelClick
// Desc      : Close
//==================================================================
procedure TFormSecurity.ButtonCancelClick(Sender: TObject);
begin
  editPW.Text:='';
  close;
end;
//==================================================================
// Name      : ButtonOKClick
// Desc      : OK
//==================================================================
procedure TFormSecurity.ButtonOKClick(Sender: TObject);
begin
  //  psub_pointer^ := edSub.Text;
  //�����߻� �Ϲ������ͷ� ����Ǿ����Ƿ� ��������� string��ȯ�ؾ���
  // ���� psub_pointer�� ^String(����ƮŸ�Խ�Ʈ��)���� ����Ǿ��ٸ�
  // �������ȯ���ص� ��
  //string(psub_pointer^) := editPW.Text;

  close;
end;

//==================================================================
// Name      : FormActivate
// Desc      : Inittial
//==================================================================
procedure TFormSecurity.FormActivate(Sender: TObject);
begin
  editPW.Text:='';  // �ؽ�Ʈ �ڽ� �ʱ�ȭ
end;


end.
