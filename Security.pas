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
  //에러발생 일반포인터로 선언되었으므로 명시적으로 string변환해야함
  // 만일 psub_pointer가 ^String(포인트타입스트링)으로 선언되었다면
  // 명시적변환안해도 됨
  //string(psub_pointer^) := editPW.Text;

  close;
end;

//==================================================================
// Name      : FormActivate
// Desc      : Inittial
//==================================================================
procedure TFormSecurity.FormActivate(Sender: TObject);
begin
  editPW.Text:='';  // 텍스트 박스 초기화
end;


end.
