object FormIpGo: TFormIpGo
  Left = 0
  Top = 0
  Caption = #52264#47049' '#49888#44508'/ '#49688#51221' '
  ClientHeight = 662
  ClientWidth = 1002
  Color = clGradientInactiveCaption
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
  object LabelTitle: TLabel
    Left = 8
    Top = 8
    Width = 986
    Height = 35
    Alignment = taCenter
    AutoSize = False
    Caption = #49888' '#44508' '#51077' '#44256
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = #55092#47676#50715#52404
    Font.Style = []
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 643
    Width = 1002
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Date'
        Width = 100
      end
      item
        Alignment = taCenter
        Text = 'time'
        Width = 100
      end
      item
        Width = 50
      end>
    ExplicitTop = 536
    ExplicitWidth = 749
  end
  object GroupBoxCar: TGroupBox
    Left = 86
    Top = 46
    Width = 777
    Height = 206
    Caption = '[ '#52264#47049' '#51221#48372' ]'
    TabOrder = 2
    object Shape2: TShape
      Left = 2
      Top = 64
      Width = 483
      Height = 33
      Pen.Color = clGradientActiveCaption
      Pen.Mode = pmMask
      Pen.Style = psInsideFrame
    end
    object Shape1: TShape
      Left = 2
      Top = 163
      Width = 484
      Height = 41
      Pen.Color = clGradientActiveCaption
      Pen.Mode = pmMask
      Pen.Style = psInsideFrame
    end
    object Label1: TLabel
      Left = 291
      Top = 44
      Width = 55
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #49324#50629#51088
    end
    object Label2: TLabel
      Left = 149
      Top = 109
      Width = 55
      Height = 12
      AutoSize = False
      Caption = #52860#46972#53076#46300
    end
    object Label3: TLabel
      Left = 4
      Top = 74
      Width = 49
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #44144#47000#52376
    end
    object Label4: TLabel
      Left = 291
      Top = 109
      Width = 55
      Height = 12
      AutoSize = False
      Caption = #52264#45824#48264#54840
    end
    object Label5: TLabel
      Left = 4
      Top = 109
      Width = 49
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #46321#47197#51068
    end
    object Label6: TLabel
      Left = 314
      Top = 178
      Width = 55
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #52636#44256#51068
    end
    object Label7: TLabel
      Left = 149
      Top = 178
      Width = 55
      Height = 12
      AutoSize = False
      Caption = #52636#44256#50696#51221
    end
    object Label8: TLabel
      Left = 4
      Top = 178
      Width = 49
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #51077#44256#51068
    end
    object Label9: TLabel
      Left = 149
      Top = 44
      Width = 55
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #50672#46973#52376
    end
    object Label10: TLabel
      Left = 4
      Top = 45
      Width = 49
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #50868#51204#51088
    end
    object Label11: TLabel
      Left = 292
      Top = 19
      Width = 55
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #52264#47049#47749
    end
    object Label12: TLabel
      Left = 149
      Top = 20
      Width = 55
      Height = 12
      AutoSize = False
      Caption = #52264#47049#48264#54840
    end
    object Label13: TLabel
      Left = 4
      Top = 20
      Width = 49
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = 'ID'
    end
    object Label14: TLabel
      Left = 4
      Top = 142
      Width = 49
      Height = 12
      AutoSize = False
      Caption = #51452#54665#44144#47532
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 130
      Top = 142
      Width = 23
      Height = 12
      AutoSize = False
      Caption = #13214
    end
    object Shape3: TShape
      Left = 288
      Top = 132
      Width = 197
      Height = 32
      Pen.Color = clGradientActiveCaption
      Pen.Mode = pmMask
      Pen.Style = psInsideFrame
    end
    object CheckBox1: TCheckBox
      Left = 199
      Top = 139
      Width = 88
      Height = 17
      Caption = #46321#47197#51613' '#50630#51020
      TabOrder = 12
    end
    object CheckBox2: TCheckBox
      Left = 389
      Top = 69
      Width = 84
      Height = 17
      Caption = ' '#53685#51109#48156#54665
      TabOrder = 20
    end
    object EditID: TEdit
      Left = 53
      Top = 16
      Width = 93
      Height = 19
      Color = clMenu
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = 'B201404001'
    end
    object EditCar110: TEdit
      Left = 53
      Top = 138
      Width = 74
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 11
      Text = '123,456'
    end
    object EditCar108: TEdit
      Left = 199
      Top = 105
      Width = 74
      Height = 19
      ImeMode = imSAlpha
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 9
      Text = 'Edit1'
    end
    object EditCar106: TEdit
      Left = 53
      Top = 70
      Width = 93
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
      Text = 'Edit1'
    end
    object EditCar109: TEdit
      Left = 342
      Top = 105
      Width = 129
      Height = 19
      ImeMode = imSAlpha
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 10
      Text = 'WBANU91058CT25019'
    end
    object EditCar107: TEdit
      Left = 53
      Top = 105
      Width = 74
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 8
      Text = '2014/04/30'
    end
    object EditCar113: TEdit
      Left = 367
      Top = 174
      Width = 74
      Height = 19
      Color = 15132415
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 17
      Text = '2014/04/30'
    end
    object EditCar112: TEdit
      Left = 199
      Top = 174
      Width = 74
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 16
      Text = '2014/04/30'
    end
    object EditCar111: TEdit
      Left = 53
      Top = 174
      Width = 74
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 15
      Text = '2014/04/30'
    end
    object EditCar105: TEdit
      Left = 199
      Top = 41
      Width = 93
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
      Text = '000-0000-0000'
    end
    object EditCar104: TEdit
      Left = 53
      Top = 41
      Width = 93
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
      Text = 'Edit1'
    end
    object EditCarName: TEdit
      Left = 342
      Top = 16
      Width = 129
      Height = 19
      Color = 13565951
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
      Text = #44536#47004#46300#49828#53440#47113#49828'12'#51064#49849
    end
    object EditCarNo: TEdit
      Left = 199
      Top = 16
      Width = 93
      Height = 19
      Color = 13565951
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 1
      Text = #44221#44592'12'#54728'1234'
    end
    object ComboBox1: TComboBox
      Left = 342
      Top = 40
      Width = 129
      Height = 20
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 5
      Text = '-'
      Items.Strings = (
        '-'
        #51068#48152#49324#50629#51088
        #44036#51060#49324#50629#51088)
    end
    object CheckBox3: TCheckBox
      Left = 299
      Top = 69
      Width = 84
      Height = 17
      Caption = #44228#49328#49436#48156#54665
      TabOrder = 19
    end
    object ButtonDate1: TButton
      Left = 129
      Top = 174
      Width = 15
      Height = 20
      Caption = '.'
      TabOrder = 21
    end
    object Button1: TButton
      Left = 274
      Top = 174
      Width = 15
      Height = 20
      Caption = '.'
      TabOrder = 22
    end
    object Button2: TButton
      Left = 442
      Top = 174
      Width = 15
      Height = 20
      Caption = '.'
      TabOrder = 23
    end
    object ButtonToday1: TButton
      Left = 290
      Top = 174
      Width = 15
      Height = 20
      Caption = 'T'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      OnClick = ButtonToday1Click
    end
    object ButtonToday2: TButton
      Left = 458
      Top = 174
      Width = 15
      Height = 20
      Caption = 'T'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      OnClick = ButtonToday2Click
    end
    object ButtonClient: TButton
      Left = 199
      Top = 68
      Width = 75
      Height = 22
      Caption = #44144#47000#52376' '#52286#44592
      TabOrder = 7
      OnClick = ButtonClientClick
    end
    object Memo1: TMemo
      Left = 479
      Top = 14
      Width = 296
      Height = 190
      Align = alRight
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 18
    end
    object Edit12: TEdit
      Left = 367
      Top = 138
      Width = 74
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 14
      Text = #51473#48512#47116#53944
    end
    object CheckBox4: TCheckBox
      Left = 298
      Top = 139
      Width = 63
      Height = 17
      Caption = #45824#52264#49324#50857
      TabOrder = 13
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 2
    Top = 46
    Width = 84
    Height = 111
    Caption = '[ '#51217' '#49688' ]'
    Items.Strings = (
      #48372#54744#51217#49688
      #51068#48152#51217#49688
      #51221#48708#51217#49688)
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 864
    Top = 52
    Width = 130
    Height = 200
    TabOrder = 3
    object ButtonHelp: TButton
      Left = 14
      Top = 14
      Width = 100
      Height = 33
      Caption = #46020' '#50880' '#47568
      TabOrder = 0
    end
    object ButtonSave: TButton
      Left = 14
      Top = 83
      Width = 100
      Height = 33
      Caption = #51077#44256#52376#47532
      TabOrder = 1
      OnClick = ButtonSaveClick
    end
    object ButtonEnd: TButton
      Left = 14
      Top = 152
      Width = 100
      Height = 33
      Caption = #52712#49548'/'#45803#44592
      TabOrder = 2
      OnClick = ButtonEndClick
    end
  end
  object GroupBoxBoHum: TGroupBox
    Left = 2
    Top = 255
    Width = 992
    Height = 382
    Caption = '[ '#48372' '#54744' '#51221' '#48372' ]'
    TabOrder = 4
    object Shape4: TShape
      Left = 659
      Top = 8
      Width = 331
      Height = 237
      Pen.Color = clPurple
      Pen.Mode = pmMask
      Pen.Style = psInsideFrame
    end
    object Label18: TLabel
      Left = 180
      Top = 21
      Width = 33
      Height = 12
      AutoSize = False
      Caption = #45812#48372
    end
    object Label22: TLabel
      Left = 5
      Top = 47
      Width = 54
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #51217#49688#48264#54840
    end
    object Label23: TLabel
      Left = 5
      Top = 21
      Width = 54
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #48372' '#54744' '#49324
    end
    object Label24: TLabel
      Left = 0
      Top = 73
      Width = 54
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #45812'  '#45817
    end
    object Label26: TLabel
      Left = 279
      Top = 20
      Width = 32
      Height = 12
      AutoSize = False
      Caption = #44284#49892
    end
    object Label29: TLabel
      Left = 349
      Top = 20
      Width = 13
      Height = 12
      AutoSize = False
      Caption = '%'
    end
    object Shape5: TShape
      Left = 393
      Top = 21
      Width = 84
      Height = 42
      Pen.Color = clGradientActiveCaption
      Pen.Mode = pmMask
      Pen.Style = psInsideFrame
    end
    object Label30: TLabel
      Left = 6
      Top = 163
      Width = 54
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = #47700#47784
    end
    object Shape6: TShape
      Left = 393
      Top = 66
      Width = 84
      Height = 177
      Pen.Color = clGradientActiveCaption
      Pen.Mode = pmMask
      Pen.Style = psInsideFrame
    end
    object ComboBox2: TComboBox
      Left = 63
      Top = 18
      Width = 102
      Height = 20
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 0
      Text = 'ComboBox2'
    end
    object RadioGroup2: TRadioGroup
      Left = 63
      Top = 97
      Width = 328
      Height = 62
      Caption = '[ '#51088#44592#48512#45812#44552' ]'
      Columns = 3
      Items.Strings = (
        #51221#47456'(05~50'#47564')'
        #51221#47456'(10~50'#47564')'
        #51221#47456'(15~50'#47564')'
        #51221#47456'(20~50'#47564')'
        #51221#47456'(30~50'#47564')  '
        #51221'  '#50529'  '#51228)
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 310
      Top = 17
      Width = 35
      Height = 19
      Alignment = taRightJustify
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 2
      Text = '100'
    end
    object Edit7: TEdit
      Left = 273
      Top = 69
      Width = 94
      Height = 19
      Color = cl3DLight
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 3
      Text = '0505-000-0000'
    end
    object Edit9: TEdit
      Left = 178
      Top = 69
      Width = 94
      Height = 19
      Color = cl3DLight
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 4
      Text = '000-0000-0000'
    end
    object Edit10: TEdit
      Left = 63
      Top = 69
      Width = 74
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 5
      Text = #54861#44600#46041#51204
    end
    object Edit11: TEdit
      Left = 63
      Top = 44
      Width = 102
      Height = 19
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      TabOrder = 6
      Text = '20140430-00000'
    end
    object ComboBox3: TComboBox
      Left = 209
      Top = 17
      Width = 63
      Height = 20
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      ItemIndex = 0
      TabOrder = 7
      Text = #51088#52264
      Items.Strings = (
        #51088#52264
        #45824#47932)
    end
    object ButtonCharge: TButton
      Left = 146
      Top = 69
      Width = 19
      Height = 20
      Caption = '"'
      TabOrder = 8
    end
    object GroupBox3: TGroupBox
      Left = 478
      Top = 13
      Width = 180
      Height = 230
      Caption = '[ '#48512' '#54408' ]'
      TabOrder = 9
      object Label36: TLabel
        Left = 5
        Top = 19
        Width = 92
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #48512#54408#49324
      end
      object Label37: TLabel
        Left = 101
        Top = 19
        Width = 74
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #44552#50529
      end
      object ComboBoxParts: TComboBox
        Left = 5
        Top = 36
        Width = 92
        Height = 20
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = 'ComboBoxParts'
      end
      object Edit1Parts: TEdit
        Left = 101
        Top = 36
        Width = 74
        Height = 20
        Alignment = taRightJustify
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = '99,999,999'
      end
      object NiceGridParts: TNiceGrid
        Left = 5
        Top = 87
        Width = 170
        Height = 139
        Cursor = 101
        ColCount = 2
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
            Title = #48512#54408#49324
            Footer = #48512#54408#44228
            Width = 80
            HorzAlign = haCenter
            Strings.Strings = (
              #12615#12615#53440#51060#50612
              #12615#12615#48512#54408
              #54620#44600#49345#49324
              #12615#12615#50976#47532
              #51648#54532#47004#46300)
          end
          item
            Title = #44552#50529
            Footer = '99,999,999'
            Width = 68
            HorzAlign = haRight
            Strings.Strings = (
              '200,000'
              '99,999,999'
              '50,000'
              '120,000')
          end>
        GutterWidth = 0
        GutterFont.Charset = DEFAULT_CHARSET
        GutterFont.Color = clWindowText
        GutterFont.Height = -11
        GutterFont.Name = 'Tahoma'
        GutterFont.Style = []
        ShowFooter = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TabOrder = 2
      end
      object ButtonParts1: TButton
        Left = 13
        Top = 59
        Width = 47
        Height = 25
        Caption = #52628#44032
        TabOrder = 3
      end
      object ButtonParts2: TButton
        Left = 65
        Top = 59
        Width = 47
        Height = 25
        Caption = #49688#51221
        TabOrder = 4
      end
      object ButtonParts3: TButton
        Left = 117
        Top = 59
        Width = 47
        Height = 25
        Caption = #49325#51228
        TabOrder = 5
      end
    end
    object GroupBox1: TGroupBox
      Left = 661
      Top = 88
      Width = 327
      Height = 119
      Caption = '[ '#52397' '#44396' ]'
      TabOrder = 10
      object Shape13: TShape
        Left = 149
        Top = 18
        Width = 87
        Height = 97
        Pen.Color = clGradientActiveCaption
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
      end
      object Shape9: TShape
        Left = 5
        Top = 64
        Width = 318
        Height = 26
        Pen.Color = clGradientActiveCaption
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
      end
      object Shape10: TShape
        Left = 5
        Top = 89
        Width = 318
        Height = 26
        Pen.Color = clGradientActiveCaption
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
      end
      object Shape11: TShape
        Left = 5
        Top = 18
        Width = 46
        Height = 97
        Pen.Color = clGradientActiveCaption
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
      end
      object Shape8: TShape
        Left = 5
        Top = 39
        Width = 318
        Height = 26
        Pen.Color = clGradientActiveCaption
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
      end
      object Shape12: TShape
        Left = 50
        Top = 18
        Width = 100
        Height = 97
        Pen.Color = clGradientActiveCaption
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
      end
      object Shape7: TShape
        Left = 5
        Top = 18
        Width = 318
        Height = 22
        Pen.Color = clGradientActiveCaption
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
      end
      object Label33: TLabel
        Left = 7
        Top = 46
        Width = 43
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #52397'  '#44396
      end
      object Label34: TLabel
        Left = 57
        Top = 24
        Width = 80
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #45216'  '#51676
      end
      object Label35: TLabel
        Left = 155
        Top = 24
        Width = 76
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #44552'  '#50529
      end
      object Label39: TLabel
        Left = 298
        Top = 97
        Width = 16
        Height = 12
        AutoSize = False
        Caption = '%'
      end
      object Label38: TLabel
        Left = 7
        Top = 71
        Width = 43
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #51077'  '#44552
      end
      object Label40: TLabel
        Left = 7
        Top = 96
        Width = 43
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #54624#51064#50529
      end
      object Label19: TLabel
        Left = 241
        Top = 24
        Width = 78
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = '('#44277#51076'+'#48512#54408')'
      end
      object Edit17: TEdit
        Left = 52
        Top = 42
        Width = 72
        Height = 19
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = '2014/04/30'
      end
      object Edit18: TEdit
        Left = 152
        Top = 42
        Width = 78
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = '999,999,999'
      end
      object Edit20: TEdit
        Left = 152
        Top = 67
        Width = 78
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = '999,999,999'
      end
      object Edit21: TEdit
        Left = 152
        Top = 92
        Width = 78
        Height = 20
        Alignment = taRightJustify
        Color = cl3DLight
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 3
        Text = '9,999,999'
      end
      object Edit22: TEdit
        Left = 242
        Top = 92
        Width = 55
        Height = 20
        Alignment = taRightJustify
        Color = cl3DLight
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        ParentFont = False
        TabOrder = 4
        Text = '100.00'
      end
      object Edit19: TEdit
        Left = 52
        Top = 67
        Width = 72
        Height = 19
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 5
        Text = '2014/04/30'
      end
      object Button4: TButton
        Left = 125
        Top = 43
        Width = 20
        Height = 18
        Caption = '.'
        TabOrder = 6
      end
      object Button5: TButton
        Left = 125
        Top = 68
        Width = 20
        Height = 18
        Caption = '.'
        TabOrder = 7
      end
      object Edit4: TEdit
        Left = 241
        Top = 42
        Width = 78
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 8
        Text = '999,999,999'
      end
      object Edit5: TEdit
        Left = 241
        Top = 67
        Width = 78
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 9
        Text = '999,999,999'
      end
    end
    object GroupBox4: TGroupBox
      Left = 661
      Top = 13
      Width = 327
      Height = 69
      Caption = '['#48512#45812#44552' '#51077#44552' ]'
      TabOrder = 11
      object Label21: TLabel
        Left = 176
        Top = 25
        Width = 57
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #51077' '#44552' '#50529
      end
      object Label25: TLabel
        Left = 5
        Top = 23
        Width = 80
        Height = 12
        AutoSize = False
        Caption = #51088#44592#48512#45812#44552#50529
      end
      object Label27: TLabel
        Left = 42
        Top = 48
        Width = 40
        Height = 12
        AutoSize = False
        Caption = #51077#44552#51068
      end
      object Label28: TLabel
        Left = 176
        Top = 48
        Width = 57
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #54624' '#51064' '#50529
      end
      object Edit16: TEdit
        Left = 235
        Top = 43
        Width = 69
        Height = 20
        Alignment = taRightJustify
        Color = cl3DLight
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = '500,000'
      end
      object Edit3: TEdit
        Left = 235
        Top = 19
        Width = 69
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = '500,000'
      end
      object Edit2: TEdit
        Left = 86
        Top = 43
        Width = 69
        Height = 19
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = '2014/04/30'
      end
      object Button3: TButton
        Left = 155
        Top = 43
        Width = 15
        Height = 20
        Caption = '.'
        TabOrder = 3
      end
      object Edit6: TEdit
        Left = 86
        Top = 19
        Width = 69
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 4
        Text = '500,000'
      end
    end
    object GroupBox5: TGroupBox
      Left = 661
      Top = 210
      Width = 327
      Height = 30
      TabOrder = 12
      object Label16: TLabel
        Left = 193
        Top = 9
        Width = 40
        Height = 12
        AutoSize = False
        Caption = #12615' ='
      end
      object Label17: TLabel
        Left = 16
        Top = 8
        Width = 40
        Height = 12
        AutoSize = False
        Caption = #49436#48708#49828
      end
      object Edit8: TEdit
        Left = 59
        Top = 5
        Width = 69
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = '500,000'
      end
      object Edit13: TEdit
        Left = 240
        Top = 6
        Width = 69
        Height = 20
        Alignment = taRightJustify
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = '500,000'
      end
    end
    object NiceGrid1: TNiceGrid
      Left = 2
      Top = 246
      Width = 988
      Height = 134
      Cursor = 101
      ColCount = 18
      DefColWidth = 50
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
          Title = #48372#54744#49324
          Width = 80
        end
        item
          Title = #45812#48372
          Width = 80
        end
        item
          Title = #44284#49892
          Width = 80
        end
        item
          Title = #51217#49688#48264#54840
          Width = 80
        end
        item
          Title = #45812#45817#51088
          Width = 80
        end
        item
          Title = #50672#46973#52376
          Width = 80
        end
        item
          Title = #47732#52293#44552
          Width = 80
        end
        item
          Title = #51221#47456#51228
          Width = 80
        end
        item
          Title = #52397#44396#51068
          Width = 80
        end
        item
          Title = #52397#44396#50529
          Width = 80
        end
        item
          Title = #51077#44552#51068
          Width = 80
        end
        item
          Title = #51077#44552#50529
          Width = 80
        end
        item
          Title = #54624#51064#50529
          Width = 80
        end
        item
          Title = '(%)'
          Width = 80
        end
        item
          Title = #47700#47784
          Width = 80
        end
        item
          Title = #49436#48708#49828
          Width = 80
        end
        item
          Title = 'O Date'
          Width = 80
        end
        item
          Title = 'O ='
          Width = 80
        end>
      GutterWidth = 0
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
      Align = alBottom
      TabOrder = 13
    end
    object Memo2: TMemo
      Left = 63
      Top = 163
      Width = 329
      Height = 80
      ImeMode = imSHanguel
      ImeName = 'Microsoft Office IME 2007'
      Lines.Strings = (
        'Memo2')
      ScrollBars = ssVertical
      TabOrder = 14
    end
    object Button6: TButton
      Left = 399
      Top = 84
      Width = 75
      Height = 25
      Caption = #48372#54744#49324#52628#44032
      TabOrder = 15
    end
    object Button7: TButton
      Left = 399
      Top = 115
      Width = 75
      Height = 25
      Caption = #48372#54744#49324#49325#51228
      TabOrder = 16
    end
    object Button8: TButton
      Left = 399
      Top = 146
      Width = 75
      Height = 25
      Caption = #49688#51221#50756#47308
      TabOrder = 17
    end
    object Button9: TButton
      Left = 399
      Top = 212
      Width = 75
      Height = 25
      Caption = 'Clear('#48372#54744')'
      TabOrder = 18
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 90
    Top = 582
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=N:\DataBase\CarList' +
      '.mdb;Persist Security Info=False;Jet OLEDB:Database Password=sos' +
      'a2011'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 138
    Top = 586
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 194
    Top = 582
  end
  object DataSource1: TDataSource
    Left = 256
    Top = 590
  end
end