object FormDailyReport: TFormDailyReport
  Left = 0
  Top = 0
  Caption = #51068#44228#54364
  ClientHeight = 621
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #49352#44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object PageControl1: TPageControl
    Left = 4
    Top = 14
    Width = 781
    Height = 599
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #51068' '#44228' '#54364
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 773
        Height = 571
        Align = alClient
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object LabelYear: TLabel
          Left = 169
          Top = 4
          Width = 81
          Height = 23
          Caption = '2014 '#45380
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #55092#47676#50641#49828#54252
          Font.Style = []
          ParentFont = False
        end
        object LabelMonth: TLabel
          Left = 261
          Top = 4
          Width = 52
          Height = 23
          Caption = '04'#50900
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #55092#47676#50641#49828#54252
          Font.Style = []
          ParentFont = False
        end
        object LabelDay: TLabel
          Left = 326
          Top = 4
          Width = 47
          Height = 23
          Caption = '10'#51068
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #55092#47676#50641#49828#54252
          Font.Style = []
          ParentFont = False
        end
        object LabelWeek: TLabel
          Left = 386
          Top = 4
          Width = 134
          Height = 23
          Caption = #47785#50836#51068' '#51068#44228#54364
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #55092#47676#50641#49828#54252
          Font.Style = []
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 2
          Top = 46
          Width = 768
          Height = 97
          Caption = '[ '#51077#47141'/'#49688#51221' ]'
          TabOrder = 0
          object Label1: TLabel
            Left = 355
            Top = 67
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #52636#44552#50529
          end
          object Label2: TLabel
            Left = 205
            Top = 67
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #51077#44552#50529
          end
          object Label3: TLabel
            Left = 51
            Top = 67
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #52397#44396#50529
          end
          object Label4: TLabel
            Left = 616
            Top = 17
            Width = 140
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #48708' '#44256
          end
          object Label5: TLabel
            Left = 349
            Top = 21
            Width = 261
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #45236'     '#50857
          end
          object Label6: TLabel
            Left = 276
            Top = 20
            Width = 69
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #44228#51221
          end
          object Label7: TLabel
            Left = 142
            Top = 20
            Width = 129
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #52264#47049#47749
          end
          object Label8: TLabel
            Left = 51
            Top = 20
            Width = 85
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #52264#47049#48264#54840
          end
          object Label9: TLabel
            Left = 6
            Top = 20
            Width = 39
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'No'
          end
          object Label10: TLabel
            Left = 596
            Top = 67
            Width = 10
            Height = 12
            Caption = '%'
          end
          object Label11: TLabel
            Left = 509
            Top = 67
            Width = 36
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #51648#44553#50984
          end
          object Edit1: TEdit
            Left = 6
            Top = 36
            Width = 39
            Height = 20
            ImeMode = imSAlpha
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = 'Edit1'
          end
          object Edit2: TEdit
            Left = 51
            Top = 37
            Width = 85
            Height = 20
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            Text = #44221#44592'12'#45208'3456'
          end
          object Edit3: TEdit
            Left = 142
            Top = 37
            Width = 129
            Height = 20
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 2
            Text = #44536#47004#46300#49828#53440#47113#49828'12'#51064#49849
          end
          object Edit4: TEdit
            Left = 276
            Top = 37
            Width = 69
            Height = 20
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 3
            Text = 'Edit4'
          end
          object Edit5: TEdit
            Left = 349
            Top = 37
            Width = 261
            Height = 20
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 4
            Text = 'Edit5'
          end
          object Edit6: TEdit
            Left = 616
            Top = 37
            Width = 140
            Height = 20
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 5
            Text = 'Edit6'
          end
          object Edit7: TEdit
            Left = 96
            Top = 64
            Width = 85
            Height = 20
            ImeMode = imSAlpha
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 6
            Text = 'Edit7'
          end
          object Edit8: TEdit
            Left = 248
            Top = 64
            Width = 85
            Height = 20
            ImeMode = imSAlpha
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 7
            Text = 'Edit8'
          end
          object Edit9: TEdit
            Left = 398
            Top = 64
            Width = 85
            Height = 20
            ImeMode = imSAlpha
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 8
            Text = 'Edit9'
          end
          object Edit10: TEdit
            Left = 553
            Top = 64
            Width = 41
            Height = 20
            ImeMode = imSAlpha
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 9
            Text = 'Edit10'
          end
          object Button19: TButton
            Left = 616
            Top = 62
            Width = 140
            Height = 25
            Caption = #48372#54744'/'#51068#48152' '#44032#51256#50724#44592
            TabOrder = 10
          end
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 147
          Width = 768
          Height = 46
          TabOrder = 1
          object ButtonDaily1: TButton
            Left = 64
            Top = 9
            Width = 75
            Height = 25
            Caption = #51077' '#47141
            TabOrder = 0
            OnClick = ButtonDaily1Click
          end
          object ButtonDaily2: TButton
            Left = 173
            Top = 9
            Width = 75
            Height = 25
            Caption = #52628' '#44032
            TabOrder = 1
          end
          object ButtonDaily3: TButton
            Left = 283
            Top = 9
            Width = 75
            Height = 25
            Caption = #49325' '#51228
            TabOrder = 2
          end
          object ButtonDaily4: TButton
            Left = 395
            Top = 9
            Width = 75
            Height = 25
            Caption = #52712' '#49548
            TabOrder = 3
            OnClick = ButtonDaily4Click
          end
          object ButtonDaily5: TButton
            Left = 502
            Top = 9
            Width = 75
            Height = 25
            Caption = #51068#51648#52636#47141
            TabOrder = 4
          end
          object ButtonDailyEnd: TButton
            Left = 613
            Top = 9
            Width = 75
            Height = 25
            Caption = #51333' '#47308
            TabOrder = 5
            OnClick = ButtonDailyEndClick
          end
        end
        object NiceGrid1: TNiceGrid
          Left = 2
          Top = 196
          Width = 768
          Height = 371
          Cursor = 101
          ColCount = 9
          RowCount = 20
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
              Title = 'No'
              Width = 20
            end
            item
              Title = #52264' '#51333
              Width = 120
            end
            item
              Title = #52264#47049#48264#54840
              Width = 80
            end
            item
              Title = #45236'   '#50857
              Width = 150
            end
            item
              Title = '('#52397#44396#50529')'
              Width = 78
            end
            item
              Title = #51077#44552#50529
              Width = 78
            end
            item
              Title = #51648#44553#50984
              Width = 40
            end
            item
              Title = #52636#44552#50529
              Width = 78
            end
            item
              Title = #48708#44256
              Width = 80
            end>
          GutterWidth = 15
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
          TabOrder = 2
        end
        object ButtonCalView1: TButton
          Left = 146
          Top = 4
          Width = 17
          Height = 22
          Caption = '...'
          TabOrder = 3
          OnClick = ButtonCalView1Click
        end
        object Button7: TButton
          Left = 176
          Top = 24
          Width = 17
          Height = 22
          Caption = #9664
          TabOrder = 4
        end
        object Button8: TButton
          Left = 193
          Top = 24
          Width = 17
          Height = 22
          Caption = #9654
          TabOrder = 5
        end
        object Button9: TButton
          Left = 264
          Top = 24
          Width = 17
          Height = 22
          Caption = #9664
          TabOrder = 6
        end
        object Button10: TButton
          Left = 281
          Top = 24
          Width = 17
          Height = 22
          Caption = #9654
          TabOrder = 7
        end
        object Button11: TButton
          Left = 334
          Top = 24
          Width = 17
          Height = 22
          Caption = #9664
          TabOrder = 8
        end
        object Button12: TButton
          Left = 351
          Top = 24
          Width = 17
          Height = 22
          Caption = #9654
          TabOrder = 9
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #44160#49353
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 773
        Height = 571
        Align = alClient
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 0
        object RadioGroup1: TRadioGroup
          Left = 2
          Top = 19
          Width = 105
          Height = 134
          Caption = '[ '#48169' '#48277' ]'
          Items.Strings = (
            #44228#51221#51004#47196
            #52264#47049#51004#47196
            #44160#49353#50612#47196
            #44552#50529#51004#47196
            #48372#54744#49324#48324)
          TabOrder = 0
        end
        object GroupBox3: TGroupBox
          Left = 109
          Top = 19
          Width = 661
          Height = 45
          Caption = '[ '#44592'  '#44036' ]'
          TabOrder = 1
          object Label16: TLabel
            Left = 111
            Top = 20
            Width = 9
            Height = 12
            Caption = '~'
          end
          object RadioDate1: TRadioButton
            Left = 268
            Top = 16
            Width = 52
            Height = 23
            Caption = '1'#44060#50900
            TabOrder = 0
            OnClick = RadioDate1Click
          end
          object RadioDate2: TRadioButton
            Left = 341
            Top = 16
            Width = 52
            Height = 23
            Caption = '3'#44060#50900
            TabOrder = 1
            OnClick = RadioDate2Click
          end
          object RadioDate3: TRadioButton
            Left = 414
            Top = 16
            Width = 52
            Height = 23
            Caption = '6'#44060#50900
            TabOrder = 2
            OnClick = RadioDate3Click
          end
          object RadioDate4: TRadioButton
            Left = 488
            Top = 16
            Width = 52
            Height = 23
            Caption = '1'#45380
            TabOrder = 3
            OnClick = RadioDate4Click
          end
          object EditDate1: TEdit
            Left = 8
            Top = 17
            Width = 73
            Height = 20
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 4
            Text = 'EditDate1'
          end
          object ButtonCalView2: TButton
            Left = 84
            Top = 16
            Width = 17
            Height = 22
            Caption = '...'
            TabOrder = 5
            OnClick = ButtonCalView2Click
          end
          object EditDate2: TEdit
            Left = 127
            Top = 17
            Width = 73
            Height = 20
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 6
            Text = 'EditDate2'
          end
          object ButtonCalView3: TButton
            Left = 206
            Top = 16
            Width = 17
            Height = 22
            Caption = '...'
            TabOrder = 7
            OnClick = ButtonCalView3Click
          end
        end
        object GroupBox6: TGroupBox
          Left = 109
          Top = 67
          Width = 661
          Height = 46
          TabOrder = 2
          object Label18: TLabel
            Left = 19
            Top = 24
            Width = 64
            Height = 12
            Caption = #44228#51221' '#47532#49828#53944
          end
          object Edit13: TEdit
            Left = 102
            Top = 20
            Width = 121
            Height = 20
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = 'Edit13'
          end
        end
        object GroupBox4: TGroupBox
          Left = 109
          Top = 117
          Width = 431
          Height = 36
          TabOrder = 3
          object Label17: TLabel
            Left = 23
            Top = 12
            Width = 60
            Height = 12
            Caption = #44160#49353' '#44208#44284' :'
          end
          object Button16: TButton
            Left = 125
            Top = 5
            Width = 104
            Height = 25
            Caption = 'Excel'#47196' '#51200#51109
            TabOrder = 0
          end
          object Button17: TButton
            Left = 256
            Top = 5
            Width = 104
            Height = 25
            Caption = #52636' '#47141
            TabOrder = 1
          end
        end
        object NiceGrid2: TNiceGrid
          Left = 2
          Top = 159
          Width = 768
          Height = 409
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
          TabOrder = 4
        end
        object GroupBox5: TGroupBox
          Left = 543
          Top = 117
          Width = 227
          Height = 36
          TabOrder = 5
          object ButtonSearchEnd: TButton
            Left = 66
            Top = 5
            Width = 104
            Height = 25
            Caption = #51333' '#47308
            TabOrder = 0
            OnClick = ButtonDailyEndClick
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #44228#51221#44284#47785#44288#47532
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 773
        Height = 571
        Align = alClient
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label14: TLabel
          Left = 25
          Top = 10
          Width = 719
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = #51068#44228#54364' '#44228#51221' '#44284#47785' '#44288#47532
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = #55092#47676#50641#49828#54252
          Font.Style = []
          ParentFont = False
        end
        object NiceGrid3: TNiceGrid
          Left = 25
          Top = 174
          Width = 719
          Height = 384
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
          TabOrder = 0
          OnClick = NiceGrid3Click
          OnKeyDown = NiceGrid3KeyDown
        end
        object GroupBox8: TGroupBox
          Left = 25
          Top = 121
          Width = 719
          Height = 47
          TabOrder = 1
          object ButtonAccount1: TButton
            Left = 39
            Top = 12
            Width = 97
            Height = 25
            Caption = #51077' '#47141' / '#49688' '#51221
            TabOrder = 0
            OnClick = ButtonAccount1Click
          end
          object ButtonAccount3: TButton
            Left = 222
            Top = 12
            Width = 97
            Height = 25
            Caption = #49325' '#51228
            TabOrder = 1
            OnClick = ButtonAccount3Click
          end
          object ButtonAccount4: TButton
            Left = 405
            Top = 12
            Width = 97
            Height = 25
            Caption = #52712' '#49548' / Clear'
            TabOrder = 2
            OnClick = ButtonAccount4Click
          end
          object ButtonAccountEnd: TButton
            Left = 589
            Top = 12
            Width = 97
            Height = 25
            Caption = #51333' '#47308
            TabOrder = 3
            OnClick = ButtonDailyEndClick
          end
        end
        object GroupBox7: TGroupBox
          Left = 25
          Top = 42
          Width = 719
          Height = 75
          Caption = '[ '#51077#47141' / '#49688#51221' ]'
          TabOrder = 2
          object Label12: TLabel
            Left = 82
            Top = 24
            Width = 121
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #44228#51221' '#44284#47785' '#47749
          end
          object Label13: TLabel
            Left = 216
            Top = 24
            Width = 451
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = #48708'           '#44256
          end
          object Label20: TLabel
            Left = 21
            Top = 24
            Width = 49
            Height = 12
            Alignment = taCenter
            AutoSize = False
            Caption = 'ID'
          end
          object Edit11: TEdit
            Left = 21
            Top = 42
            Width = 49
            Height = 20
            ImeMode = imSAlpha
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 0
            Text = 'Edit11'
          end
          object Edit12: TEdit
            Left = 82
            Top = 42
            Width = 121
            Height = 20
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            TabOrder = 1
            Text = 'Edit12'
          end
          object Memo1: TMemo
            Left = 216
            Top = 42
            Width = 451
            Height = 20
            ImeMode = imSHanguel
            ImeName = 'Microsoft Office IME 2007'
            Lines.Strings = (
              'Memo1')
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #53685#44228
      ImageIndex = 3
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=N:\DataBase\CarList' +
      '.mdb;Persist Security Info=False;Jet OLEDB:Database Password=sos' +
      'a2011'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 36
    Top = 550
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 102
    Top = 554
  end
  object DataSource1: TDataSource
    Left = 170
    Top = 558
  end
end
