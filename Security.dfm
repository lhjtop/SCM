object FormSecurity: TFormSecurity
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Security'
  ClientHeight = 144
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #55092#47676#50641#49828#54252
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 25
    Width = 350
    Height = 14
    Caption = #51088#47308' '#48372#50504#51012' '#50948#54644#49436' '#54532#47196#44536#47016' '#48372#50504' '#48264#54840#47484' '#51077#47141#54616#50668' '#51452#49464#50836'.'
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #55092#47676#50641#49828#54252
    Font.Style = []
    ParentFont = False
  end
  object EditPW: TEdit
    Left = 47
    Top = 56
    Width = 290
    Height = 21
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    Text = 'EditPW'
  end
  object Button1: TButton
    Left = 47
    Top = 92
    Width = 85
    Height = 29
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 252
    Top = 92
    Width = 85
    Height = 29
    Caption = 'Cancel'
    TabOrder = 2
  end
end
