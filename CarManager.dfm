object FormCM: TFormCM
  Left = 0
  Top = 0
  Caption = #52264#47049#44288#47532
  ClientHeight = 702
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1025
    Height = 683
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #9733' '#52264' '#47049'  '#54788' '#54889' '#9733
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1017
        Height = 688
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object LabelDate: TLabel
          Left = 234
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
        object Label1: TLabel
          Left = 622
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
        object GroupBoxFind: TGroupBox
          Left = 1
          Top = 26
          Width = 1018
          Height = 143
          Caption = '[ '#44160' '#49353' ]'
          TabOrder = 4
          object RadioGroup2: TRadioGroup
            Left = 4
            Top = 18
            Width = 487
            Height = 39
            Columns = 5
            ItemIndex = 0
            Items.Strings = (
              #52264#47049#48264#54840
              #44144' '#47000' '#52376
              #48372#54744#49324#48324
              #47784#46304#51088#47308)
            TabOrder = 0
            OnClick = RadioGroup2Click
          end
          object GroupBox18: TGroupBox
            Left = 492
            Top = 12
            Width = 524
            Height = 45
            Caption = '[ '#44592'  '#44036' ]'
            TabOrder = 1
            object Label38: TLabel
              Left = 106
              Top = 20
              Width = 6
              Height = 12
              Caption = '~'
            end
            object RadioTerm1: TRadioButton
              Left = 228
              Top = 16
              Width = 52
              Height = 23
              Caption = '1'#44060#50900
              TabOrder = 0
              OnClick = RadioTerm1Click
            end
            object RadioTerm2: TRadioButton
              Left = 289
              Top = 16
              Width = 52
              Height = 23
              Caption = '3'#44060#50900
              TabOrder = 1
              OnClick = RadioTerm2Click
            end
            object RadioTerm3: TRadioButton
              Left = 350
              Top = 16
              Width = 52
              Height = 23
              Caption = '6'#44060#50900
              TabOrder = 2
              OnClick = RadioTerm3Click
            end
            object RadioTerm4: TRadioButton
              Left = 411
              Top = 16
              Width = 52
              Height = 23
              Caption = '1'#45380
              TabOrder = 3
              OnClick = RadioTerm4Click
            end
            object EditDate40: TEdit
              Left = 8
              Top = 17
              Width = 73
              Height = 20
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 4
              Text = 'EditDate40'
            end
            object Button21: TButton
              Left = 84
              Top = 16
              Width = 17
              Height = 22
              Caption = '...'
              TabOrder = 5
              OnClick = Button21Click
            end
            object EditDate41: TEdit
              Left = 122
              Top = 17
              Width = 73
              Height = 20
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 6
              Text = 'EditDate41'
            end
            object Button22: TButton
              Left = 198
              Top = 16
              Width = 17
              Height = 22
              Caption = '...'
              TabOrder = 7
              OnClick = Button22Click
            end
            object RadioTerm5: TRadioButton
              Left = 461
              Top = 16
              Width = 58
              Height = 23
              Caption = #51204#44592#44036
              TabOrder = 8
              OnClick = RadioTerm5Click
            end
          end
          object GroupBox19: TGroupBox
            Left = 4
            Top = 58
            Width = 487
            Height = 82
            TabOrder = 2
            object Label39: TLabel
              Left = 19
              Top = 13
              Width = 66
              Height = 12
              Caption = #44228#51221' '#47532#49828#53944
            end
            object Label50: TLabel
              Left = 16
              Top = 55
              Width = 24
              Height = 12
              Caption = 'Home'
            end
            object Label51: TLabel
              Left = 55
              Top = 55
              Width = 18
              Height = 12
              Caption = 'End'
            end
            object Label52: TLabel
              Left = 82
              Top = 55
              Width = 36
              Height = 12
              Caption = 'ReFind'
            end
            object EditFind: TEdit
              Left = 100
              Top = 9
              Width = 255
              Height = 20
              ImeMode = imSHanguel
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 0
              Text = 'EditFind'
              OnKeyPress = EditFindKeyPress
            end
            object ButtonBB: TButton
              Left = 19
              Top = 28
              Width = 19
              Height = 21
              Caption = #8592
              TabOrder = 1
              OnClick = ButtonBBClick
            end
            object ButtonFF: TButton
              Left = 55
              Top = 28
              Width = 19
              Height = 21
              Caption = #8594
              TabOrder = 2
              OnClick = ButtonFFClick
            end
            object ButtonRe: TButton
              Left = 91
              Top = 28
              Width = 19
              Height = 21
              Caption = 'Re'
              TabOrder = 3
              OnClick = ButtonReClick
            end
            object ButtonFindGo: TButton
              Left = 404
              Top = 5
              Width = 75
              Height = 25
              Caption = #52286#44592
              TabOrder = 4
              OnClick = ButtonFindGoClick
            end
          end
          object GroupBox20: TGroupBox
            Left = 492
            Top = 58
            Width = 523
            Height = 40
            TabOrder = 3
            object Label40: TLabel
              Left = 16
              Top = 15
              Width = 66
              Height = 12
              Caption = #44160#49353' '#44208#44284' :'
            end
            object Button26: TButton
              Left = 99
              Top = 8
              Width = 104
              Height = 25
              Caption = 'Excel'#47196' '#51200#51109
              TabOrder = 0
              OnClick = Button26Click
            end
            object Button27: TButton
              Left = 233
              Top = 8
              Width = 104
              Height = 25
              Caption = #52636' '#47141
              TabOrder = 1
            end
            object Button28: TButton
              Left = 385
              Top = 8
              Width = 104
              Height = 25
              Caption = #45803' '#44592
              TabOrder = 2
              OnClick = Button28Click
            end
          end
        end
        object MonthCalendar1: TMonthCalendar
          Left = 3
          Top = -4
          Width = 218
          Height = 171
          Date = 41697.368227662040000000
          ImeName = 'Microsoft Office IME 2007'
          TabOrder = 0
          OnClick = MonthCalendar1Click
        end
        object GroupBox3: TGroupBox
          Left = 224
          Top = 26
          Width = 795
          Height = 134
          TabOrder = 1
          object Button2: TButton
            Left = 296
            Top = 9
            Width = 85
            Height = 27
            Caption = #49888#44508' '#51077#44256
            TabOrder = 0
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 395
            Top = 9
            Width = 85
            Height = 27
            Caption = #52636'   '#44256
            TabOrder = 1
          end
          object Button4: TButton
            Left = 494
            Top = 9
            Width = 85
            Height = 27
            Caption = #49688'   '#51221
            TabOrder = 2
          end
          object Button5: TButton
            Left = 592
            Top = 9
            Width = 85
            Height = 27
            Caption = #49325'   '#51228
            TabOrder = 3
          end
          object Button7: TButton
            Left = 296
            Top = 37
            Width = 85
            Height = 27
            Caption = #52286#50500#48372#44592
            TabOrder = 4
            OnClick = Button7Click
          end
          object Button9: TButton
            Left = 395
            Top = 37
            Width = 85
            Height = 27
            Caption = #51068#51648' '#52636#47141
            TabOrder = 5
          end
          object Button14: TButton
            Left = 494
            Top = 37
            Width = 85
            Height = 27
            Caption = #44172#49884#54032#50857#52636#47141
            TabOrder = 6
          end
          object ButtonEnd: TButton
            Left = 689
            Top = 37
            Width = 85
            Height = 27
            Caption = #45803' '#44592
            TabOrder = 7
            OnClick = ButtonEndClick
          end
          object NiceGrid6: TNiceGrid
            Left = 3
            Top = 9
            Width = 265
            Height = 121
            Cursor = 101
            ColCount = 0
            Color = cl3DLight
            GridColor = cl3DLight
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
            TabOrder = 8
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 175
          Width = 495
          Height = 483
          Caption = '[ '#54788#51116' '#51116#44256': '#52509' ___'#45824' / '#44552#51068#52636#44256#50696#51221': ___'#45824' ]'
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object NiceGrid1: TNiceGrid
            Left = 3
            Top = 17
            Width = 490
            Height = 462
            Cursor = 101
            ColCount = 8
            RowCount = 30
            DefRowHeight = 16
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
                Title = #51077#44256#51068
                Width = 46
                HorzAlign = haRight
                Strings.Strings = (
                  '2088/99/88')
              end
              item
                Title = #50696#51221#51068
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
            GutterWidth = 14
            GutterFont.Charset = ANSI_CHARSET
            GutterFont.Color = clWindowText
            GutterFont.Height = -11
            GutterFont.Name = 'Minion Pro'
            GutterFont.Style = []
            ShowFooter = False
            OnDrawCell = NiceGrid1DrawCell
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 0
            OnClick = NiceGrid1Click
            OnDblClick = NiceGrid1DblClick
            OnMouseDown = NiceGrid1MouseDown
            OnKeyDown = NiceGrid1KeyDown
          end
        end
        object GroupBox2: TGroupBox
          Left = 493
          Top = 100
          Width = 526
          Height = 555
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Shape1: TShape
            Left = 2
            Top = 79
            Width = 521
            Height = 24
            Brush.Color = clGradientActiveCaption
            Pen.Color = clBtnFace
          end
          object Label5: TLabel
            Left = 161
            Top = 108
            Width = 55
            Height = 11
            AutoSize = False
            Caption = #50672' '#46973' '#52376
          end
          object Label13: TLabel
            Left = 330
            Top = 85
            Width = 55
            Height = 11
            AutoSize = False
            Caption = #52636' '#44256' '#51068
          end
          object Label14: TLabel
            Left = 161
            Top = 85
            Width = 55
            Height = 11
            AutoSize = False
            Caption = #52636#44256#50696#51221
          end
          object Label15: TLabel
            Left = 5
            Top = 85
            Width = 48
            Height = 11
            AutoSize = False
            Caption = #51077' '#44256' '#51068
          end
          object Label16: TLabel
            Left = 5
            Top = 150
            Width = 48
            Height = 11
            AutoSize = False
            Caption = #44144' '#47000' '#52376
          end
          object Label7: TLabel
            Left = 5
            Top = 108
            Width = 48
            Height = 11
            AutoSize = False
            Caption = #50868' '#51204' '#51088
          end
          object Label8: TLabel
            Left = 156
            Top = 151
            Width = 60
            Height = 11
            AutoSize = False
            Caption = #49324#50629#51088#50668#48512
          end
          object Label6: TLabel
            Left = 330
            Top = 108
            Width = 55
            Height = 11
            AutoSize = False
            Caption = #51452#48124#48264#54840
          end
          object Label19: TLabel
            Left = 5
            Top = 129
            Width = 48
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Caption = #51452'    '#49548
          end
          object GroupBoxBoHum: TGroupBox
            Left = 0
            Top = 335
            Width = 524
            Height = 224
            Caption = '[ '#48372' '#54744' ]'
            TabOrder = 3
            object Shape2: TShape
              Left = 2
              Top = 196
              Width = 520
              Height = 26
              Align = alBottom
              Brush.Color = clGradientActiveCaption
              Pen.Color = clBtnFace
              ExplicitTop = 197
            end
            object Label2: TLabel
              Left = 7
              Top = 203
              Width = 102
              Height = 11
              Caption = #52397#44396#44228'('#48512#54408'+'#44277#51076')'
            end
            object Label3: TLabel
              Left = 203
              Top = 203
              Width = 102
              Height = 11
              Caption = #51077#44552#44228'('#48512#54408'+'#44277#51076')'
            end
            object Label20: TLabel
              Left = 402
              Top = 203
              Width = 30
              Height = 11
              Caption = #52264' '#50529
            end
            object NiceGrid4: TNiceGrid
              Left = 2
              Top = 13
              Width = 520
              Height = 93
              Cursor = 101
              ColCount = 10
              RowCount = 3
              DefRowHeight = 15
              Color = cl3DLight
              HeaderFont.Charset = HANGEUL_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = #44404#47548#52404
              HeaderFont.Style = []
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'Tahoma'
              FooterFont.Style = []
              Columns = <
                item
                  Title = #48372#54744#49324
                  Width = 50
                  Color = cl3DLight
                  Strings.Strings = (
                    #54868#47932#44277#51228
                    #49340#49457
                    #49340#49457)
                end
                item
                  Title = #45812#48372
                  Width = 30
                  Color = cl3DLight
                  Strings.Strings = (
                    #51088#52264
                    #45824#47932
                    #51088#52264)
                end
                item
                  Title = #44284#49892
                  Width = 25
                  Color = cl3DLight
                  Strings.Strings = (
                    '100'
                    '100'
                    '100')
                end
                item
                  Title = #51217#49688#48264#54840
                  Width = 96
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '07-04-2014-00123'
                    '20140605-12345'
                    '20140404-99999')
                end
                item
                  Title = #51221#47456#51228
                  Width = 43
                  Color = cl3DLight
                  Strings.Strings = (
                    '-'
                    #51221#47456'20'
                    #51221#47456'5')
                end
                item
                  Title = #47732#52293#44552
                  Width = 47
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '500,000'
                    '-'
                    '500,000')
                end
                item
                  Title = #48155#51008#47732#52293#44552
                  Width = 47
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '480,000'
                    '-'
                    '200,000')
                end
                item
                  Title = #45812#45817
                  Width = 48
                  Color = cl3DLight
                  Strings.Strings = (
                    #54861#44600#46041
                    #49888#49324#51076#45817
                    #51204#50864#52824)
                end
                item
                  Title = #50672#46973#52376
                  Width = 85
                  Color = cl3DLight
                  Strings.Strings = (
                    '010-1234-5678')
                end
                item
                  Title = 'FAX'
                  Width = 90
                  Color = cl3DLight
                  Strings.Strings = (
                    '0504-8989-8989')
                end>
              GutterWidth = 1
              GutterFont.Charset = DEFAULT_CHARSET
              GutterFont.Color = clWindowText
              GutterFont.Height = -11
              GutterFont.Name = 'Tahoma'
              GutterFont.Style = []
              ShowFooter = False
              OnDrawCell = NiceGrid4DrawCell
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #49352#44404#47548
              Font.Style = []
              Align = alTop
              TabOrder = 0
            end
            object NiceGrid5: TNiceGrid
              Left = 2
              Top = 103
              Width = 520
              Height = 93
              Cursor = 101
              ColCount = 11
              RowCount = 3
              DefRowHeight = 15
              Color = cl3DLight
              HeaderFont.Charset = HANGEUL_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = #44404#47548#52404
              HeaderFont.Style = []
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'Tahoma'
              FooterFont.Style = []
              Columns = <
                item
                  Title = #48372#54744#49324
                  Width = 50
                  Color = cl3DLight
                end
                item
                  Title = #52397#44396#51068#51088
                  Width = 50
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '2014/04/29')
                end
                item
                  Title = #52397#44396#50529
                  Width = 65
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '9,000,000'
                    '10,000,000')
                end
                item
                  Title = #51077#44552#51068#51088
                  Width = 50
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '2014/04/28')
                end
                item
                  Title = #51077#44552#50529
                  Width = 65
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '99,999,999')
                end
                item
                  Title = #54624#51064#50529
                  Width = 60
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '99,000,000')
                end
                item
                  Title = '(%)'
                  Width = 40
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '100.00'
                    '98.56'
                    '60.53')
                end
                item
                  Title = #47700#47784
                  Width = 50
                  Color = cl3DLight
                end
                item
                  Title = #49436#48708#49828
                  Width = 48
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '200,000')
                end
                item
                  Title = 'O Date'
                  Width = 50
                  Color = cl3DLight
                  HorzAlign = haRight
                end
                item
                  Title = 'O = '
                  Width = 59
                  Color = cl3DLight
                  HorzAlign = haRight
                  Strings.Strings = (
                    '500,000')
                end>
              GutterWidth = 1
              GutterFont.Charset = DEFAULT_CHARSET
              GutterFont.Color = clWindowText
              GutterFont.Height = -11
              GutterFont.Name = 'Tahoma'
              GutterFont.Style = []
              ShowFooter = False
              OnDrawCell = NiceGrid5DrawCell
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #44404#47548#52404
              Font.Style = []
              TabOrder = 1
            end
            object Edit17: TEdit
              Left = 111
              Top = 199
              Width = 77
              Height = 19
              Hint = #52397#44396#50529' '#44592#51456#51004#47196' '#48512#54408','#44277#51076','#47732#52293#44552#51032' '#54633#44228' '#51077#45768#45796'.'
              Alignment = taRightJustify
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 2
              Text = '99,999,999'
            end
            object Edit18: TEdit
              Left = 311
              Top = 199
              Width = 77
              Height = 19
              Hint = #48372#54744#49324#50640#49436' '#51077#44552#46108' '#44277#51076#44284' '#52264#51452#50640#44172' '#48155#51008' '#47732#52293#44552', '#48512#54408#49324' '#48708#50857#51008' '#54624#51064' '#50630#51060' '#54633#49328#46108' '#44552#50529#51077#45768#45796'.'
              Alignment = taRightJustify
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 3
              Text = '99,999,999'
            end
            object Edit19: TEdit
              Left = 441
              Top = 199
              Width = 77
              Height = 19
              Alignment = taRightJustify
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 4
              Text = '99,999,999'
            end
          end
          object GroupBox9: TGroupBox
            Left = 0
            Top = 5
            Width = 526
            Height = 73
            Caption = '[ '#52264#47049' ]'
            TabOrder = 2
            object Label18: TLabel
              Left = 5
              Top = 15
              Width = 48
              Height = 11
              Alignment = taCenter
              AutoSize = False
              Caption = 'ID'
            end
            object Label17: TLabel
              Left = 161
              Top = 16
              Width = 48
              Height = 11
              Caption = #52264#47049#48264#54840
            end
            object Label12: TLabel
              Left = 5
              Top = 35
              Width = 48
              Height = 11
              AutoSize = False
              Caption = #46321' '#47197' '#51068
            end
            object Label4: TLabel
              Left = 161
              Top = 35
              Width = 48
              Height = 11
              Caption = #52264#45824#48264#54840
            end
            object Label11: TLabel
              Left = 5
              Top = 55
              Width = 48
              Height = 11
              AutoSize = False
              Caption = #51452#54665#44144#47532
            end
            object Label10: TLabel
              Left = 137
              Top = 55
              Width = 12
              Height = 11
              Caption = #13214
            end
            object Label9: TLabel
              Left = 161
              Top = 55
              Width = 48
              Height = 11
              Caption = #46020#51109#53076#46300
            end
            object Edit1: TEdit
              Left = 59
              Top = 12
              Width = 90
              Height = 19
              Color = cl3DLight
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 0
              Text = 'B201404001'
            end
            object Edit2: TEdit
              Left = 217
              Top = 11
              Width = 90
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ImeName = 'Microsoft Office IME 2007'
              ParentFont = False
              TabOrder = 1
              Text = #49436#50872'12'#44032'8989'
            end
            object Edit3: TEdit
              Left = 315
              Top = 11
              Width = 152
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Font.Charset = HANGEUL_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #44404#47548#52404
              Font.Style = [fsBold]
              ImeName = 'Microsoft Office IME 2007'
              ParentFont = False
              TabOrder = 2
              Text = #44536#47004#46300#49828#53440#47113#49828'12'#51064#49849
            end
            object Edit4: TEdit
              Left = 59
              Top = 32
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 3
              Text = '2014/04/20'
            end
            object Edit5: TEdit
              Left = 217
              Top = 32
              Width = 250
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 4
              Text = 'Edit5'
            end
            object Edit6: TEdit
              Left = 59
              Top = 52
              Width = 72
              Height = 19
              Alignment = taRightJustify
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 5
              Text = '124,567'
            end
            object Edit7: TEdit
              Left = 217
              Top = 52
              Width = 50
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 6
              Text = 'Edit7'
            end
            object Button1: TButton
              Left = 468
              Top = 12
              Width = 55
              Height = 39
              Caption = #49324#51652#48372#44592
              TabOrder = 7
            end
            object Edit16: TEdit
              Left = 271
              Top = 52
              Width = 70
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 8
              Text = 'Edit7'
            end
            object Edit15: TEdit
              Left = 427
              Top = 52
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 9
              Text = #12615#12615#12615#47116#53944#52852
            end
            object CheckBox4: TCheckBox
              Left = 352
              Top = 54
              Width = 69
              Height = 17
              Caption = #45824#52264#49324#50857
              TabOrder = 10
              OnClick = CheckBox4Click
            end
          end
          object CheckBox2: TCheckBox
            Left = 331
            Top = 147
            Width = 82
            Height = 17
            Caption = #44228#49328#49436#48156#54665
            Color = clGradientActiveCaption
            ParentColor = False
            TabOrder = 0
          end
          object CheckBox3: TCheckBox
            Left = 425
            Top = 147
            Width = 72
            Height = 17
            Caption = #53685#51109#48156#54665
            TabOrder = 1
          end
          object Edit8: TEdit
            Left = 59
            Top = 105
            Width = 90
            Height = 19
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 4
            Text = #54788#45824#52880#54588#53448
          end
          object Edit9: TEdit
            Left = 217
            Top = 105
            Width = 90
            Height = 19
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 5
            Text = '010-0000-0000'
          end
          object Edit10: TEdit
            Left = 217
            Top = 147
            Width = 90
            Height = 19
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 6
            Text = #51068#48152' (10%)'
          end
          object Edit11: TEdit
            Left = 59
            Top = 147
            Width = 90
            Height = 19
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 7
            Text = #51452#48320#44144#47000#52376
          end
          object Edit12: TEdit
            Left = 59
            Top = 81
            Width = 90
            Height = 19
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 8
            Text = '2014/04/20'
          end
          object Edit13: TEdit
            Left = 217
            Top = 81
            Width = 90
            Height = 19
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 9
            Text = '2014/04/20'
          end
          object Edit14: TEdit
            Left = 390
            Top = 81
            Width = 90
            Height = 19
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 10
            Text = '2014/04/20'
          end
          object Memo1: TMemo
            Left = 3
            Top = 168
            Width = 326
            Height = 164
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            ImeName = 'Microsoft Office IME 2007'
            Lines.Strings = (
              'Memo1')
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 11
          end
          object NiceGrid3: TNiceGrid
            Left = 330
            Top = 168
            Width = 193
            Height = 164
            Cursor = 101
            ColCount = 2
            RowCount = 10
            DefRowHeight = 15
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'Minion Pro'
            FooterFont.Style = []
            Columns = <
              item
                Title = #48512#54408#49324
                Footer = #54633' '#44228
                Width = 84
                HorzAlign = haCenter
                Strings.Strings = (
                  #12615#12615#12615#53440#51060#50612)
              end
              item
                Title = #44552#50529
                Footer = '00,000,000'
                Width = 74
                HorzAlign = haRight
                Strings.Strings = (
                  '19,159,000')
              end>
            GutterKind = gkNumber
            GutterWidth = 10
            GutterFont.Charset = DEFAULT_CHARSET
            GutterFont.Color = clWindowText
            GutterFont.Height = -8
            GutterFont.Name = 'Tahoma'
            GutterFont.Style = []
            ShowFooter = True
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #44404#47548#52404
            Font.Style = []
            TabOrder = 12
          end
          object Edit20: TEdit
            Left = 391
            Top = 105
            Width = 90
            Height = 19
            ImeMode = imSAlpha
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 14
            Text = '900000-0000009'
          end
          object Edit21: TEdit
            Left = 59
            Top = 126
            Width = 422
            Height = 19
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 15
            Text = #44221#44592#46020' '#48512#52380#49884' '#49548#49324#44396' 00'#48264#51648' 00'#50500#54028#53944' 0000'#46041' 0000'#54840
          end
          object GroupBoxILBan: TGroupBox
            Left = 0
            Top = 335
            Width = 524
            Height = 223
            Caption = '[ '#51068' '#48152' ]'
            TabOrder = 13
            object Label41: TLabel
              Left = 166
              Top = 112
              Width = 46
              Height = 11
              AutoSize = False
              Caption = 'Service'
            end
            object Label42: TLabel
              Left = 12
              Top = 112
              Width = 46
              Height = 11
              AutoSize = False
              Caption = #54624' '#51064' '#50529
            end
            object Label43: TLabel
              Left = 326
              Top = 84
              Width = 46
              Height = 11
              AutoSize = False
              Caption = #44208#51228#48169#48277
            end
            object Label44: TLabel
              Left = 166
              Top = 84
              Width = 46
              Height = 11
              AutoSize = False
              Caption = #51077' '#44552' '#50529
            end
            object Label45: TLabel
              Left = 12
              Top = 84
              Width = 46
              Height = 11
              AutoSize = False
              Caption = #51077' '#44552' '#51068
            end
            object Label46: TLabel
              Left = 12
              Top = 53
              Width = 46
              Height = 11
              AutoSize = False
              Caption = #48512' '#54408' '#49324
            end
            object Label47: TLabel
              Left = 326
              Top = 22
              Width = 46
              Height = 11
              AutoSize = False
              Caption = #52397' '#44396' '#50529
            end
            object Label48: TLabel
              Left = 166
              Top = 22
              Width = 46
              Height = 11
              AutoSize = False
              Caption = #44277' '#51076' '#50529
            end
            object Label49: TLabel
              Left = 12
              Top = 22
              Width = 52
              Height = 11
              AutoSize = False
              Caption = #48512' '#54408' '#48708
            end
            object Edit40: TEdit
              Left = 64
              Top = 18
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 0
              Text = 'Edit40'
            end
            object Edit41: TEdit
              Left = 219
              Top = 18
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 1
              Text = 'Edit40'
            end
            object Edit42: TEdit
              Left = 391
              Top = 18
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 2
              Text = 'Edit40'
            end
            object Edit43: TEdit
              Left = 62
              Top = 48
              Width = 247
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 3
              Text = 'Edit40'
            end
            object Edit44: TEdit
              Left = 62
              Top = 79
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 4
              Text = 'Edit40'
            end
            object Edit45: TEdit
              Left = 219
              Top = 79
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 5
              Text = 'Edit40'
            end
            object Edit46: TEdit
              Left = 391
              Top = 79
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 6
              Text = 'Edit40'
            end
            object Edit47: TEdit
              Left = 62
              Top = 108
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 7
              Text = 'Edit40'
            end
            object Edit48: TEdit
              Left = 219
              Top = 108
              Width = 90
              Height = 19
              ImeName = 'Microsoft Office IME 2007'
              TabOrder = 8
              Text = 'Edit40'
            end
            object Memo3: TMemo
              Left = 2
              Top = 155
              Width = 520
              Height = 66
              Align = alBottom
              ImeName = 'Microsoft Office IME 2007'
              Lines.Strings = (
                'Memo3')
              TabOrder = 9
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #52264' '#47049' '#54788' '#54889
      ImageIndex = 1
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
    object TabSheet3: TTabSheet
      Caption = #52397' '#44396' '#54788' '#54889
      ImageIndex = 2
      object GroupBox6: TGroupBox
        Left = 0
        Top = 18
        Width = 937
        Height = 163
        Caption = '['#52264#47049' '#52397#44396' '#54788#54889']'
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = #44592' '#53440
      ImageIndex = 3
    end
  end
  object PanelMessage: TPanel
    Left = 0
    Top = 683
    Width = 1025
    Height = 19
    Align = alBottom
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    object LabelMessage: TLabel
      Left = 806
      Top = 4
      Width = 462
      Height = 12
      Caption = #48376' '#46972#48296' '#52980#54252#45324#53944#45716' '#50880#51649#51060#45716' '#44544#51088#47484' '#53580#49828#53944#54616#44592' '#50948#54644' '#50672#49845#50857#51004#47196' '#47564#46308#50632#49845#45768#45796'...'
    end
    object ButtonOK: TButton
      Left = 995
      Top = 1
      Width = 29
      Height = 17
      Align = alRight
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
    Left = 250
    Top = 634
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=N:\DataBase\CarList' +
      '.mdb;Persist Security Info=False;Jet OLEDB:Database Password=sos' +
      'a2011'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 58
    Top = 624
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 130
    Top = 628
  end
  object DataSource1: TDataSource
    Left = 186
    Top = 632
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 328
    object Pop_Delivery: TMenuItem
      Caption = #52636#44256#52376#47532
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Pop_Request: TMenuItem
      Caption = #52397#44396
    end
    object Pop_Receive: TMenuItem
      Caption = #51077#44552
    end
  end
end
