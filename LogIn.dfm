object FormLogIn: TFormLogIn
  Left = 0
  Top = 0
  Caption = #47196#44536#51064
  ClientHeight = 130
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #55092#47676#47784#51020'T'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 24
    Top = 36
    Width = 65
    Height = 14
    Caption = #49324' '#50857' '#51088' '#47749
  end
  object Label2: TLabel
    Left = 24
    Top = 68
    Width = 63
    Height = 14
    Caption = 'Pass Word'
  end
  object Edit1: TEdit
    Left = 116
    Top = 32
    Width = 137
    Height = 22
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 116
    Top = 65
    Width = 137
    Height = 22
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 1
    Text = 'Edit2'
  end
  object ButtonOK: TButton
    Left = 268
    Top = 32
    Width = 77
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = ButtonOKClick
  end
  object ButtonCancel: TButton
    Left = 268
    Top = 63
    Width = 77
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = ButtonCancelClick
  end
end
