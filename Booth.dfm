object FormBooth: TFormBooth
  Left = 0
  Top = 0
  Caption = #48176#52636#49884#49444' '#48169#51648#49884#49444' '#51068#51648
  ClientHeight = 496
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 11
  object LabelDate: TLabel
    Left = 250
    Top = 19
    Width = 447
    Height = 26
    Alignment = taCenter
    AutoSize = False
    Caption = '2014 '#45380' 02'#50900' 28'#51068' '#44552#50836#51068
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #55092#47676#50641#49828#54252
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MonthCalendar1: TMonthCalendar
    Left = 3
    Top = 19
    Width = 222
    Height = 195
    Date = 41697.407277662040000000
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    OnClick = MonthCalendar1Click
  end
  object NiceGrid1: TNiceGrid
    Left = 3
    Top = 220
    Width = 726
    Height = 255
    Cursor = 101
    ColCount = 0
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Columns = <>
    GutterFont.Charset = DEFAULT_CHARSET
    GutterFont.Color = clWindowText
    GutterFont.Height = -11
    GutterFont.Name = 'Tahoma'
    GutterFont.Style = []
    ShowFooter = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 231
    Top = 50
    Width = 498
    Height = 164
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 5
      Top = 55
      Width = 187
      Height = 92
      Caption = '[ '#44032#46041' '#49884#44036' (Hr) ]'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #55092#47676#50641#49828#54252
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 9
        Top = 42
        Width = 41
        Height = 14
        Caption = '1 '#54840' '#44592
      end
      object Label4: TLabel
        Left = 6
        Top = 70
        Width = 44
        Height = 14
        Caption = '2 '#54840' '#44592
      end
      object Label6: TLabel
        Left = 120
        Top = 20
        Width = 31
        Height = 14
        Align = alCustom
        Alignment = taCenter
        Caption = #44148' '#51312
      end
      object Label5: TLabel
        Left = 57
        Top = 20
        Width = 31
        Height = 14
        Align = alCustom
        Alignment = taCenter
        Caption = #46020' '#51109
      end
      object Edit1: TEdit
        Left = 57
        Top = 36
        Width = 57
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 120
        Top = 36
        Width = 57
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'Edit2'
      end
      object Edit3: TEdit
        Left = 57
        Top = 65
        Width = 57
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'Edit3'
      end
      object Edit4: TEdit
        Left = 120
        Top = 65
        Width = 57
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 3
        Text = 'Edit4'
      end
    end
    object GroupBox3: TGroupBox
      Left = 191
      Top = 55
      Width = 215
      Height = 92
      Caption = '[ '#51204#47141' '#49324#50857#47049' (KW) ]'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #55092#47676#50641#49828#54252
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label7: TLabel
        Left = 8
        Top = 42
        Width = 41
        Height = 14
        Caption = '1 '#54840' '#44592
      end
      object Label8: TLabel
        Left = 5
        Top = 70
        Width = 44
        Height = 14
        Caption = '2 '#54840' '#44592
      end
      object Label9: TLabel
        Left = 52
        Top = 22
        Width = 66
        Height = 14
        Caption = #51201#49328#44228'(KW)'
      end
      object Label10: TLabel
        Left = 129
        Top = 22
        Width = 78
        Height = 14
        Caption = #51068#51068#49324#50857#49884#44036
      end
      object Edit5: TEdit
        Left = 52
        Top = 36
        Width = 71
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit6: TEdit
        Left = 129
        Top = 36
        Width = 78
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'Edit2'
      end
      object Edit7: TEdit
        Left = 52
        Top = 65
        Width = 71
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = 'Edit3'
      end
      object Edit8: TEdit
        Left = 129
        Top = 65
        Width = 78
        Height = 22
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 3
        Text = 'Edit4'
      end
    end
    object GroupBox4: TGroupBox
      Left = 5
      Top = 8
      Width = 401
      Height = 35
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #55092#47676#50641#49828#54252
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 12
        Top = 11
        Width = 31
        Height = 14
        Caption = #45216' '#50472
      end
      object Label2: TLabel
        Left = 279
        Top = 12
        Width = 31
        Height = 14
        Caption = #50728' '#46020
      end
      object Label11: TLabel
        Left = 363
        Top = 12
        Width = 13
        Height = 14
        Caption = #8451
      end
      object Edit9: TEdit
        Left = 57
        Top = 6
        Width = 211
        Height = 22
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'Edit9'
      end
      object Edit10: TEdit
        Left = 315
        Top = 8
        Width = 46
        Height = 22
        Alignment = taCenter
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = 'Edit9'
      end
    end
    object ButtonClear: TButton
      Left = 418
      Top = 9
      Width = 69
      Height = 27
      Caption = 'Clear'
      TabOrder = 3
      OnClick = ButtonClearClick
    end
    object ButtonTimeComp: TButton
      Left = 418
      Top = 39
      Width = 69
      Height = 27
      Caption = #49884#44036#44228#49328
      TabOrder = 4
    end
    object ButtonSave: TButton
      Left = 418
      Top = 69
      Width = 69
      Height = 27
      Caption = #51200#51109
      TabOrder = 5
    end
    object ButtonDelete: TButton
      Left = 418
      Top = 100
      Width = 69
      Height = 27
      Caption = #49325#51228
      TabOrder = 6
      OnClick = ButtonDeleteClick
    end
    object ButtonClose: TButton
      Left = 418
      Top = 133
      Width = 69
      Height = 27
      Caption = #45803#44592
      TabOrder = 7
      OnClick = ButtonCloseClick
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=N:\DataBase\CarList' +
      '.mdb;Persist Security Info=False;Jet OLEDB:Database Password=sos' +
      'a2011'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 458
    Top = 202
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 536
    Top = 194
  end
  object DataSource1: TDataSource
    Left = 588
    Top = 202
  end
end
