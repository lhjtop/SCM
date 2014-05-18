program SCM1;

uses
  Forms, Controls, Dialogs, 
  Main1 in 'Main1.pas' {FormMain},
  LoginFrm in 'LoginFrm.pas' {FrmLogin},
  Booth in 'Booth.pas' {FormBooth},
  LogIn in 'LogIn.pas' {FormLogIn},
  Security in 'Security.pas' {FormSecurity},
  lhjModule in 'lhjModule.pas',
  CoManager in 'CoManager.pas' {FormCoManager},
  DailyReport in 'DailyReport.pas' {FormDailyReport},
  CarManager in 'CarManager.pas' {FormCM},
  Charge in 'Charge.pas' {FormCharge},
  Client in 'Client.pas' {FormClient},
  Parts in 'Parts.pas' {FormParts},
  IpGo in 'IpGo.pas' {FormIpGo};

{$R *.res}

var
  strID, strPW: string;

begin
  Application.Initialize;

  // 로그인용 폼을 생성한다.
  with TFrmLogin.Create(Application) do
  begin
    if ShowModal = mrOK then
    begin
      // 인자 값을 받는다.
      strID := edtID.Text;
      strPW := edtPW.Text;
      // 메인폼을 생성한다.
      Application.MainFormOnTaskbar := True;
      Application.Title := '공업사 차량 관리 프로그램';
      Application.CreateForm(TFormMain, FormMain);
      Application.CreateForm(TFormBooth, FormBooth);
      Application.CreateForm(TFormCoManager, FormCoManager);
      Application.CreateForm(TFormDailyReport, FormDailyReport);
      Application.CreateForm(TFormCM, FormCM);
      Application.CreateForm(TFormCharge, FormCharge);
      Application.CreateForm(TFormClient, FormClient);
      Application.CreateForm(TFormParts, FormParts);
      Application.CreateForm(TFormIpGo, FormIpGo);
      // 메인폼에 값을 넘겨준다.
      FrmMain.FID := strID;
      FrmMain.FPW := strPW;
      Hide;
      Free;
      Application.Run;
    end
    else
      MessageDlg('로그인 실패... 프로그램을 종료합니다.', mtError, [mbOK], 0);
  end;
end;


end.
