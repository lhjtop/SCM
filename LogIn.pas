unit LogIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLogIn = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ButtonOK: TButton;
    ButtonCancel: TButton;
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogIn: TFormLogIn;

implementation

{$R *.dfm}

procedure TFormLogIn.ButtonCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFormLogIn.ButtonOKClick(Sender: TObject);
begin
  //
  ///
  ///
  //
  close;
end;

end.
