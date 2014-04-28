object FormCharge: TFormCharge
  Left = 0
  Top = 0
  Caption = #48372#54744#49324' '#45812#45817#51088' '#44288#47532
  ClientHeight = 567
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 567
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitWidth = 750
    ExplicitHeight = 562
    object Label14: TLabel
      Left = 88
      Top = 8
      Width = 791
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #9670' '#48372#54744#49324' '#45812#45817#51088' '#44288#47532' '#9670
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #55092#47676#50641#49828#54252
      Font.Style = []
      ParentFont = False
    end
    object NiceGrid1: TNiceGrid
      Left = 3
      Top = 169
      Width = 950
      Height = 389
      Cursor = 101
      ColCount = 11
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
          Title = 'ID'
          Width = 80
        end
        item
          Title = #48372#54744#49324
          Width = 90
        end
        item
          Title = #45812#45817
          Width = 48
        end
        item
          Title = #51060#47492
          Width = 80
        end
        item
          Title = #51649#50948
          Width = 48
        end
        item
          Title = #54648#46300#54256
          Width = 85
        end
        item
          Title = 'FAX'
          Width = 90
        end
        item
          Title = #47700#51068
          Width = 100
        end
        item
          Title = #49324#47924#49892
          Width = 85
        end
        item
          Title = #53084#49468#53552
          Width = 85
        end
        item
          Title = #47700#47784
          Width = 110
        end>
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
    object GroupBox8: TGroupBox
      Left = 841
      Top = 34
      Width = 112
      Height = 127
      TabOrder = 1
      object ButtonAccount1: TButton
        Left = 5
        Top = 7
        Width = 101
        Height = 25
        Caption = #51077' '#47141' / '#49688' '#51221
        TabOrder = 0
      end
      object ButtonAccount3: TButton
        Left = 5
        Top = 36
        Width = 101
        Height = 25
        Caption = #49325' '#51228
        TabOrder = 1
      end
      object ButtonAccount4: TButton
        Left = 5
        Top = 66
        Width = 101
        Height = 25
        Caption = #52712' '#49548' / Clear'
        TabOrder = 2
      end
      object ButtonAccountEnd: TButton
        Left = 5
        Top = 96
        Width = 101
        Height = 25
        Caption = #51333' '#47308
        TabOrder = 3
      end
    end
    object GroupBox7: TGroupBox
      Left = 3
      Top = 28
      Width = 836
      Height = 133
      Caption = '[ '#51077#47141' / '#49688#51221' ]'
      TabOrder = 2
      object Label12: TLabel
        Left = 100
        Top = 22
        Width = 81
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #48372#54744#49324
      end
      object Label13: TLabel
        Left = 318
        Top = 22
        Width = 84
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #54648#46300#54256
      end
      object Label20: TLabel
        Left = 7
        Top = 22
        Width = 91
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = 'ID'
      end
      object Label1: TLabel
        Left = 221
        Top = 22
        Width = 58
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #51060#47492
      end
      object Label4: TLabel
        Left = 183
        Top = 22
        Width = 36
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #45812#45817
      end
      object Label5: TLabel
        Left = 657
        Top = 22
        Width = 84
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #49324#47924#49892
      end
      object Label6: TLabel
        Left = 404
        Top = 22
        Width = 84
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = 'FAX'
      end
      object Label7: TLabel
        Left = 743
        Top = 22
        Width = 84
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #53084#49468#53552
      end
      object Label2: TLabel
        Left = 491
        Top = 22
        Width = 163
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = 'e-mail'
      end
      object Label3: TLabel
        Left = 281
        Top = 21
        Width = 35
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = #51649#50948
      end
      object Edit1: TEdit
        Left = 7
        Top = 39
        Width = 91
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 0
        Text = '20140428013659'
      end
      object Edit2: TEdit
        Left = 100
        Top = 39
        Width = 81
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 1
        Text = #44060#51064#53469#49884#44277#51228
      end
      object Edit3: TEdit
        Left = 183
        Top = 39
        Width = 36
        Height = 21
        Alignment = taCenter
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 2
        Text = #45824#47932
      end
      object Edit4: TEdit
        Left = 221
        Top = 39
        Width = 58
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 3
        Text = #54861#44600#46041#51204
      end
      object Edit6: TEdit
        Left = 318
        Top = 39
        Width = 84
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 4
        Text = '000-0000-0000'
      end
      object Edit7: TEdit
        Left = 404
        Top = 39
        Width = 84
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 5
        Text = '0000-000-0000'
      end
      object Edit9: TEdit
        Left = 657
        Top = 39
        Width = 84
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 6
        Text = '000-0000-0000'
      end
      object Edit10: TEdit
        Left = 743
        Top = 39
        Width = 84
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 7
        Text = 'Edit10'
      end
      object Memo1: TMemo
        Left = 7
        Top = 66
        Width = 820
        Height = 58
        ImeName = 'Microsoft Office IME 2007'
        Lines.Strings = (
          'Memo1')
        TabOrder = 8
      end
      object Edit8: TEdit
        Left = 491
        Top = 39
        Width = 163
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 9
        Text = 'abcd123500@aaaaaaa.aa.aa'
      end
      object Edit5: TEdit
        Left = 281
        Top = 39
        Width = 35
        Height = 21
        ImeName = 'Microsoft Office IME 2007'
        TabOrder = 10
        Text = #44284#51109
      end
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=N:\DataBase\CarList' +
      '.mdb;Persist Security Info=False;Jet OLEDB:Database Password=sos' +
      'a2011'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 103
    Top = 282
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 177
    Top = 276
  end
  object DataSource1: TDataSource
    Left = 233
    Top = 280
  end
end
