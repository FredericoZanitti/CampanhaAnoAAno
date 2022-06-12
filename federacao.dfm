object CA_FEDERACAO: TCA_FEDERACAO
  Left = 0
  Top = 0
  Caption = 'Cadastro de Federacao'
  ClientHeight = 257
  ClientWidth = 508
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object EdtFotoFederacao: TDBEdit
    Left = 30
    Top = 176
    Width = 65
    Height = 21
    DataField = 'brasao'
    DataSource = FrmDm.dtsFederacao
    Enabled = False
    TabOrder = 0
    Visible = False
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 10
    Width = 477
    Height = 175
    Caption = '    INFORMA'#199#213'ES DA FEDERA'#199#195'O    '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 165
      Top = 25
      Width = 38
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = EdtCodigo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 250
      Top = 25
      Width = 134
      Height = 13
      Caption = 'Descri'#231#227'o da Federa'#231#227'o'
      FocusControl = EdtDescricao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ImgFederacao: TImage
      Left = 22
      Top = 25
      Width = 127
      Height = 127
      Center = True
      Proportional = True
    end
    object EdtCodigo: TDBEdit
      Left = 165
      Top = 44
      Width = 73
      Height = 27
      AutoSize = False
      BevelOuter = bvSpace
      DataField = 'codFederacao'
      DataSource = FrmDm.dtsFederacao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object EdtDescricao: TDBEdit
      Left = 250
      Top = 44
      Width = 207
      Height = 27
      DataField = 'federacao'
      DataSource = FrmDm.dtsFederacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BtnEscolherFoto: TBitBtn
      Left = 164
      Top = 87
      Width = 73
      Height = 45
      Hint = 'Selecionar Logo'
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF9
        E8E5E0E0DDD5DCD9D0DDDAD1ECEAE5FFFFFFF8F7F5DEDBD2DEDBD2DEDBD2DEDB
        D2DEDBD2DEDBD2DEDBD2DEDBD2DEDBD2DEDBD2DEDBD2DEDBD2DEDBD2DEDBD2DE
        DBD2DEDBD2DEDBD2DEDBD2DEDBD2DFDCD4E6E3DDFAF9F7FFFFFFFFFFFFFDFDFD
        F3F3F2EFEEEEEDECECEDEDECF5F5F5FFFFFFFCFBFBEEEDEDEEEDEDEEEDEDEEED
        EDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEDEDEE
        EDEDEEEDEDEEEDEDEEEDEDEEEDEDEEEEEDF2F2F1FCFCFCFFFFFFE6E3DD91856A
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE6E3DD8A7D608A7D608A7D608A7D
        608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D608A7D608A7D608A7D608A7D608A7D608E8266DAD6CCF2F2F1C5C3C1
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC3C2C0EBEBEAAEA4908A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE7E4DE8A7D608A7D608A7D608A7D
        608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D609D927AD4D3D1C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDCBCAC8978C728A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE7E4DE8A7D608A7D608A7D608A7D
        608A7D608A7D608A7D608A7D608D8064B1A894CFC9BDDEDBD2E1DDD6D4CFC5B8
        B09E9185698A7D608A7D608A7D608A7D608A7D608A7D608D8064C8C7C5C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC1BFBDC1BFBDC3C1BFD6D4D3E6E5E4EEEDEDEFEFEEE9E8E7D9
        D8D7C5C3C1C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC3C1BF8F82668A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE7E4DE8A7D608A7D608A7D608A7D
        608A7D608A7D608A7D60AFA692F2F0EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F7F5BBB3A28B7E618A7D608A7D608A7D608A7D608A7D60C4C2C0C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC1BFBDD5D3D2F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCFBFBDBDAD9C2C0BEC1BFBDC1BFBDC1BFBDC1BFBDC1BFBD8B7E618A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE7E4DE8A7D608A7D608A7D608A7D
        608A7D608A7D60C0B9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD1CCC18B7E618A7D608A7D608A7D608A7D60C2C0BEC1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDDEDDDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE7E6E6C2C0BEC1BFBDC1BFBDC1BFBDC1BFBD8B7E618A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE7E4DE8A7D608A7D608A7D608A7D
        608A7D60AFA693FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F2F4F3F0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC2BBAC8A7D608A7D608A7D608A7D60C2C0BEC1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDD5D4D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFAF9F9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDFDEDDC1BFBDC1BFBDC1BFBDC1BFBD8C7F628A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE7E4DE8A7D608A7D608A7D608A7D
        608E8165F3F2EFFFFFFFFFFFFFFFFFFFDCD8CF9B8F768A7D608A7D6095896FC8
        C2B4FFFEFEFFFFFFFFFFFFFCFCFB998D748A7D608A7D608A7D60C2C0BEC1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDC3C1BFF9F9F8FFFFFFFFFFFFFFFFFFECECEBCAC8C7C1BFBDC1BFBDC7C5C3E2
        E1E0FFFFFFFFFFFFFFFFFFFEFEFEC9C7C6C1BFBDC1BFBDC1BFBD8D81648A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE6E3DD8A7D608A7D608A7D608A7D
        60B4AC99FFFFFFFFFFFFFFFFFFDEDBD28B7E618A7D608A7D608A7D608A7D608A
        7D60BDB6A5FFFFFFFFFFFFFFFFFFC9C3B68A7D608A7D608A7D60C3C1BFC1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDD7D6D5FFFFFFFFFFFFFFFFFFEEEDEDC2C0BEC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDDCDBDAFFFFFFFFFFFFFFFFFFE3E2E1C1BFBDC1BFBDC1BFBD8F83678A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE6E3DD8A7D608A7D608A7D608A7D
        60D7D2C8FFFFFFFFFFFFFFFFFF9F957D8A7D608A7D608A7D608A7D608A7D608A
        7D608B7E61F2F1EDFFFFFFFFFFFFEBE8E38A7D608A7D608A7D60C4C2C0C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF2F2F1C1BFBDC1BFBDC1BFBDC1BF
        BDEAE9E8FFFFFFFFFFFFFFFFFFCCCBC9C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC2C0BEF8F8F8FFFFFFFFFFFFF5F4F4C1BFBDC1BFBDC1BFBD9185698A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFE9E7E18A7D608A7D608A7D608A7D
        60E9E7E1FFFFFFFFFFFFF5F4F28A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D60D9D5CBFFFFFFFFFFFFFDFCFC8A7D608A7D608A7D60C5C3C1C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF4F3F3C1BFBDC1BFBDC1BFBDC1BF
        BDF4F3F3FFFFFFFFFFFFFAFAFAC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDEBEAEAFFFFFFFFFFFFFEFEFEC1BFBDC1BFBDC1BFBD92866B8A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFEFEDE98A7D608A7D608A7D608A7D
        60EEECE8FFFFFFFFFFFFF1EFEB8A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D60D9D5CBFFFFFFFFFFFFFFFFFF8B7E618A7D608A7D60C5C4C2C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF7F6F6C1BFBDC1BFBDC1BFBDC1BF
        BDF6F6F6FFFFFFFFFFFFF8F7F7C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDEBEAEAFFFFFFFFFFFFFFFFFFC2C0BEC1BFBDC1BFBD93876C8A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFF3F2EF8A7D608A7D608A7D608A7D
        60E3E0D9FFFFFFFFFFFFFEFEFE92866B8A7D608A7D608A7D608A7D608A7D608A
        7D608B7E61F0EFEBFFFFFFFFFFFFF5F4F28A7D608A7D608A7D60C6C4C2C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFF9F9F8C1BFBDC1BFBDC1BFBDC1BF
        BDF0F0EFFFFFFFFFFFFFFFFFFFC5C4C2C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC2C0BEF7F7F7FFFFFFFFFFFFFAFAFAC1BFBDC1BFBDC1BFBD94886E8A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFF6F5F38A7D608A7D608A7D608A7D
        60C8C2B4FFFFFFFFFFFFFFFFFFC5BFB18A7D608A7D608A7D608A7D608A7D608A
        7D60AFA692FFFFFFFFFFFFFFFFFFDAD6CC8A7D608A7D608A7D60C7C5C3C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFFBFAFAC1BFBDC1BFBDC1BFBDC1BF
        BDE2E1E0FFFFFFFFFFFFFFFFFFE1E0DFC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDD5D3D2FFFFFFFFFFFFFFFFFFEBEBEAC1BFBDC1BFBDC1BFBD95896F8A7D60
        8A7D608A7D608A7D608A7D60BAB2A1FFFFFFF9F8F78A7D608A7D608A7D608A7D
        609C9078FEFEFEFFFFFFFFFFFFFEFEFEBCB5A48B7E618A7D608A7D608A7D60A4
        9A83F7F6F4FFFFFFFFFFFFFFFFFFACA38E8A7D608A7D608A7D60C7C5C3C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBD9D8FFFFFFFCFCFCC1BFBDC1BFBDC1BFBDC1BF
        BDCBC9C7FFFFFFFFFFFFFFFFFFFFFFFFDCDBDAC2C0BEC1BFBDC1BFBDC1BFBDCF
        CDCCFBFBFBFFFFFFFFFFFFFFFFFFD3D2D0C1BFBDC1BFBDC1BFBD968A708A7D60
        8A7D608A7D608A7D608A7D60BCB4A3FFFFFFF5F4F18A7D608A7D608A7D608A7D
        608A7D60CCC7BAFFFFFFFFFFFFFFFFFFFFFFFFEFEDE9D0CABEC7C1B3DCD9D0FE
        FEFEFFFFFFFFFFFFFFFFFFDFDCD48A7D608A7D608A7D608A7D60C8C6C4C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDCDAD9FFFFFFFAFAFAC1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDE4E4E3FFFFFFFFFFFFFFFFFFFFFFFFF7F6F6E6E5E4E1E1E0EDECECFF
        FFFFFFFFFFFFFFFFFFFFFFEEEEEDC1BFBDC1BFBDC1BFBDC1BFBD978B718A7D60
        8A7D608A7D608A7D608A7D60BBB3A2FFFFFFE7E4DE8A7D608A7D608A7D608A7D
        608A7D608D8064E0DDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEFEDE995896E8A7D608A7D608A7D608A7D60C8C6C5C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDDBDAD9FFFFFFF3F2F2C1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC3C1BFEFEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF7F6F6C7C5C3C1BFBDC1BFBDC1BFBDC1BFBD978B718A7D60
        8A7D608A7D608A7D608A7D60A69C86FFFFFFC6C0B18A7D608A7D608A7D608A7D
        608A7D608A7D608D8164D1CCC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE3E0D9968A708A7D608A7D608A7D608A7D608A7D60C8C6C5C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDD0CFCDFFFFFFE1E0DFC1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC3C1BFE7E6E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF0F0EFC7C6C4C1BFBDC1BFBDC1BFBDC1BFBDC1BFBD9B8F768A7D60
        8A7D608A7D608A7D608A7D608A7D60968A708B7F628A7D608A7D608A7D608A7D
        608A7D608A7D608A7D608A7D60A39982D5D0C6F7F6F4FFFFFFFFFFFFFCFCFBE2
        DED7B2A9968B7E618A7D608A7D608A7D608A7D608A7D608B7E61CAC8C7C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC7C6C4C2C0BEC1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC1BFBDC1BFBDCECDCBE9E8E8FBFBFBFFFFFFFFFFFFFEFEFEF0
        EFEFD6D5D4C2C0BEC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC2C0BEA59B858A7D60
        8A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D
        608A7D608A7D608A7D608A7D608A7D608A7D608A7D6093876C968B718C80638A
        7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D6093876CD0CECDC1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC6C4C2C8C6C4C2C1BFC1
        BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC6C4C2CCC6B98A7D60
        8A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D
        608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D60BCB5A4E4E3E2C1BFBD
        C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BF
        BDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDDCDBDAFFFFFFDCD9D0
        BDB5A5AFA692AAA18CA89E89A89F89AAA18CABA28DACA38EAEA591AFA692B0A7
        939185698A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D608A7D608A7D608A7D609E937BB9B19FD4CFC4FEFDFDFFFFFFEDECEC
        DCDBDAD5D3D2D2D1CFD1D0CED1D0CED2D1CFD3D1D0D3D2D0D4D3D2D5D3D2D5D4
        D3C5C3C1C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDC1BFBDC1BFBDC1BFBDCCCAC8DAD9D7E8E8E7FFFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB3AA978A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D608A7D608A7D608A7D60D6D1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFD7D5D4C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDC1BFBDC1BFBDC1BFBDEAE9E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFACA28EA49A83A49A83A49A83A49A83A49A83B1A894FFFFFFFFFFFFFFFF
        FFD0CABE8A7D608A7D609D927AE2DFD7E3E0D9E4E1DAE5E2DBE6E3DCE6E3DCE7
        E4DEE7E4DE8D81648A7D608A7D60F1EFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD3D2D0CFCDCCCFCDCCCFCDCCCFCDCCCFCDCCD6D4D3FFFFFFFFFFFFFFFF
        FFE6E5E4C1BFBDC1BFBDCBCAC8F0EFEFF0F0EFF1F0F0F1F1F0F2F1F1F2F1F1F2
        F2F1F3F2F2C3C1BFC1BFBDC1BFBDF8F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF91856A8A7D608A7D608A7D608A7D608A7D60978B71FFFFFFFFFFFFFFFF
        FFEDEBE68A7D608A7D60B1A894FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF9A8F768A7D60998D74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC5C3C1C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC8C6C5FFFFFFFFFFFFFFFF
        FFF5F5F5C1BFBDC1BFBDD6D4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCAC8C6C1BFBDC9C7C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9A8F768A7D608A7D608A7D608A7D608A7D609E937BFFFFFFFFFFFFFFFF
        FFFFFFFF94886E8A7D60AFA692FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF978C728A7D60B8B09EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCAC8C6C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDCCCAC8FFFFFFFFFFFFFFFF
        FFFFFFFFC7C5C3C1BFBDD5D3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC8C7C5C1BFBDD9D8D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD6D1C7988C738B7E618A7D608B7E61978C72D7D3C9FFFFFFFFFFFFFFFF
        FFFFFFFFB2A9968A7D60968B71D2CDC2D1CBC0D0CABECFC9BDCDC7BBCBC5B8CA
        C4B7C5BFB08A7D608A7D60D5D0C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEAE9E8C9C7C5C2C0BEC1BFBDC2C0BEC8C7C5EAEAE9FFFFFFFFFFFFFFFF
        FFFFFFFFD6D5D4C1BFBDC8C6C4E8E7E6E7E6E5E6E5E4E6E5E4E5E4E3E4E3E2E3
        E2E1E1E0DFC1BFBDC1BFBDE9E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFDFDFBFAF9FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD8D3CA8A7D608A7D608A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D608A7D608D8164F6F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFDFDFDFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEBEAE9C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDC1BFBDC3C1BFFBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEAEA4908A7D608A7D608A7D608A7D608A7D608A7D608A7D608A
        7D608A7D608D8064CEC8BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFD4D3D1C1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1BFBDC1
        BFBDC1BFBDC3C1BFE5E4E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEFEEEAE6E3DCE2DFD7DFDCD4E1DED6E3E0D9E5E2DBE7
        E4DEEAE7E2F9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7F7F6F2F1F1F0EFEFEEEEEDEFEFEEF0F0EFF1F1F0F2
        F2F1F4F4F3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnEscolherFotoClick
    end
  end
  inline fraBotoes: TfraBotoes
    Left = 12
    Top = 190
    Width = 481
    Height = 53
    TabOrder = 2
    ExplicitLeft = 12
    ExplicitTop = 190
    inherited BtnCancelar: TBitBtn
      OnClick = fraBotoesBtnCancelarClick
    end
    inherited BtnExcluir: TBitBtn
      OnClick = fraBotoesBtnExcluirClick
    end
    inherited BtnEditar: TBitBtn
      OnClick = fraBotoesBtnEditarClick
    end
    inherited BtnIncluir: TBitBtn
      OnClick = fraBotoesBtnIncluirClick
    end
    inherited BtnUltimo: TBitBtn
      OnClick = fraBotoesBtnUltimoClick
    end
    inherited BtnProximo: TBitBtn
      OnClick = fraBotoesBtnProximoClick
    end
    inherited BtnAnterior: TBitBtn
      OnClick = fraBotoesBtnAnteriorClick
    end
    inherited BtnPrimeiro: TBitBtn
      OnClick = fraBotoesBtnPrimeiroClick
    end
    inherited BtnGravar: TBitBtn
      OnClick = fraBotoesBtnGravarClick
    end
    inherited BtnPesquisar: TBitBtn
      OnClick = fraBotoesBtnPesquisarClick
    end
  end
  object OpenLogo: TOpenPictureDialog
    Left = 412
    Top = 2
  end
  object MainMenu: TMainMenu
    Left = 448
    object MnArquivo: TMenuItem
      Caption = 'Arquivo'
      object MnCadastrar: TMenuItem
        Caption = '&Inserir ( F5 )'
        OnClick = MnCadastrarClick
      end
      object MnEditar: TMenuItem
        Caption = 'E&ditar'
        OnClick = MnEditarClick
      end
      object MnExcluir: TMenuItem
        Caption = '&Excluir'
        OnClick = MnExcluirClick
      end
    end
    object MnSair: TMenuItem
      Caption = 'Sair'
    end
  end
end
