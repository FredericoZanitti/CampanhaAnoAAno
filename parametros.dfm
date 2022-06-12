object frmParametros: TfrmParametros
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Par'#226'metros Globais'
  ClientHeight = 224
  ClientWidth = 655
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
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = EdtCodigo
  end
  object Label2: TLabel
    Left = 142
    Top = 24
    Width = 87
    Height = 13
    Caption = 'Descri'#231#227'o da Fase'
    FocusControl = EdtDescricao
  end
  object Label3: TLabel
    Left = 32
    Top = 76
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = EdtValor
  end
  object EdtCodigo: TDBEdit
    Left = 32
    Top = 29
    Width = 96
    Height = 41
    DataField = 'CodigoParametro'
    DataSource = FrmDm.dtsParametros
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object EdtDescricao: TDBEdit
    Left = 142
    Top = 42
    Width = 486
    Height = 28
    DataField = 'Descricao'
    DataSource = FrmDm.dtsParametros
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnEnter = EdtDescricaoEnter
    OnExit = EdtDescricaoExit
  end
  inline fraBotoes: TfraBotoes
    Left = 84
    Top = 148
    Width = 481
    Height = 53
    TabOrder = 2
    ExplicitLeft = 84
    ExplicitTop = 148
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
      Visible = False
    end
  end
  object EdtValor: TDBEdit
    Left = 32
    Top = 95
    Width = 596
    Height = 28
    DataField = 'Valor'
    DataSource = FrmDm.dtsParametros
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object MainMenu: TMainMenu
    Left = 616
    Top = 2
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
