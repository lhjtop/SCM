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

  // �α��ο� ���� �����Ѵ�.
  with TFrmLogin.Create(Application) do
  begin
    if ShowModal = mrOK then
    begin
      // ���� ���� �޴´�.
      strID := edtID.Text;
      strPW := edtPW.Text;
      // �������� �����Ѵ�.
      Application.MainFormOnTaskbar := True;
      Application.Title := '������ ���� ���� ���α׷�';
      Application.CreateForm(TFormMain, FormMain);
      Application.CreateForm(TFormBooth, FormBooth);
      Application.CreateForm(TFormCoManager, FormCoManager);
      Application.CreateForm(TFormDailyReport, FormDailyReport);
      Application.CreateForm(TFormCM, FormCM);
      Application.CreateForm(TFormCharge, FormCharge);
      Application.CreateForm(TFormClient, FormClient);
      Application.CreateForm(TFormParts, FormParts);
      Application.CreateForm(TFormIpGo, FormIpGo);
      // �������� ���� �Ѱ��ش�.
      FrmMain.FID := strID;
      FrmMain.FPW := strPW;
      Hide;
      Free;
      Application.Run;
    end
    else
      MessageDlg('�α��� ����... ���α׷��� �����մϴ�.', mtError, [mbOK], 0);
  end;
end;


end.
