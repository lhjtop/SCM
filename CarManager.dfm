object FormCM: TFormCM
  Left = 0
  Top = 0
  Caption = #52264#47049#44288#47532
  ClientHeight = 702
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 1
    Top = 4
    Width = 1010
    Height = 716
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #9733' '#52264' '#47049'  '#54788' '#54889' '#9733
      ExplicitWidth = 947
      ExplicitHeight = 595
      object Label1: TLabel
        Left = 630
        Top = 3
        Width = 278
        Height = 27
        AutoSize = False
        Caption = #51068#51068' '#50629#47924' '#51068#51648'('#52264#47049')'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #55092#47676#50641#49828#54252
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelDate: TLabel
        Left = 240
        Top = 0
        Width = 391
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
      object GroupBox2: TGroupBox
        Left = 494
        Top = 171
        Width = 506
        Height = 484
        Caption = '[ '#49464#48512' '#51221#48372' ]'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 308
          Top = 330
          Width = 36
          Height = 11
          Caption = 'Label2'
        end
        object Label3: TLabel
          Left = 310
          Top = 332
          Width = 36
          Height = 11
          Caption = 'Label2'
        end
        object Label4: TLabel
          Left = 312
          Top = 334
          Width = 36
          Height = 11
          Caption = 'Label2'
        end
        object Label5: TLabel
          Left = 314
          Top = 336
          Width = 36
          Height = 11
          Caption = 'Label2'
        end
        object Label6: TLabel
          Left = 316
          Top = 338
          Width = 36
          Height = 11
          Caption = 'Label2'
        end
        object Label7: TLabel
          Left = 318
          Top = 340
          Width = 36
          Height = 11
          Caption = 'Label2'
        end
        object Label8: TLabel
          Left = 16
          Top = 218
          Width = 48
          Height = 11
          Caption = #44284#49464#50668#48512
        end
        object Label9: TLabel
          Left = 14
          Top = 194
          Width = 48
          Height = 11
          Caption = #46020#51109#53076#46300
        end
        object Label10: TLabel
          Left = 122
          Top = 166
          Width = 12
          Height = 11
          Caption = #13214
        end
        object Label11: TLabel
          Left = 10
          Top = 166
          Width = 48
          Height = 11
          Caption = #51452#54665#44144#47532
        end
        object Label12: TLabel
          Left = 7
          Top = 142
          Width = 36
          Height = 11
          Caption = #46321#47197#51068
        end
        object Label13: TLabel
          Left = 108
          Top = 118
          Width = 36
          Height = 11
          Caption = #52636#44256#51068
        end
        object Label14: TLabel
          Left = 106
          Top = 90
          Width = 48
          Height = 11
          Caption = #52636#44256#50696#51221
        end
        object Label15: TLabel
          Left = 10
          Top = 90
          Width = 36
          Height = 11
          Caption = #51077#44256#51068
        end
        object Label16: TLabel
          Left = 10
          Top = 65
          Width = 36
          Height = 11
          Caption = #44144#47000#52376
        end
        object Label17: TLabel
          Left = 10
          Top = 44
          Width = 30
          Height = 11
          Caption = #52264' '#47049
        end
        object Label18: TLabel
          Left = 10
          Top = 20
          Width = 30
          Height = 11
          Caption = 'ID'
        end
        object Edit1: TEdit
          Left = 52
          Top = 17
          Width = 121
          Height = 19
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 0
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 52
          Top = 40
          Width = 121
          Height = 19
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 1
          Text = 'Edit2'
        end
        object Edit3: TEdit
          Left = 179
          Top = 40
          Width = 121
          Height = 19
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 2
          Text = 'Edit3'
        end
        object CheckBox1: TCheckBox
          Left = 88
          Top = 142
          Width = 97
          Height = 17
          Caption = #46321#47197#51613#50630#51020
          TabOrder = 3
        end
        object CheckBox2: TCheckBox
          Left = 162
          Top = 216
          Width = 97
          Height = 17
          Caption = #44228#49328#49436#48156#54665
          TabOrder = 4
        end
        object CheckBox3: TCheckBox
          Left = 162
          Top = 239
          Width = 97
          Height = 17
          Caption = #53685#51109#48156#54665
          TabOrder = 5
        end
        object CheckBox4: TCheckBox
          Left = 80
          Top = 268
          Width = 97
          Height = 17
          Caption = #45824#52264#49324#50857
          TabOrder = 6
        end
      end
      object MonthCalendar1: TMonthCalendar
        Left = 3
        Top = -4
        Width = 218
        Height = 169
        Date = 41697.433623182870000000
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        OnClick = MonthCalendar1Click
      end
      object GroupBox3: TGroupBox
        Left = 224
        Top = 26
        Width = 776
        Height = 134
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 171
        Width = 495
        Height = 484
        Caption = '[ '#54788#51116' '#51116#44256': '#52509' ___'#45824' / '#44552#51068#52636#44256#50696#51221': ___'#45824' ]'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object NiceGrid1: TNiceGrid
          Left = 3
          Top = 17
          Width = 489
          Height = 464
          Cursor = 101
          ColCount = 8
          RowCount = 30
          DefRowHeight = 15
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
          Columns = <
            item
              Title = #44144#47000#52376
              Width = 48
              Strings.Strings = (
                #51088#51077#44256)
            end
            item
              Title = #52264#47049#48264#54840
              Width = 80
              Strings.Strings = (
                #49436#50872'12'#44032'8989')
            end
            item
              Title = #52264#47049#47749
              Width = 100
              Strings.Strings = (
                #44536#47004#46300#49828#53440#47113#49828'@')
            end
            item
              Title = #48372#54744
              Width = 42
              Strings.Strings = (
                #48260#49828#44277#51228' ')
            end
            item
              Title = #45812#48372
              Width = 30
              Strings.Strings = (
                #45824#47932)
            end
            item
              Title = #51077#44256
              Width = 46
              HorzAlign = haRight
              Strings.Strings = (
                '2088/99/88')
            end
            item
              Title = #52636#44256
              Width = 46
              HorzAlign = haRight
              Strings.Strings = (
                '08/31')
            end
            item
              Title = #49345#53468
              Width = 50
              Strings.Strings = (
                #26032' '#24460)
            end>
          GutterKind = gkNumber
          GutterWidth = 18
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
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' '#44160'  '#49353' '
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 166
        Width = 495
        Height = 429
        Caption = '[ '#54788#51116' '#51116#44256': '#52509' ___'#45824' / '#44552#51068#52636#44256#50696#51221': ___'#45824' ]'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object NiceGrid2: TNiceGrid
          Left = 3
          Top = 17
          Width = 485
          Height = 410
          Cursor = 101
          ColCount = 8
          RowCount = 30
          DefRowHeight = 15
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
          Columns = <
            item
              Title = #44144#47000#52376
              Width = 48
              Strings.Strings = (
                #51088#51077#44256)
            end
            item
              Title = #52264#47049#48264#54840
              Width = 80
              Strings.Strings = (
                #49436#50872'12'#44032'8989')
            end
            item
              Title = #52264#47049#47749
              Width = 100
              Strings.Strings = (
                #44536#47004#46300#49828#53440#47113#49828'@')
            end
            item
              Title = #48372#54744
              Width = 42
              Strings.Strings = (
                #48260#49828#44277#51228' ')
            end
            item
              Title = #45812#48372
              Width = 30
              Strings.Strings = (
                #45824#47932)
            end
            item
              Title = #51077#44256
              Width = 46
              HorzAlign = haRight
              Strings.Strings = (
                '2088/99/88')
            end
            item
              Title = #52636#44256
              Width = 46
              HorzAlign = haRight
              Strings.Strings = (
                '08/31')
            end
            item
              Title = #49345#53468
              Width = 50
              Strings.Strings = (
                #26032' '#24460)
            end>
          GutterKind = gkNumber
          GutterWidth = 18
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
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 12
        Width = 933
        Height = 85
        Caption = '[ '#44160' '#49353' ]'
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = #50629' '#47924' '#54788' '#54889
      ImageIndex = 2
      object GroupBox7: TGroupBox
        Left = 3
        Top = 196
        Width = 937
        Height = 163
        Caption = '['#52264#47049' '#45572#51201' '#54788#54889']'
        TabOrder = 0
      end
      object GroupBox8: TGroupBox
        Left = 3
        Top = 374
        Width = 937
        Height = 218
        Caption = '['#52264#47049' '#44592#44036' '#54788#54889']'
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = #52397' '#44396' '#54788' '#54889
      ImageIndex = 3
      object GroupBox6: TGroupBox
        Left = 0
        Top = 18
        Width = 937
        Height = 163
        Caption = '['#52264#47049' '#52397#44396' '#54788#54889']'
        TabOrder = 0
      end
    end
  end
  object PanelMessage: TPanel
    Left = 0
    Top = 683
    Width = 1011
    Height = 19
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 627
    ExplicitWidth = 957
    object LabelMessage: TLabel
      Left = 806
      Top = 4
      Width = 462
      Height = 12
      Caption = #48376' '#46972#48296' '#52980#54252#45324#53944#45716' '#50880#51649#51060#45716' '#44544#51088#47484' '#53580#49828#53944#54616#44592' '#50948#54644' '#50672#49845#50857#51004#47196' '#47564#46308#50632#49845#45768#45796'...'
    end
    object ButtonOK: TButton
      Left = 929
      Top = 1
      Width = 26
      Height = 17
      Caption = 'OK'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ButtonOKClick
    end
  end
  object Timer1: TTimer
    Interval = 5
    OnTimer = Timer1Timer
    Left = 886
    Top = 620
  end
end