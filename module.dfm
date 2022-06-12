object FrmDm: TFrmDm
  OldCreateOrder = False
  Height = 588
  Width = 722
  object BDMySQL: TFDConnection
    Params.Strings = (
      'Database=zanittic_software'
      'User_Name=root'
      'Server=127.0.0.1'
      'CharacterSet=utf8'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Transaction = TransacaoSQL
    Left = 48
    Top = 16
  end
  object TransacaoSQL: TFDTransaction
    Connection = BDMySQL
    Left = 144
    Top = 16
  end
  object VendorLib: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Program Files\Campanha Ano a Ano\Seu Time\DBAcompanhamento\Dr' +
      'iverMySQL\libmysql.dll'
    Left = 224
    Top = 16
  end
  object TblAdversarios: TFDTable
    Active = True
    IndexFieldNames = 'nome;codadver'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_ADVER'
    TableName = 'CA_ADVER'
    Left = 40
    Top = 80
    object TblAdversarioscodadver: TIntegerField
      FieldName = 'codadver'
      Origin = 'codadver'
      Required = True
      DisplayFormat = '00000'
    end
    object TblAdversariosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object TblAdversarioscodcidade: TIntegerField
      FieldName = 'codcidade'
      Origin = 'codcidade'
      Required = True
    end
    object TblAdversariosrival: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'rival'
      Origin = 'rival'
    end
    object TblAdversariosescudo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'escudo'
      Origin = 'escudo'
      Size = 200
    end
    object TblAdversarioscodfederacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codfederacao'
      Origin = 'codfederacao'
    end
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 296
    Top = 16
  end
  object DtsAdversarios: TDataSource
    DataSet = TblAdversarios
    Left = 67
    Top = 80
  end
  object TblArbitros: TFDTable
    Active = True
    IndexFieldNames = 'codarbitro'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_ARBIT'
    TableName = 'CA_ARBIT'
    Left = 32
    Top = 128
    object TblArbitroscodarbitro: TIntegerField
      FieldName = 'codarbitro'
      Origin = 'codarbitro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object TblArbitrosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 40
    end
  end
  object DtsArbitros: TDataSource
    DataSet = TblArbitros
    Left = 67
    Top = 128
  end
  object DtsTitulos: TDataSource
    DataSet = TblTitulos
    Left = 289
    Top = 283
  end
  object DtsResumo: TDataSource
    DataSet = TblResumo
    Left = 289
    Top = 227
  end
  object DtsEstTitulares: TDataSource
    DataSet = TblEstTitulares
    Left = 289
    Top = 179
  end
  object DtsEstReservas: TDataSource
    DataSet = TblEstReservas
    Left = 289
    Top = 123
  end
  object DtsAno: TDataSource
    DataSet = TblAno
    Left = 167
    Top = 355
  end
  object DtsUf: TDataSource
    DataSet = TblUf
    Left = 167
    Top = 299
  end
  object DtsRival: TDataSource
    DataSet = TblRival
    Left = 167
    Top = 243
  end
  object DtsPais: TDataSource
    DataSet = TblPais
    Left = 167
    Top = 131
  end
  object DtsPosicao: TDataSource
    DataSet = TblPosicao
    Left = 167
    Top = 187
  end
  object DtsJogos: TDataSource
    DataSet = TblJogos
    Left = 167
    Top = 75
  end
  object DtsJogadores: TDataSource
    DataSet = TblJogadores
    Left = 67
    Top = 408
  end
  object DtsFase: TDataSource
    DataSet = TblFase
    Left = 67
    Top = 352
  end
  object DtsEstadio: TDataSource
    DataSet = TblEstadio
    Left = 67
    Top = 296
  end
  object DtsCompeticao: TDataSource
    DataSet = TblCompeticao
    Left = 67
    Top = 240
  end
  object TblCidade: TFDTable
    Active = True
    IndexFieldNames = 'codcidade'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_CIDAD'
    TableName = 'CA_CIDAD'
    Left = 32
    Top = 184
    object TblCidadecodcidade: TIntegerField
      FieldName = 'codcidade'
      Origin = 'codcidade'
      Required = True
    end
    object TblCidadenome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 40
    end
    object TblCidadecodpais: TIntegerField
      FieldName = 'codpais'
      Origin = 'codpais'
      Required = True
    end
    object TblCidadecoduf: TIntegerField
      FieldName = 'coduf'
      Origin = 'coduf'
      Required = True
    end
  end
  object TblCompeticao: TFDTable
    Active = True
    IndexFieldNames = 'nome'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_COMPE'
    TableName = 'CA_COMPE'
    Left = 32
    Top = 240
    object TblCompeticaocodcompeticao: TIntegerField
      FieldName = 'codcompeticao'
      Origin = 'codcompeticao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object TblCompeticaonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 35
    end
    object TblCompeticaotipocompeticao: TWideStringField
      FieldName = 'tipocompeticao'
      Origin = 'tipocompeticao'
      Required = True
      Size = 1
    end
  end
  object TblEstadio: TFDTable
    Active = True
    IndexFieldNames = 'codestadio'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_ESTAD'
    TableName = 'CA_ESTAD'
    Left = 32
    Top = 296
    object TblEstadiocodestadio: TIntegerField
      FieldName = 'codestadio'
      Origin = 'codestadio'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object TblEstadionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object TblEstadiocodcidade: TIntegerField
      FieldName = 'codcidade'
      Origin = 'codcidade'
      Required = True
    end
  end
  object TblFase: TFDTable
    Active = True
    IndexFieldNames = 'codfase'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_FASE'
    TableName = 'CA_FASE'
    Left = 32
    Top = 352
    object TblFasecodfase: TIntegerField
      FieldName = 'codfase'
      Origin = 'codfase'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object TblFasenome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
  end
  object TblJogadores: TFDTable
    Active = True
    IndexFieldNames = 'codjogador'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_JOGAD'
    TableName = 'CA_JOGAD'
    Left = 32
    Top = 408
    object TblJogadorescodjogador: TIntegerField
      FieldName = 'codjogador'
      Origin = 'codjogador'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object TblJogadoresnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object TblJogadoresnomecompleto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomecompleto'
      Origin = 'nomecompleto'
      Size = 50
    end
    object TblJogadoresfoto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'foto'
      Origin = 'foto'
      Size = 150
    end
    object TblJogadoresdtnasc: TDateField
      FieldName = 'dtnasc'
      Origin = 'dtnasc'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object TblJogadorescodcidade: TIntegerField
      FieldName = 'codcidade'
      Origin = 'codcidade'
      Required = True
    end
    object TblJogadoressituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object TblJogadorescodposicao: TIntegerField
      FieldName = 'codposicao'
      Origin = 'codposicao'
      Required = True
    end
    object TblJogadoresnaturalizado: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'naturalizado'
      Origin = 'naturalizado'
      Size = 1
    end
    object TblJogadorescodpais: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codpais'
      Origin = 'codpais'
    end
  end
  object TblJogos: TFDTable
    Active = True
    IndexFieldNames = 'codjogo'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_JOGOS'
    TableName = 'CA_JOGOS'
    Left = 133
    Top = 74
    object TblJogoscodjogo: TIntegerField
      FieldName = 'codjogo'
      Origin = 'codjogo'
      Required = True
      DisplayFormat = '000000'
    end
    object TblJogosdata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object TblJogoshora: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      Size = 5
    end
    object TblJogoscodadvervisit: TIntegerField
      FieldName = 'codadvervisit'
      Origin = 'codadvervisit'
      Required = True
    end
    object TblJogoscodadvermand: TIntegerField
      FieldName = 'codadvermand'
      Origin = 'codadvermand'
      Required = True
    end
    object TblJogosplacar1: TIntegerField
      Alignment = taCenter
      FieldName = 'placar1'
      Origin = 'placar1'
      Required = True
    end
    object TblJogosplacar2: TIntegerField
      Alignment = taCenter
      FieldName = 'placar2'
      Origin = 'placar2'
      Required = True
    end
    object TblJogoscodestadio: TIntegerField
      FieldName = 'codestadio'
      Origin = 'codestadio'
      Required = True
    end
    object TblJogoscodcompeticao: TIntegerField
      FieldName = 'codcompeticao'
      Origin = 'codcompeticao'
      Required = True
    end
    object TblJogoscodarbitro: TIntegerField
      FieldName = 'codarbitro'
      Origin = 'codarbitro'
      Required = True
    end
    object TblJogospublico: TIntegerField
      FieldName = 'publico'
      Origin = 'publico'
      Required = True
      DisplayFormat = '###,###'
    end
    object TblJogoscodfase: TIntegerField
      FieldName = 'codfase'
      Origin = 'codfase'
      Required = True
    end
    object TblJogospenalty1: TIntegerField
      Alignment = taCenter
      FieldName = 'penalty1'
      Origin = 'penalty1'
      Required = True
    end
    object TblJogospenalty2: TIntegerField
      Alignment = taCenter
      FieldName = 'penalty2'
      Origin = 'penalty2'
      Required = True
    end
    object TblJogoscontra: TIntegerField
      FieldName = 'contra'
      Origin = 'contra'
      Required = True
    end
    object TblJogoswo: TIntegerField
      FieldName = 'wo'
      Origin = 'wo'
      Required = True
    end
    object TblJogosvideos: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'videos'
      Origin = 'videos'
      Size = 200
    end
    object TblJogoscodtatica: TIntegerField
      FieldName = 'codtatica'
      Origin = 'codtatica'
      Required = True
    end
    object TblJogoscoduniforme: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coduniforme'
      Origin = 'coduniforme'
    end
    object TblJogosportaofechado: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'portaofechado'
      Origin = 'portaofechado'
      Size = 1
    end
    object TblJogostemporada: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'temporada'
      Origin = 'temporada'
    end
    object TblJogosobservacao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 3000
    end
  end
  object TblPais: TFDTable
    Active = True
    IndexFieldNames = 'codpais'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'CA_PAIS'
    TableName = 'CA_PAIS'
    Left = 133
    Top = 130
    object TblPaiscodpais: TIntegerField
      FieldName = 'codpais'
      Origin = 'codpais'
      Required = True
    end
    object TblPaissigla: TWideStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Required = True
      Size = 3
    end
    object TblPaisnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object TblPaisbandeira: TWideStringField
      FieldName = 'bandeira'
      Origin = 'bandeira'
      Required = True
      Size = 100
    end
    object TblPaiscodcontinente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codcontinente'
      Origin = 'codcontinente'
    end
    object TblPaisiso3: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'iso3'
      Origin = 'iso3'
      Size = 3
    end
    object TblPaisiso2: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'iso2'
      Origin = 'iso2'
      Size = 2
    end
    object TblPaisfifa: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fifa'
      Origin = 'fifa'
      Size = 3
    end
    object TblPaiscoi: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'coi'
      Origin = 'coi'
      Size = 3
    end
    object TblPaisisonumerico: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'isonumerico'
      Origin = 'isonumerico'
    end
  end
  object TblPosicao: TFDTable
    Active = True
    IndexFieldNames = 'codposicao'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'zanittic_software.CA_POSIC'
    TableName = 'zanittic_software.CA_POSIC'
    Left = 133
    Top = 186
    object TblPosicaocodposicao: TIntegerField
      FieldName = 'codposicao'
      Origin = 'codposicao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblPosicaoabreviatura: TWideStringField
      FieldName = 'abreviatura'
      Origin = 'abreviatura'
      Required = True
      Size = 3
    end
    object TblPosicaodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
    end
  end
  object TblRival: TFDTable
    Active = True
    IndexFieldNames = 'codrival'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'zanittic_software.CA_RIVAL'
    TableName = 'zanittic_software.CA_RIVAL'
    Left = 133
    Top = 242
    object TblRivalcodrival: TIntegerField
      FieldName = 'codrival'
      Origin = 'codrival'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblRivalcodadver: TIntegerField
      FieldName = 'codadver'
      Origin = 'codadver'
      Required = True
    end
  end
  object TblUf: TFDTable
    Active = True
    IndexFieldNames = 'coduf'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'zanittic_software.CA_UF'
    TableName = 'zanittic_software.CA_UF'
    Left = 133
    Top = 298
    object TblUfcoduf: TIntegerField
      FieldName = 'coduf'
      Origin = 'coduf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblUfsigla: TWideStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Required = True
      Size = 2
    end
    object TblUfnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 40
    end
    object TblUfbandeira: TWideStringField
      FieldName = 'bandeira'
      Origin = 'bandeira'
      Required = True
      Size = 100
    end
  end
  object TblAno: TFDTable
    Active = True
    IndexFieldNames = 'ano'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'zanittic_software.ES_ANOS'
    TableName = 'zanittic_software.ES_ANOS'
    Left = 133
    Top = 354
    object TblAnoano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object TblEstReservas: TFDTable
    Active = True
    IndexFieldNames = 'coditem;codjogador'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ES_RESER'
    TableName = 'ES_RESER'
    Left = 256
    Top = 122
    object TblEstReservascoditem: TIntegerField
      FieldName = 'coditem'
      Origin = 'coditem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblEstReservascodjogador: TIntegerField
      FieldName = 'codjogador'
      Origin = 'codjogador'
      Required = True
    end
    object TblEstReservascodjogo: TIntegerField
      FieldName = 'codjogo'
      Origin = 'codjogo'
      Required = True
    end
    object TblEstReservascodjogadorsaiu: TIntegerField
      FieldName = 'codjogadorsaiu'
      Origin = 'codjogadorsaiu'
      Required = True
    end
    object TblEstReservascamarelo: TIntegerField
      FieldName = 'camarelo'
      Origin = 'camarelo'
      Required = True
    end
    object TblEstReservascvermelho: TIntegerField
      FieldName = 'cvermelho'
      Origin = 'cvermelho'
      Required = True
    end
    object TblEstReservasgols: TIntegerField
      FieldName = 'gols'
      Origin = 'gols'
      Required = True
    end
    object TblEstReservasano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
      Required = True
    end
    object TblEstReservasv: TIntegerField
      FieldName = 'v'
      Origin = 'v'
      Required = True
    end
    object TblEstReservase: TIntegerField
      FieldName = 'e'
      Origin = 'e'
      Required = True
    end
    object TblEstReservasd: TIntegerField
      FieldName = 'd'
      Origin = 'd'
      Required = True
    end
  end
  object TblEstTitulares: TFDTable
    Active = True
    IndexFieldNames = 'coditem;codjogador'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ES_TITUL'
    TableName = 'ES_TITUL'
    Left = 256
    Top = 178
    object TblEstTitularescoditem: TIntegerField
      FieldName = 'coditem'
      Origin = 'coditem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblEstTitularescodjogador: TIntegerField
      FieldName = 'codjogador'
      Origin = 'codjogador'
      Required = True
    end
    object TblEstTitularescodjogo: TIntegerField
      FieldName = 'codjogo'
      Origin = 'codjogo'
      Required = True
    end
    object TblEstTitularescamarelo: TIntegerField
      FieldName = 'camarelo'
      Origin = 'camarelo'
      Required = True
    end
    object TblEstTitularescvermelho: TIntegerField
      FieldName = 'cvermelho'
      Origin = 'cvermelho'
      Required = True
    end
    object TblEstTitularesgols: TIntegerField
      FieldName = 'gols'
      Origin = 'gols'
      Required = True
    end
    object TblEstTitularesano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
      Required = True
    end
    object TblEstTitularesv: TIntegerField
      FieldName = 'v'
      Origin = 'v'
      Required = True
    end
    object TblEstTitularese: TIntegerField
      FieldName = 'e'
      Origin = 'e'
      Required = True
    end
    object TblEstTitularesd: TIntegerField
      FieldName = 'd'
      Origin = 'd'
      Required = True
    end
  end
  object TblResumo: TFDTable
    Active = True
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ES_RESUM'
    TableName = 'ES_RESUM'
    Left = 256
    Top = 226
    object TblResumocodjogo: TIntegerField
      FieldName = 'codjogo'
      Origin = 'codjogo'
      Required = True
    end
    object TblResumocodadver: TIntegerField
      FieldName = 'codadver'
      Origin = 'codadver'
      Required = True
    end
    object TblResumoj: TIntegerField
      FieldName = 'j'
      Origin = 'j'
      Required = True
    end
    object TblResumov: TIntegerField
      FieldName = 'v'
      Origin = 'v'
      Required = True
    end
    object TblResumoe: TIntegerField
      FieldName = 'e'
      Origin = 'e'
      Required = True
    end
    object TblResumod: TIntegerField
      FieldName = 'd'
      Origin = 'd'
      Required = True
    end
    object TblResumogp: TIntegerField
      FieldName = 'gp'
      Origin = 'gp'
      Required = True
    end
    object TblResumogc: TIntegerField
      FieldName = 'gc'
      Origin = 'gc'
      Required = True
    end
    object TblResumosg: TIntegerField
      FieldName = 'sg'
      Origin = 'sg'
      Required = True
    end
    object TblResumoano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
      Required = True
    end
  end
  object TblTitulos: TFDTable
    Active = True
    IndexFieldNames = 'ano;codcompeticao'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ES_TITULOS'
    TableName = 'ES_TITULOS'
    Left = 256
    Top = 282
    object TblTitulosano: TIntegerField
      Alignment = taCenter
      FieldName = 'ano'
      Origin = 'ano'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblTituloscodcompeticao: TIntegerField
      FieldName = 'codcompeticao'
      Origin = 'codcompeticao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DtsCidade: TDataSource
    DataSet = TblCidade
    Left = 67
    Top = 184
  end
  object QrGeral: TFDQuery
    Connection = BDMySQL
    Left = 632
    Top = 24
  end
  object DtsQrGeral: TDataSource
    DataSet = QrGeral
    Left = 666
    Top = 24
  end
  object TblTatica: TFDTable
    Active = True
    IndexFieldNames = 'esquema;codtatica'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'zanittic_software.CA_TATIC'
    TableName = 'zanittic_software.CA_TATIC'
    Left = 136
    Top = 408
    object TblTaticacodtatica: TIntegerField
      FieldName = 'codtatica'
      Origin = 'codtatica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object TblTaticaesquema: TWideStringField
      FieldName = 'esquema'
      Origin = 'esquema'
      Required = True
      Size = 5
    end
  end
  object DtsTatica: TDataSource
    DataSet = TblTatica
    Left = 167
    Top = 411
  end
  object QrEstatisticas: TFDQuery
    Connection = BDMySQL
    Left = 632
    Top = 79
  end
  object DtsQrEstatisticas: TDataSource
    DataSet = QrEstatisticas
    Left = 666
    Top = 79
  end
  object QrContador: TFDQuery
    Connection = BDMySQL
    Left = 632
    Top = 130
  end
  object DtsQrContador: TDataSource
    DataSet = QrContador
    Left = 666
    Top = 130
  end
  object DtsUsuario: TDataSource
    DataSet = TblUsuario
    Left = 289
    Top = 67
  end
  object TblUsuario: TFDTable
    Active = True
    IndexFieldNames = 'codusuario'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'ca_user'
    TableName = 'ca_user'
    Left = 256
    Top = 66
    object TblUsuariocodusuario: TIntegerField
      FieldName = 'codusuario'
      Origin = 'codusuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object TblUsuarionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 40
    end
    object TblUsuariosenha: TIntegerField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
    end
    object TblUsuarioperfil: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'perfil'
      Origin = 'perfil'
    end
  end
  object DtsBackup: TDataSource
    DataSet = TblBackup
    Left = 289
    Top = 467
  end
  object TblBackup: TFDTable
    Active = True
    IndexFieldNames = 'id_backup'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ca_backup'
    TableName = 'ca_backup'
    Left = 256
    Top = 466
    object TblBackupid_backup: TIntegerField
      FieldName = 'id_backup'
      Origin = 'id_backup'
      Required = True
    end
    object TblBackuptipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 1
    end
    object TblBackupdata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
    end
  end
  object DtsQrBackup: TDataSource
    DataSet = QrBackup
    Left = 666
    Top = 184
  end
  object QrBackup: TFDQuery
    Connection = BDMySQL
    Left = 632
    Top = 184
  end
  object TblPatroc: TFDTable
    Active = True
    IndexFieldNames = 'codpatroc'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ca_patroc'
    TableName = 'ca_patroc'
    Left = 256
    Top = 416
    object TblPatroccodpatroc: TIntegerField
      FieldName = 'codpatroc'
      Origin = 'codpatroc'
      Required = True
      DisplayFormat = '00000'
    end
    object TblPatrocnomepatroc: TWideStringField
      FieldName = 'nomepatroc'
      Origin = 'nomepatroc'
      Required = True
    end
    object TblPatroccodcidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codcidade'
      Origin = 'codcidade'
    end
    object TblPatrocdt_inicio: TDateField
      FieldName = 'dt_inicio'
      Origin = 'dt_inicio'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object TblPatrocdt_fim: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_fim'
      Origin = 'dt_fim'
      EditMask = '!99/99/9999;1;_'
    end
    object TblPatroclogo_patroc: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'logo_patroc'
      Origin = 'logo_patroc'
      Size = 200
    end
  end
  object DtsPatroc: TDataSource
    DataSet = TblPatroc
    Left = 288
    Top = 419
  end
  object DtsFornec: TDataSource
    DataSet = TblFornec
    Left = 289
    Top = 347
  end
  object TblFornec: TFDTable
    Active = True
    IndexFieldNames = 'codfornec'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ca_fornec'
    TableName = 'ca_fornec'
    Left = 256
    Top = 346
    object TblForneccodfornec: TIntegerField
      FieldName = 'codfornec'
      Origin = 'codfornec'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblFornecnomefornec: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomefornec'
      Origin = 'nomefornec'
    end
    object TblForneccodcidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codcidade'
      Origin = 'codcidade'
    end
    object TblFornecdt_inicio: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dt_inicio'
      Origin = 'dt_inicio'
      EditMask = '!99/99/9999;1;_'
    end
    object TblFornecdt_fim: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dt_fim'
      Origin = 'dt_fim'
      EditMask = '!99/99/9999;1;_'
    end
    object TblForneclogo_fornec: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'logo_fornec'
      Origin = 'logo_fornec'
      Size = 200
    end
  end
  object TblUniformes: TFDTable
    Active = True
    IndexFieldNames = 'coduniforme'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'ca_uniformes'
    TableName = 'ca_uniformes'
    Left = 368
    Top = 118
    object TblUniformescoduniforme: TIntegerField
      FieldName = 'coduniforme'
      Origin = 'coduniforme'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object TblUniformesdescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
    end
    object TblUniformesfoto_uniforme: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'foto_uniforme'
      Origin = 'foto_uniforme'
      Size = 200
    end
  end
  object DtsUniformes: TDataSource
    DataSet = TblUniformes
    Left = 402
    Top = 118
  end
  object TblCarreira: TFDTable
    Active = True
    IndexFieldNames = 'coditem'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'ca_carreira'
    TableName = 'ca_carreira'
    Left = 32
    Top = 464
    object TblCarreiracodjogador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codjogador'
      Origin = 'codjogador'
    end
    object TblCarreiracodclube: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codclube'
      Origin = 'codclube'
    end
    object TblCarreiraanoini: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'anoini'
      Origin = 'anoini'
    end
    object TblCarreiraanofim: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'anofim'
      Origin = 'anofim'
    end
  end
  object dtsCarreira: TDataSource
    DataSet = TblCarreira
    Left = 67
    Top = 467
  end
  object tblTiposGols: TFDTable
    Active = True
    IndexFieldNames = 'codtipo'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'es_tipogol'
    TableName = 'es_tipogol'
    Left = 368
    Top = 182
    object tblTiposGolscodtipo: TFDAutoIncField
      FieldName = 'codtipo'
      Origin = 'codtipo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblTiposGolstipo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
    end
  end
  object dtsTiposGols: TDataSource
    DataSet = tblTiposGols
    Left = 402
    Top = 186
  end
  object tblGolsporpartida: TFDTable
    Active = True
    IndexFieldNames = 'coditem'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'es_gols'
    TableName = 'es_gols'
    Left = 368
    Top = 246
  end
  object dtsGolsporpartida: TDataSource
    DataSet = tblGolsporpartida
    Left = 402
    Top = 242
  end
  object tblEscudos: TFDTable
    Active = True
    IndexFieldNames = 'codadver;ano_inicio'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'ca_escudos'
    TableName = 'ca_escudos'
    Left = 371
    Top = 64
    object tblEscudoscoditem: TFDAutoIncField
      FieldName = 'coditem'
      Origin = 'coditem'
      ReadOnly = True
    end
    object tblEscudoscodadver: TIntegerField
      FieldName = 'codadver'
      Origin = 'codadver'
      Required = True
    end
    object tblEscudosano_inicio: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ano_inicio'
      Origin = 'ano_inicio'
    end
    object tblEscudosano_fim: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ano_fim'
      Origin = 'ano_fim'
    end
    object tblEscudosescudo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'escudo'
      Origin = 'escudo'
      Size = 200
    end
  end
  object dtsEscudos: TDataSource
    DataSet = tblEscudos
    Left = 403
    Top = 64
  end
  object tblParametros: TFDTable
    Active = True
    IndexFieldNames = 'CodigoParametro'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'parametros'
    TableName = 'parametros'
    Left = 368
    Top = 424
    object tblParametrosCodigoParametro: TFDAutoIncField
      FieldName = 'CodigoParametro'
      Origin = 'CodigoParametro'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblParametrosDescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 2000
    end
    object tblParametrosValor: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Valor'
      Origin = 'Valor'
      Size = 2000
    end
  end
  object dtsParametros: TDataSource
    DataSet = tblParametros
    Left = 400
    Top = 424
  end
  object tblContinente: TFDTable
    Active = True
    IndexFieldNames = 'codcontinente'
    Connection = BDMySQL
    UpdateOptions.UpdateTableName = 'zanittic_software.ca_contin'
    TableName = 'zanittic_software.ca_contin'
    Left = 368
    Top = 312
    object tblContinentecodcontinente: TFDAutoIncField
      FieldName = 'codcontinente'
      Origin = 'codcontinente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblContinentedescricao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
    end
  end
  object dtsContinente: TDataSource
    DataSet = tblContinente
    Left = 408
    Top = 312
  end
  object tblFederacao: TFDTable
    Active = True
    IndexFieldNames = 'codfederacao'
    Connection = BDMySQL
    Transaction = TransacaoSQL
    UpdateOptions.UpdateTableName = 'zanittic_software.ca_federacao'
    TableName = 'zanittic_software.ca_federacao'
    Left = 136
    Top = 472
    object tblFederacaocodfederacao: TFDAutoIncField
      FieldName = 'codfederacao'
      Origin = 'codfederacao'
    end
    object tblFederacaofederacao: TWideStringField
      FieldName = 'federacao'
      Origin = 'federacao'
      Required = True
      Size = 30
    end
    object tblFederacaobrasao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'brasao'
      Origin = 'brasao'
      Size = 200
    end
  end
  object dtsFederacao: TDataSource
    DataSet = tblFederacao
    Left = 168
    Top = 472
  end
end
