unit Security;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormSecurity = class(TForm)
    Label1: TLabel;
    EditPW: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSecurity: TFormSecurity;

implementation

{$R *.dfm}

procedure TFormSecurity.Button1Click(Sender: TObject);
begin
  if editPW.Text=pPW then ResultReturn:='OK' else ResultReturn:='FAIL';
  ///////////////////////////////////////////////////////////////
  ///  /////
  ///
end;

procedure TFormSecurity.FormActivate(Sender: TObject);
begin
  //
  editPW.Text:='';  // 텍스트 박스 초기화
end;


end.
