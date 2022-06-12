object fraSelContinente: TfraSelContinente
  Left = 0
  Top = 0
  Width = 232
  Height = 110
  TabOrder = 0
  object grbContinente: TGroupBox
    Left = 2
    Top = 2
    Width = 225
    Height = 105
    Caption = 'Continente'
    TabOrder = 0
    object lblSelecionarPais: TLabel
      Left = 10
      Top = 48
      Width = 103
      Height = 13
      Caption = 'Selecionar continente'
    end
    object chbTodos: TCheckBox
      Left = 10
      Top = 22
      Width = 201
      Height = 17
      Caption = ' Todas continentes'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chbTodosClick
    end
    object dblContinente: TDBLookupComboBox
      Left = 10
      Top = 68
      Width = 201
      Height = 21
      KeyField = 'codcontinente'
      ListField = 'descricao'
      ListSource = FrmDm.dtsContinente
      TabOrder = 1
      OnClick = dblContinenteClick
    end
  end
end
