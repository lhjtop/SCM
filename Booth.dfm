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
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 11
  object LabelDate: TLabel
    Left = 3
    Top = 14
    Width = 420
    Height = 29
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
    Top = 45
    Width = 222
    Height = 171
    Date = 41697.397733587960000000
    ImeName = 'Microsoft Office IME 2007'
    TabOrder = 0
    OnClick = MonthCalendar1Click
  end
  object NiceGrid1: TNiceGrid
    Left = 3
    Top = 222
    Width = 726
    Height = 269
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
    Left = 228
    Top = 49
    Width = 498
    Height = 162
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 5
      Top = 7
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
        TabStop = False
        Alignment = taRightJustify
        Color = clMenu
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #55092#47676#50641#49828#54252
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 120
        Top = 36
        Width = 57
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        Color = clMenu
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #55092#47676#50641#49828#54252
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 1
        Text = 'Edit2'
      end
      object Edit3: TEdit
        Left = 57
        Top = 65
        Width = 57
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        Color = clMenu
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #55092#47676#50641#49828#54252
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 2
        Text = 'Edit3'
      end
      object Edit4: TEdit
        Left = 120
        Top = 65
        Width = 57
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        Color = clMenu
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #55092#47676#50641#49828#54252
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 3
        Text = 'Edit4'
      end
    end
    object GroupBox3: TGroupBox
      Left = 191
      Top = 7
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
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        NumbersOnly = True
        TabOrder = 2
        Text = 'Edit1'
        OnKeyPress = Edit5KeyPress
      end
      object Edit6: TEdit
        Left = 129
        Top = 36
        Width = 78
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        Color = clMenu
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #55092#47676#50641#49828#54252
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 0
        Text = 'Edit2'
      end
      object Edit7: TEdit
        Left = 52
        Top = 65
        Width = 71
        Height = 22
        Alignment = taRightJustify
        ImeMode = imSAlpha
        ImeName = 'Microsoft Office IME 2007'
        NumbersOnly = True
        TabOrder = 3
        Text = 'Edit3'
        OnKeyPress = Edit7KeyPress
      end
      object Edit8: TEdit
        Left = 129
        Top = 65
        Width = 78
        Height = 22
        TabStop = False
        Alignment = taRightJustify
        Color = clMenu
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #55092#47676#50641#49828#54252
        Font.Style = [fsBold]
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 1
        Text = 'Edit4'
      end
    end
    object ButtonClear: TButton
      Left = 412
      Top = 9
      Width = 79
      Height = 26
      Caption = 'Clear'
      TabOrder = 2
      OnClick = ButtonClearClick
    end
    object ButtonTimeComp: TButton
      Left = 412
      Top = 39
      Width = 79
      Height = 26
      Caption = #49884#44036#44228#49328
      TabOrder = 3
      OnClick = ButtonTimeCompClick
    end
    object ButtonSave: TButton
      Left = 412
      Top = 69
      Width = 79
      Height = 26
      Caption = #51200#51109
      TabOrder = 4
      OnClick = ButtonSaveClick
    end
    object ButtonDelete: TButton
      Left = 412
      Top = 100
      Width = 79
      Height = 26
      Caption = #49325#51228
      TabOrder = 5
      OnClick = ButtonDeleteClick
    end
    object ButtonClose: TButton
      Left = 412
      Top = 131
      Width = 79
      Height = 26
      Caption = #45803#44592
      TabOrder = 6
      OnClick = ButtonCloseClick
    end
    object Memo1: TMemo
      Left = 5
      Top = 104
      Width = 401
      Height = 52
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      TabOrder = 7
    end
  end
  object GroupBox4: TGroupBox
    Left = 422
    Top = 11
    Width = 307
    Height = 33
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #55092#47676#50641#49828#54252
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 12
      Top = 11
      Width = 31
      Height = 14
      Caption = #45216' '#50472
    end
    object Label2: TLabel
      Left = 197
      Top = 11
      Width = 31
      Height = 14
      Caption = #50728' '#46020
    end
    object Label11: TLabel
      Left = 281
      Top = 11
      Width = 13
      Height = 14
      Caption = #8451
    end
    object Edit9: TEdit
      Left = 57
      Top = 6
      Width = 128
      Height = 22
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = 'Edit9'
      OnKeyPress = Edit9KeyPress
    end
    object Edit10: TEdit
      Left = 233
      Top = 6
      Width = 46
      Height = 22
      Alignment = taCenter
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #55092#47676#50641#49828#54252
      Font.Style = []
      ImeMode = imSAlpha
      ImeName = 'Microsoft Office IME 2007'
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      Text = 'Edit9'
      OnKeyPress = Edit10KeyPress
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=N:\DataBase\CarList' +
      '.mdb;Persist Security Info=False;Jet OLEDB:Database Password=sos' +
      'a2011'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 522
    Top = 302
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 588
    Top = 306
  end
  object DataSource1: TDataSource
    Left = 656
    Top = 310
  end
end
