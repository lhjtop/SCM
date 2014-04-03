program SCM1;

uses
  Forms,
  Main1 in 'Main1.pas' {FormMain},
  Booth in 'Booth.pas' {FormBooth},
  LogIn in 'LogIn.pas' {FormLogIn},
  Security in 'Security.pas' {FormSecurity};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormBooth, FormBooth);
  Application.CreateForm(TFormLogIn, FormLogIn);
  Application.CreateForm(TFormSecurity, FormSecurity);
  Application.Run;
end.