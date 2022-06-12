object CA_COMPE: TCA_COMPE
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Competi'#231#245'es'
  ClientHeight = 297
  ClientWidth = 556
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
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 18
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = EdtCodigo
  end
  object Label2: TLabel
    Left = 32
    Top = 90
    Width = 120
    Height = 13
    Caption = 'Descri'#231#227'o da Competi'#231#227'o'
    FocusControl = EdtNome
  end
  object EdtCodigo: TDBEdit
    Left = 32
    Top = 39
    Width = 96
    Height = 41
    DataField = 'codcompeticao'
    DataSource = FrmDm.DtsCompeticao
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object EdtNome: TDBEdit
    Left = 32
    Top = 112
    Width = 486
    Height = 27
    DataField = 'nome'
    DataSource = FrmDm.DtsCompeticao
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnEnter = EdtNomeEnter
    OnExit = EdtNomeExit
  end
  inline fraBotoes: TfraBotoes
    Left = 32
    Top = 224
    Width = 481
    Height = 53
    TabOrder = 1
    ExplicitLeft = 32
    ExplicitTop = 224
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
  object rgrTipoCompeticao: TDBRadioGroup
    Left = 32
    Top = 151
    Width = 486
    Height = 53
    Caption = ' Tipo de Competi'#231#227'o '
    Columns = 3
    DataField = 'tipocompeticao'
    DataSource = FrmDm.DtsCompeticao
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Regional'
      'Nacional'
      'Internacional')
    ParentFont = False
    TabOrder = 3
    Values.Strings = (
      'R'
      'N'
      'I')
  end
  object MainMenu: TMainMenu
    Left = 496
    Top = 18
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
      OnClick = MnSairClick
    end
  end
end
