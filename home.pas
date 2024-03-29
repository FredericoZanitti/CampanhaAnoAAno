unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Shellapi, DateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, VclTee.TeeGDIPlus, VclTee.TeEngine,
  VclTee.TeeProcs, VclTee.Chart, VclTee.DBChart, VclTee.Series, frameGrafico,
  System.Actions, Vcl.ActnList, Vcl.ImgList;

type
  TFrmPrincipal = class(TForm)
    LblCodigo: TLabel;
    LblDataLocal: TLabel;
    ImgVisitante: TImage;
    LblPlacarVisit: TLabel;
    LblVs: TLabel;
    LblPlacarMand: TLabel;
    ImgMandante: TImage;
    ShUltimoJogo: TShape;
    LblTitulo: TLabel;
    Shape7: TShape;
    LblTemp: TLabel;
    Label10: TLabel;
    Shape1: TShape;
    LblJogos: TLabel;
    Label4: TLabel;
    LblJogad: TLabel;
    Label6: TLabel;
    LblTecn: TLabel;
    Label8: TLabel;
    Shape2: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    StbSistema: TStatusBar;
    LblUltimoBackup: TLabel;
    QrAux: TFDQuery;
    Shape11: TShape;
    fraGrafico: TfraGrafico;
    btnEstatisticas: TBitBtn;
    MenuPrincipal: TMainMenu;
    MnCadastro: TMenuItem;
    MnArbitros: TMenuItem;
    MnCidades: TMenuItem;
    MnClubes: TMenuItem;
    MnCadastroDeClubes: TMenuItem;
    MnCadastrodeEscudosHistricos: TMenuItem;
    MnCompeticao: TMenuItem;
    MnEstadios: TMenuItem;
    MnFases: TMenuItem;
    Fornecedores1: TMenuItem;
    MnJogadores: TMenuItem;
    MnJogos: TMenuItem;
    MnPatroc: TMenuItem;
    MnTatica: TMenuItem;
    MnTitulos: TMenuItem;
    MnUniformes: TMenuItem;
    MnUsuario: TMenuItem;
    MnEditar: TMenuItem;
    MnBloquear: TMenuItem;
    MnLiberar: TMenuItem;
    MnLiberarAno: TMenuItem;
    BasedeDados1: TMenuItem;
    MnBackup: TMenuItem;
    MnRestore: TMenuItem;
    MnRelatorios: TMenuItem;
    Gerenciadordejogos1: TMenuItem;
    N2: TMenuItem;
    MnCampanha: TMenuItem;
    MnEstGerais: TMenuItem;
    MnPlacarFreq: TMenuItem;
    MnFreq1: TMenuItem;
    MnFreq2: TMenuItem;
    MnFreq3: TMenuItem;
    MnGoleadas: TMenuItem;
    MnGoleadas1: TMenuItem;
    MnGoleadas2: TMenuItem;
    MnGoleadas3: TMenuItem;
    MnGoleadas4: TMenuItem;
    Maioresgoleadasaplicadasemrivais1: TMenuItem;
    Maioresgoleadassofridasporrivais1: TMenuItem;
    MnRelJogos: TMenuItem;
    MnRivais: TMenuItem;
    MnRelAdversarios: TMenuItem;
    MnAdversario1: TMenuItem;
    MnAdversario7: TMenuItem;
    MnAdversario2: TMenuItem;
    MnAdversarios8: TMenuItem;
    MnAdversario4: TMenuItem;
    MnAdversario5: TMenuItem;
    MnAdversarios3: TMenuItem;
    MnAdversario6: TMenuItem;
    MnJogosArbitro: TMenuItem;
    PorCamisa1: TMenuItem;
    MnJogosCampeonato: TMenuItem;
    mnJogosEstreias: TMenuItem;
    MnJogosCampeonato1: TMenuItem;
    MnJogosCampeonato2: TMenuItem;
    MnCodJogo: TMenuItem;
    MnJogosEstadio: TMenuItem;
    MnJogosUf: TMenuItem;
    MnFornec: TMenuItem;
    MnMesAno: TMenuItem;
    MnJogosPais: TMenuItem;
    MnJogosPatroc: TMenuItem;
    MnJogosPeriodo: TMenuItem;
    MnPlacar: TMenuItem;
    MnJogosAno: TMenuItem;
    MnRelJogadores: TMenuItem;
    MnJogadores11: TMenuItem;
    MnJogadores7: TMenuItem;
    MnJogadores8: TMenuItem;
    MnJogadores3: TMenuItem;
    MnJogadores4: TMenuItem;
    MnJogadores9: TMenuItem;
    MnJogadores5: TMenuItem;
    MnJogadores6: TMenuItem;
    MnJogadores2: TMenuItem;
    MnDezMais: TMenuItem;
    mitEstrangeirosMaisAtuaram: TMenuItem;
    mitEstrangeirosMaisMarcaram: TMenuItem;
    mitGoleirosquemaisatuaram: TMenuItem;
    mitJogadoresMaisHattricks: TMenuItem;
    mitJogadoresamaisdisciplinados: TMenuItem;
    mitJogadoresMaisAtuaram: TMenuItem;
    mitJogosComTecnico: TMenuItem;
    mitMaioresartilheiros: TMenuItem;
    mitArtilheirosportemporada: TMenuItem;
    mitMaioresartilheiroscontrarivais: TMenuItem;
    mitMaioresartilheirosdefaltas: TMenuItem;
    mitMaioresartilheirosdepnaltis: TMenuItem;
    mitMaioresartilheirosemfinais: TMenuItem;
    mitMaioreszagueirosartilheiros: TMenuItem;
    mitTecnicosMaisTreinaram: TMenuItem;
    MnJogadores10: TMenuItem;
    MnJogadores1: TMenuItem;
    Pblicos1: TMenuItem;
    MnPublico: TMenuItem;
    MnPublicoMenor: TMenuItem;
    MnPublicoMaiorAno: TMenuItem;
    MnPublicoMenorAno: TMenuItem;
    Mn10UltimosJogos: TMenuItem;
    N1: TMenuItem;
    MnRelTitulos: TMenuItem;
    MnAjuda: TMenuItem;
    MnAtualizar: TMenuItem;
    MnParmetrosGlobais: TMenuItem;
    N3: TMenuItem;
    MnSobre: TMenuItem;
    MnSair: TMenuItem;
    Timer1: TTimer;
    DtsQrAux: TDataSource;
    actMenus: TActionList;
    actCadastroClubes: TAction;
    actCadastroJogos: TAction;
    actCadastroJogador: TAction;
    actCadastroEstadios: TAction;
    actCadastroUniformes: TAction;
    actCadastroArbitros: TAction;
    actCadastroTitulos: TAction;
    actBackup: TAction;
    actCadastroCidades: TAction;
    actCadastroUsuarios: TAction;
    actRestore: TAction;
    actCadastroEscudosHistoricos: TAction;
    imgIcons16: TImageList;
    imgIcons32: TImageList;
    actBotoes32: TActionList;
    actEstatisticasGeraisTimes: TAction;
    MenuPanel: TPanel;
    Label2: TLabel;
    LblVersao: TLabel;
    Shape10: TShape;
    BtnCadClubes: TBitBtn;
    BtnCadJogos: TBitBtn;
    BtnCadJogadores: TBitBtn;
    BtnCadEstadios: TBitBtn;
    BtnUniformes: TBitBtn;
    BtnCadArbitros: TBitBtn;
    BtnCadTitulos: TBitBtn;
    BtnBackup: TBitBtn;
    Melhorias: TMemo;
    MnJogadores12: TMenuItem;
    actCadastroFederacao: TAction;
    CadastrodeFederaes1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure BtnCadEstadiosClick(Sender: TObject);
    procedure BtnCadJogadoresClick(Sender: TObject);
    procedure BtnCadClubesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MnSairClick(Sender: TObject);
    procedure BtnCadArbitrosClick(Sender: TObject);
    procedure BtnCadTitulosClick(Sender: TObject);
    procedure MnFasesClick(Sender: TObject);
    procedure MnCompeticaoClick(Sender: TObject);
    procedure BtnCadJogosClick(Sender: TObject);
    procedure MnTaticaClick(Sender: TObject);
    procedure MnBloquearClick(Sender: TObject);
    procedure MnLiberarClick(Sender: TObject);
    procedure MnLiberarAnoClick(Sender: TObject);
    procedure MnGoleadas1Click(Sender: TObject);
    procedure MnGoleadas2Click(Sender: TObject);
    procedure MnGoleadas3Click(Sender: TObject);
    procedure MnGoleadas4Click(Sender: TObject);
    procedure MnPublicoClick(Sender: TObject);
    procedure MnRivaisClick(Sender: TObject);
    procedure MnAdversario1Click(Sender: TObject);
    procedure MnAdversario2Click(Sender: TObject);
    procedure MnAdversarios3Click(Sender: TObject);
    procedure MnAdversario4Click(Sender: TObject);
    procedure MnAdversario5Click(Sender: TObject);
    procedure MnUltimosJogosClick(Sender: TObject);
    procedure MnAdversario6Click(Sender: TObject);
    procedure MnJogadores1Click(Sender: TObject);
    procedure MnJogadores2Click(Sender: TObject);
    procedure MnJogosAnoClick(Sender: TObject);
    procedure MnJogosArbitroClick(Sender: TObject);
    procedure MnJogosCampeonato1Click(Sender: TObject);
    procedure MnJogosCampeonato2Click(Sender: TObject);
    procedure MnAdversario7Click(Sender: TObject);
    procedure MnJogosEstadioClick(Sender: TObject);
    procedure MnJogosUfClick(Sender: TObject);
    procedure MnJogosPaisClick(Sender: TObject);
    procedure MnJogosPeriodoClick(Sender: TObject);
    procedure MnPlacarClick(Sender: TObject);
    procedure MnFreq1Click(Sender: TObject);
    procedure MnFreq2Click(Sender: TObject);
    procedure MnFreq3Click(Sender: TObject);
    procedure MnJogadores3Click(Sender: TObject);
    procedure MnJogadores4Click(Sender: TObject);
    procedure MnJogadores5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure LblDataLocalClick(Sender: TObject);
    procedure MnJogadores6Click(Sender: TObject);
    procedure MnJogadores7Click(Sender: TObject);
    procedure MnJogadores8Click(Sender: TObject);
    procedure mitMaioresartilheirosClick(Sender: TObject);
    procedure mitArtilheirosportemporadaClick(Sender: TObject);
    procedure mitJogadoresMaisAtuaramClick(Sender: TObject);
    procedure mitTecnicosMaisTreinaramClick(Sender: TObject);
    procedure mitJogadoresamaisdisciplinadosClick(Sender: TObject);
    procedure mitEstrangeirosMaisAtuaramClick(Sender: TObject);
    procedure MnEstGeraisClick(Sender: TObject);
    procedure MnCampanhaClick(Sender: TObject);
    procedure MnRelTitulosClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MnSobreClick(Sender: TObject);
    procedure BtnBackupClick(Sender: TObject);
    procedure mitEstrangeirosMaisMarcaramClick(Sender: TObject);
    procedure MnPatrocClick(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure PorCamisa1Click(Sender: TObject);
    procedure MnPublicoMenorClick(Sender: TObject);
    procedure Mn10UltimosJogosClick(Sender: TObject);
    procedure mitGoleirosquemaisatuaramClick(Sender: TObject);
    procedure mitMaioresartilheiroscontrarivaisClick(Sender: TObject);
    procedure Maioresgoleadasaplicadasemrivais1Click(Sender: TObject);
    procedure Maioresgoleadassofridasporrivais1Click(Sender: TObject);
    procedure MnJogadores9Click(Sender: TObject);
    procedure MnJogadores10Click(Sender: TObject);
    procedure MnFornecClick(Sender: TObject);
    procedure MnMesAnoClick(Sender: TObject);
    procedure MnJogosPatrocClick(Sender: TObject);
    procedure BtnUniformesClick(Sender: TObject);
    procedure MnCodJogoClick(Sender: TObject);
    procedure mitJogadoresMaisHattricksClick(Sender: TObject);
    procedure MnJogadores11Click(Sender: TObject);
    procedure mitJogosComTecnicoClick(Sender: TObject);
    procedure mitMaioreszagueirosartilheirosClick(Sender: TObject);
    procedure MnPublicoMaiorAnoClick(Sender: TObject);
    procedure MnPublicoMenorAnoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MnAtualizarClick(Sender: TObject);
    procedure Gerenciadordejogos1Click(Sender: TObject);
    procedure actCadastroJogosExecute(Sender: TObject);
    procedure actCadastroClubesExecute(Sender: TObject);
    procedure actCadastroJogadorExecute(Sender: TObject);
    procedure actCadastroEstadiosExecute(Sender: TObject);
    procedure actCadastroUniformesExecute(Sender: TObject);
    procedure actCadastroArbitrosExecute(Sender: TObject);
    procedure actCadastroTitulosExecute(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actCadastroCidadesExecute(Sender: TObject);
    procedure actCadastroUsuariosExecute(Sender: TObject);
    procedure actRestoreExecute(Sender: TObject);
    procedure actEstatisticasGeraisTimesExecute(Sender: TObject);
    procedure actCadastroEscudosHistoricosExecute(Sender: TObject);
    procedure MnAdversarios8Click(Sender: TObject);
    procedure mitMaioresartilheirosemfinaisClick(Sender: TObject);
    procedure mitMaioresartilheirosdepnaltisClick(Sender: TObject);
    procedure mitMaioresartilheirosdefaltasClick(Sender: TObject);
    procedure mnJogosEstreiasClick(Sender: TObject);
    procedure MnParmetrosGlobaisClick(Sender: TObject);
    procedure MnJogadores12Click(Sender: TObject);
    procedure actCadastroFederacaoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InformacoesIniciais;
    procedure habilitarCadastroJogos;
    function habilitarBotaoJogos: string;

  var
    indicador: String;
    codigousuario: integer;
  end;

var
  FrmPrincipal: TFrmPrincipal;
  sql, msg: String;
  i, cont: integer;

implementation

{$R *.dfm}

uses module, adversarios, estadios, jogadores, funcoes, arbitros, titulos,
  fases, competicao, jogos, tatica, liberarjogador, telapadraojogos,
  pesquisaclubes, selecionarano, selecionaperiodo, pesquisajogadores,
  pesquisaarbitros, pesquisacompeticao, pesquisaestadios, selecionauf,
  selecionapais, selecionaplacar, frequenciaplacar, geraljogadores,
  r_vitimasdegolsdojogador, pesquisacidades, estatisticasgerais, campanhageral,
  relacaotitulos, usuario, informacao, backup, restore, splash, patrocinadores,
  fornecedor, uniformes, pesquisauniformes, pesquisafornecedor, h_mes,
  pesquisapatrocinador, informacodigojogo, UGerenciadorJogos, escudos, parametros,
  federacao;

procedure TFrmPrincipal.InformacoesIniciais;
begin
  if f_gerais.contadorRegistros('ca_uniformes') = 0 then
  // insere o valor 0 - Nenhum na tabela de uniformes
  // se nao houver nenhum registro na tabela ou
  // se houver registro mas o valor minimo n�o for zero
  begin
    sql := 'insert into ca_uniformes values (0, :DESC, null)';

    QrAux.Close;
    QrAux.sql.Clear;
    QrAux.sql.Add(sql);
    QrAux.Params.ParamByName('DESC').AsString := 'Nenhum';
    QrAux.ExecSQL;
  end
  else
  begin
    sql := 'select min(coduniforme) from ca_uniformes';
    QrAux.Close;
    QrAux.sql.Clear;
    QrAux.sql.Add(sql);
    QrAux.Open;

    if QrAux.Fields[0].AsInteger <> 0 then
    begin
      sql := 'insert into ca_uniformes values (0, :DESC, null)';

      QrAux.Close;
      QrAux.sql.Clear;
      QrAux.sql.Add(sql);
      QrAux.Params.ParamByName('DESC').AsString := 'Nenhum';
      QrAux.ExecSQL;
    end;

  end;

  if indicador = 'S' then
  // esse indicador serve para testar se o usu�rio efetuou o login ou n�o
  // S quer dizer que ele colocou usu�rio e senha e logou normalmente
  // N quer dizer que ele n�o logou, fechou o form ou cancelou a entrada
  begin
    f_gerais.captionForm(FrmPrincipal);
    f_gerais.ultimoJogo(LblCodigo, LblDataLocal, LblPlacarMand, LblPlacarVisit,
      ImgMandante, ImgVisitante);

    f_gerais.testaUsuario(codigousuario);

    if (f_gerais.contadorRegistros('ca_jogad') = 0) and
      (StrToInt(f_gerais.buscarNome('perfil', 'ca_user', 'codusuario',
      IntToStr(codigousuario))) = 0) then
      MnEditar.Enabled := false
    else
      MnEditar.Enabled := True;

    if (f_gerais.contadorRegistros('ca_jogos') = 0) then
    begin
      MnRelatorios.Enabled := false;
      MnTitulos.Enabled := false;
      BtnCadTitulos.Enabled := false;
      ImgMandante.Visible := false;
      ImgVisitante.Visible := false;
      LblPlacarVisit.Visible := false;
      LblPlacarMand.Visible := false;
      LblDataLocal.Visible := false;
      LblVs.Visible := false;
      LblTitulo.Visible := false;
      ShUltimoJogo.Visible := false;
      btnEstatisticas.Visible := False;
    end
    else
    begin
      MnRelatorios.Enabled := True;
      MnTitulos.Enabled := True;
      BtnCadTitulos.Enabled := True;
      ImgMandante.Visible := True;
      ImgVisitante.Visible := True;
      LblPlacarVisit.Visible := True;
      LblPlacarMand.Visible := True;
      LblDataLocal.Visible := True;
      LblVs.Visible := True;
      LblTitulo.Visible := True;
      ShUltimoJogo.Visible := True;
      btnEstatisticas.Visible := True;
    end;

    f_gerais.infIniciais(LblTemp, LblJogos, LblJogad, LblTecn);
    if LblCodigo.Caption = EmptyStr then
        fraGrafico.Visible := False
    else
    begin
        fraGrafico.Visible := True;
        fraGrafico.PreencherGrafico(StrToInt(LblCodigo.Caption));
    end;
  end;
end;

procedure TFrmPrincipal.actBackupExecute(Sender: TObject);
begin
  FrmBackup.MemScript.Clear;
  FrmBackup.MemScript.Visible := false;
  FrmBackup.EdtDestino.Text := f_gerais.ResultadoSQL('select valor from parametros where CodigoParametro = 1');
  FrmBackup.ShowModal;
end;

procedure TFrmPrincipal.actCadastroArbitrosExecute(Sender: TObject);
begin
  CA_ARBIT.ShowModal;
end;

procedure TFrmPrincipal.actCadastroCidadesExecute(Sender: TObject);
begin
  // preencher grid da pesquisa de cidades
  f_gerais.pesquisaCidade(h_cidades.DbGridCidades, 'TODOS');
  h_cidades.ShowModal;
end;

procedure TFrmPrincipal.actCadastroClubesExecute(Sender: TObject);
begin
  CA_ADVER.ShowModal;
end;

procedure TFrmPrincipal.actCadastroEscudosHistoricosExecute(Sender: TObject);
begin
  frmEscudosHistoricos.ShowModal;
end;

procedure TFrmPrincipal.actCadastroEstadiosExecute(Sender: TObject);
begin
    CA_ESTAD.ShowModal;
end;

procedure TFrmPrincipal.actCadastroFederacaoExecute(Sender: TObject);
begin
   CA_FEDERACAO.ShowModal;
end;

procedure TFrmPrincipal.actCadastroJogadorExecute(Sender: TObject);
begin
    CA_JOGAD.ShowModal;
end;

procedure TFrmPrincipal.actCadastroJogosExecute(Sender: TObject);
begin
  if not f_gerais.verifJogParaCadastroJogos() then
  begin
    CA_JOGOS.ShowModal;
  end;
end;

procedure TFrmPrincipal.actCadastroTitulosExecute(Sender: TObject);
begin
  ES_TITULOS.ShowModal;
end;

procedure TFrmPrincipal.actCadastroUniformesExecute(Sender: TObject);
begin
  CA_UNIFORMES.ShowModal;
end;

procedure TFrmPrincipal.actCadastroUsuariosExecute(Sender: TObject);
begin
  CA_USER.ShowModal;
end;

procedure TFrmPrincipal.actEstatisticasGeraisTimesExecute(Sender: TObject);
var
  sql,
  codtime: String;
begin
    sql := 'SELECT ' +
           'CASE WHEN ca_jogos.codadvermand = 0 THEN ca_jogos.codadvervisit ' +
           '   ELSE ca_jogos.codadvermand ' +
           '   END AS Adversario ' +
          'FROM ca_jogos ' +
          'WHERE ca_jogos.codjogo = ' + LblCodigo.Caption;

    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(sql);
    QrAux.Open;

    codtime := QrAux.Fields[0].AsString;

    sql := 'select count(*) from ca_jogos ' + 'where (codadvermand = ' + codtime
      + ' or codadvervisit = ' + codtime + ')';

    FrmDm.QrContador.Close;
    FrmDm.QrContador.sql.Clear;
    FrmDm.QrContador.sql.Add(sql);
    FrmDm.QrContador.Open;

    if FrmDm.QrContador.Fields[0].AsInteger = 0 then
      Application.MessageBox('N�o h� jogos cadastrados contra esse advers�rio',
        'ATEN��O', MB_OK + MB_ICONINFORMATION)
    else
    begin

      // guardar o n�mero do foruml�rio na label
      r_jogospadrao.numerorelatorio := '27';
      r_jogospadrao.codauxiliar1 := codtime;

      r_estgerais.LblSequencia1.Caption := f_gerais.sequencias(r_estgerais.LblDtIniSeq1, r_estgerais.LblDtFimSeq1, codtime, 1, 0);
      r_estgerais.LblSequencia2.Caption := f_gerais.sequencias(r_estgerais.LblDtIniSeq2, r_estgerais.LblDtFimSeq2, codtime, 2, 0);
      r_estgerais.LblSequencia3.Caption := f_gerais.sequencias(r_estgerais.LblDtIniSeq3, r_estgerais.LblDtFimSeq3, codtime, 3, 0);
      r_estgerais.LblSequencia4.Caption := f_gerais.sequencias(r_estgerais.LblDtIniSeq4, r_estgerais.LblDtFimSeq4, codtime, 4, 0);

      f_gerais.buscaImagemPorCodigo(r_estgerais.ImgSeutime, '0', '0');
      f_gerais.buscaImagemPorCodigo(r_estgerais.ImgAdver, codtime, '0');
      r_estgerais.LblTimeMand.Caption :=
        AnsiUpperCase(f_gerais.buscarNome('nome', 'ca_adver', 'codadver', '0'));
      r_estgerais.LblTimeVisit.Caption :=
        AnsiUpperCase(f_gerais.buscarNome('nome', 'ca_adver', 'codadver',
        codtime));

      // ultimo jogo, vitoria e derrota, melhor, pior resultado e estatiscas
      // por campeonato
      f_gerais.melhorPiorResultado(codtime);
      f_gerais.estPeriodoSemPerderSemGanhar(codtime);

      r_estgerais.ShowModal;
    end;
end;

procedure TFrmPrincipal.actRestoreExecute(Sender: TObject);
begin
  FrmRestore.MemScript.Clear;
  FrmRestore.MemScript.Visible := false;
  FrmRestore.ShowModal;
end;

procedure TFrmPrincipal.MnAdversarios8Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'AdverEmFinal';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  f_gerais.preencherSumula(LblCodigo.Caption);
end;

procedure TFrmPrincipal.BtnBackupClick(Sender: TObject);
begin
  actBackup.Execute;
end;

procedure TFrmPrincipal.BtnCadArbitrosClick(Sender: TObject);
begin
  actCadastroArbitros.Execute;
end;

procedure TFrmPrincipal.BtnCadClubesClick(Sender: TObject);
begin
  actCadastroClubes.Execute;
end;

procedure TFrmPrincipal.BtnCadEstadiosClick(Sender: TObject);
begin
  actCadastroEstadios.Execute;
end;

procedure TFrmPrincipal.BtnCadJogadoresClick(Sender: TObject);
begin
  actCadastroJogador.Execute;
end;

procedure TFrmPrincipal.BtnCadJogosClick(Sender: TObject);
begin
  if habilitarBotaoJogos = EmptyStr then
     actCadastroJogos.Execute
  else
     Application.MessageBox(PChar(habilitarBotaoJogos), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.BtnCadTitulosClick(Sender: TObject);
begin
  actCadastroTitulos.Execute;
end;

procedure TFrmPrincipal.BtnUniformesClick(Sender: TObject);
begin
  actCadastroUniformes.Execute;
end;

procedure TFrmPrincipal.MnParmetrosGlobaisClick(Sender: TObject);
begin
  frmParametros.ShowModal;
end;

procedure TFrmPrincipal.PorCamisa1Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaUniforme(h_uniformes.DbGridUniforme, 'TODOS');
  h_uniformes.identificacao := 'MnCamisas';
  h_uniformes.ShowModal;
end;

procedure TFrmPrincipal.MnJogosPatrocClick(Sender: TObject);
begin
  // preencher grid da pesquisa de patrocinadores
  f_gerais.pesquisaPatroc(h_patrocinador.DbGridPatroc, 'TODOS');
  h_patrocinador.identificacao := 'MnJogosPatroc';
  h_patrocinador.ShowModal;
end;

procedure TFrmPrincipal.MnMesAnoClick(Sender: TObject);
begin
  h_meses.origem := 'MnMesAno';
  h_meses.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores10Click(Sender: TObject);
begin
  r_jogospadrao.numerorelatorio := '35';
  f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
  h_jogadores.identificacao := 'MnJogadores10';
  h_jogadores.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores11Click(Sender: TObject);
begin
  sql := 'select ca_jogad.codjogador, ca_jogad.nome, ca_jogad.dtnasc ' +
    'from ca_jogad ' + 'where month(ca_jogad.dtnasc) = month(now()) ' +
    'and day(ca_jogad.dtnasc) = day(now()) ' +
    'and ca_jogad.dtnasc != :DATAPADRAO ' + 'order by ca_jogad.dtnasc desc ' +
    'limit 14 offset 0';

  f_gerais.preencherAniversariantes(sql);
end;

procedure TFrmPrincipal.MnJogadores12Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisacompeticao(h_competicao.DbGridCompeticao, 'TODOS');
  h_competicao.identificacao := 'MnJogadores12';
  h_competicao.ShowModal;
end;

procedure TFrmPrincipal.Mn10UltimosJogosClick(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '31';

  sql := 'select sum(a.j), sum(a.v), sum(a.e), sum(a.d), sum(a.gp), sum(a.gc), sum(a.sg) '
    + 'from ( ' +
    'select r.j, r.v, r.e, r.d, r.gp, r.gc, r.sg '
    + 'from es_resum r, ca_jogos j ' + 'where r.codjogo = j.codjogo ' +
    'group by j.data ' + 'order by j.data desc ' + 'limit 10 offset 0' + ') as a';

  FrmDm.QrContador.Close;
  FrmDm.QrContador.sql.Clear;
  FrmDm.QrContador.sql.Add(sql);
  FrmDm.QrContador.Open;
  FrmDm.QrContador.First;

  if FrmDm.QrContador.Fields[0].AsInteger = 0 then
  begin
    msg := 'Seu time ainda nao jogou esse ano!';
    Application.MessageBox(PChar(msg), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin

    // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
    // e dividir por 10 truncando o resultado, assim teremos a quantidade de
    // p�ginas a ser exibida.
    if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
    else
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

    r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
    f_gerais.determinaVEDRelatorios(FrmDm.QrContador);

    // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
    r_jogospadrao.CbxPagina.Clear;
    for i := 1 to cont do
    begin
      r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
    end;
    r_jogospadrao.CbxPagina.ItemIndex := 0;

    // agora faremos a pesquisa com retorno dos resultados para serem
    // arpesentados na tela padr�o
    sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, publico '
      + 'from ca_jogos order by data desc ' + 'limit :LIMITE offset :CORTE';

    // fun��o para preencher a tela padr�o com os resultados da sql acima
    f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

    // t�tulos e descri��o do relat�rio
    r_jogospadrao.LblDescricao1.Caption := '�LTIMOS 10 JOGOS DISPUTADOS';
    r_jogospadrao.LblDescricao2.Caption :=
      'Considerando todos os jogos cadastrados';
    // buscar escudo do seu time
    f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
    // definir t�tulo do formul�rio
    r_jogospadrao.Caption := '�ltimos 10 jogos disputados: ' +
      f_gerais.buscarNome('nome', 'ca_adver', 'codadver', '0');
    // mostara a consulta finalizada
    r_jogospadrao.ShowModal;
  end;
end;

procedure TFrmPrincipal.MnAdversario1Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnAdversario1';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnAdversario2Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnAdversario2';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnAdversario4Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnAdversario4';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnAdversario5Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnAdversario5';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnAdversario6Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnAdversario6';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnAdversario7Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnAdversario7';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnAdversarios3Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  f_gerais.anocompeticao := 'MnAdversario3';
  h_clubes.identificacao := 'MnAdversario3';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnAtualizarClick(Sender: TObject);
begin
  InformacoesIniciais;
end;

procedure TFrmPrincipal.MnBloquearClick(Sender: TObject);
begin
  f_gerais.atualizaSituacaoGeral(1);
end;

procedure TFrmPrincipal.MnCampanhaClick(Sender: TObject);
begin
  f_gerais.anocompeticao := 'estatisticasporano';
  f_gerais.preencherCbxAnos(r_campanhageral.CbxAnos);
  f_gerais.preencherGridsCampanhaGeral(r_campanhageral.CbxAnos.Text);
  r_campanhageral.Caption := 'CAMPANHA GERAL POR ANO - ' +
    r_campanhageral.CbxAnos.Text;
  f_gerais.buscaImagemPorCodigo(r_campanhageral.ImgSeutime, '0', '0');
  r_jogospadrao.numerorelatorio := '28';
  r_jogospadrao.codauxiliar1 := r_campanhageral.CbxAnos.Text;

  if r_campanhageral.qryGolsPorPeriodo.Active then
     r_campanhageral.qryGolsPorPeriodo.Close;
  r_campanhageral.qryGolsPorPeriodo.Params.ParamByName('Temporada').Value := 0;
  r_campanhageral.qryGolsPorPeriodo.Open;

  r_campanhageral.ShowModal;
end;

procedure TFrmPrincipal.MnCodJogoClick(Sender: TObject);
begin
  h_codjogo.ShowModal;
end;

procedure TFrmPrincipal.MnCompeticaoClick(Sender: TObject);
begin
  CA_COMPE.ShowModal;
end;

procedure TFrmPrincipal.MnEstGeraisClick(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnEstGerais';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnFasesClick(Sender: TObject);
begin
  CA_FASE.ShowModal;
end;

procedure TFrmPrincipal.MnFornecClick(Sender: TObject);
begin
  // preencher grid da pesquisa de fornecedores
  f_gerais.pesquisaFornec(h_fornecedor.DbGridFornec, 'TODOS');
  h_fornecedor.identificacao := 'MnFornec';
  h_fornecedor.ShowModal;
end;

procedure TFrmPrincipal.MnGoleadas1Click(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '1';

  // contar a quantidade de registros retornados na pesquisa
  sql := 'select sum(r.j), sum(r.v), sum(r.e), sum(r.d), sum(r.gp), sum(r.gc), sum(r.sg) '
    + 'from es_resum r ' + 'where sg >= 3';

  FrmDm.QrContador.Close;
  FrmDm.QrContador.sql.Clear;
  FrmDm.QrContador.sql.Add(sql);
  FrmDm.QrContador.Open;
  FrmDm.QrContador.First;

  if FrmDm.QrContador.Fields[0].AsInteger = 0 then
  begin
    msg := 'Seu time ainda n�o aplicou nenhuma goleada ' + #13 +
      'em seus advers�rios!';
    Application.MessageBox(PChar(msg), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin

    // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
    // e dividir por 10 truncando o resultado, assim teremos a quantidade de
    // p�ginas a ser exibida.
    if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
    else
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

    r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
    f_gerais.determinaVEDRelatorios(FrmDm.QrContador);

    // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
    r_jogospadrao.CbxPagina.Clear;
    for i := 1 to cont do
    begin
      r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
    end;
    r_jogospadrao.CbxPagina.ItemIndex := 0;

    // agora faremos a pesquisa com retorno dos resultados para serem
    // arpesentados na tela padr�o
    sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar1-placar2 saldo, placar1 golspro '
      + 'from ca_jogos ' + 'where codadvermand = 0 ' +
      'and placar1-placar2 >= 3 ' + 'union ' +
      'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar2-placar1 saldo, placar2 golspro '
      + 'from ca_jogos ' + 'where codadvervisit = 0 ' +
      'and placar2-placar1 >= 3 ' +
      'order by saldo desc, golspro desc, data desc ' +
      'limit :LIMITE offset :CORTE';

    // fun��o para preencher a tela padr�o com os resultados da sql acima
    f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

    // t�tulos e descri��o do relat�rio
    r_jogospadrao.LblDescricao1.Caption := 'MAIORES GOLEADAS APLICADAS';
    r_jogospadrao.LblDescricao2.Caption := 'POR 3 GOLS OU MAIS DE DIFEREN�A';
    // buscar escudo do seu time
    f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
    // definir t�tulo do formul�rio
    r_jogospadrao.Caption := 'Maiores Goleadas Aplicadas: ' +
      f_gerais.buscarNome('nome', 'ca_adver', 'codadver', '0');
    // mostara a consulta finalizada
    r_jogospadrao.ShowModal;
  end;

end;

procedure TFrmPrincipal.MnGoleadas2Click(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '2';

  // contar a quantidade de registros retornados na pesquisa
  sql := 'select sum(r.j), sum(r.v), sum(r.e), sum(r.d), sum(r.gp), sum(r.gc), sum(r.sg) '
    + 'from es_resum r ' + 'where sg <= -3';

  FrmDm.QrContador.Close;
  FrmDm.QrContador.sql.Clear;
  FrmDm.QrContador.sql.Add(sql);
  FrmDm.QrContador.Open;
  FrmDm.QrContador.First;

  if FrmDm.QrContador.Fields[0].AsInteger = 0 then
  begin
    msg := 'Seu time ainda n�o sofreu nenhuma goleada ' + #13 +
      'de seus advers�rios!';
    Application.MessageBox(PChar(msg), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin

    // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
    // e dividir por 10 truncando o resultado, assim teremos a quantidade de
    // p�ginas a ser exibida.
    if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
    else
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

    r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
    f_gerais.determinaVEDRelatorios(FrmDm.QrContador);

    // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
    r_jogospadrao.CbxPagina.Clear;
    for i := 1 to cont do
    begin
      r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
    end;
    r_jogospadrao.CbxPagina.ItemIndex := 0;

    // agora faremos a pesquisa com retorno dos resultados para serem
    // arpesentados na tela padr�o
    sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar1-placar2 as SALDO, placar2 as ADVER '
      + 'from ca_jogos ' + 'where codadvermand = 0 ' +
      'and placar2-placar1 >= 3 ' + 'union ' +
      'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar2-placar1 as SALDO, placar1 as ADVER '
      + 'from ca_jogos ' + 'where codadvervisit = 0 ' +
      'and placar1-placar2 >= 3 ' + 'order by saldo, adver desc, data desc ' +
      'limit :LIMITE offset :CORTE';

    // fun��o para preencher a tela padr�o com os resultados da sql acima
    f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

    // t�tulos e descri��o do relat�rio
    r_jogospadrao.LblDescricao1.Caption := 'MAIORES GOLEADAS SOFRIDAS';
    r_jogospadrao.LblDescricao2.Caption := 'POR 3 GOLS OU MAIS DE DIFEREN�A';
    // buscar escudo do seu time
    f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
    // definir t�tulo do formul�rio
    r_jogospadrao.Caption := 'Maiores Goleadas Sofridas: ' +
      f_gerais.buscarNome('nome', 'ca_adver', 'codadver', '0');
    // mostara a consulta finalizada
    r_jogospadrao.ShowModal;
  end;
end;

procedure TFrmPrincipal.MnGoleadas3Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnGoleadas3';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnGoleadas4Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnGoleadas4';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  InformacoesIniciais;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja realmente sair do sistema?', 'ATEN��O',
    36) = 7 then
    Action := caNone
    // nenhuma a��o ser� executada ou seja n�o fechar� o form.
  else
    Application.Terminate;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      FrmPrincipal.Close;
    VK_F5:
      BtnCadJogosClick(Self);
    VK_F6:
      BtnCadClubesClick(Self);
    VK_F7:
      BtnCadJogadoresClick(Self);
    VK_F8:
      BtnCadEstadiosClick(Self);
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  InformacoesIniciais;
end;

procedure TFrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  CA_FORNEC.ShowModal;
end;

procedure TFrmPrincipal.LblDataLocalClick(Sender: TObject);
begin
  // checar se escala��o est� dispon�vel
  if f_gerais.ResultadoSQL(Format('select wo from ca_jogos where codjogo = %s',[LblCodigo.Caption])) = 1 then
  begin
    msg := 'S�mula n�o dispon�vel, jogo vencido por WO!';
    Application.MessageBox(Pchar(msg), 'ATEN��O', MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  if f_gerais.contRegComUmParametro('ES_TITUL', 'codjogo',
    LblCodigo.Caption) = 0 then
  begin
    msg := 'A escala��o deste jogo n�o est� dispon�vel!';
    Application.MessageBox(Pchar(msg), 'ATEN��O', MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  f_gerais.preencherSumula(LblCodigo.Caption);
end;

procedure TFrmPrincipal.MnFreq1Click(Sender: TObject);
begin
  h_freqplacar.preencheListBox();
  h_freqplacar.LblTitulo.Caption := 'FREQU�NCIA DE PLACARES - GERAL';
  h_freqplacar.ShowModal;
end;

procedure TFrmPrincipal.MnFreq2Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnFreq2';
  h_clubes.ShowModal;
  h_freqplacar.ShowModal;
end;

procedure TFrmPrincipal.MnFreq3Click(Sender: TObject);
begin
  f_gerais.anocompeticao := 'MnFreq3';
  h_anos.identificacao := 'MnFreq3';
  h_anos.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores1Click(Sender: TObject);
begin
  // preencher grid da pesquisa de Jogadores
  f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
  h_jogadores.identificacao := 'MnJogadores1';
  h_jogadores.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores2Click(Sender: TObject);
begin
  // preencher grid da pesquisa de Jogadores
  f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
  h_jogadores.identificacao := 'MnJogadores2';
  Application.MessageBox('Selecione o 1� Jogador ou T�cnico', 'SELE�AO',
    MB_OK + MB_ICONINFORMATION);
  h_jogadores.ShowModal;
  f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
  h_jogadores.identificacao := 'MnJogadores2a';
  Application.MessageBox('Selecione o 2� Jogador ou T�cnico', 'SELE�AO',
    MB_OK + MB_ICONINFORMATION);
  h_jogadores.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores3Click(Sender: TObject);
begin
  f_gerais.anocompeticao := 'EstatisticasGeraisJogador';
  f_gerais.preencherCbxAnos(r_geraljogador.CbxAnos);
  f_gerais.preencherEstatisticasGeraisJogadores
    (r_geraljogador.DbGridEstatisticas, r_geraljogador.CbxAnos.Text, 'G');
  // trazer informa��es reduzidas do jogador
  f_gerais.InfReduzidaJogador(r_geraljogador.DbGridEstatisticas.Columns[0]
    .Field.AsString, r_geraljogador.ImgNacionalidade,
    r_geraljogador.ImgFotoJogador, r_geraljogador.LblApelido,
    r_geraljogador.LblNomeCompleto, r_geraljogador.LblPeriodo,
    r_geraljogador.LblPosicao);
  r_geraljogador.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores4Click(Sender: TObject);
begin
  // preencher grid da pesquisa de Jogadores
  f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
  h_jogadores.identificacao := 'MnJogadores4';
  h_jogadores.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores5Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnJogadores5';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores6Click(Sender: TObject);
begin
  // preencher grid da pesquisa de Jogadores
  f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
  h_jogadores.identificacao := 'MnJogadores6';
  h_jogadores.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores7Click(Sender: TObject);
begin
  // preencher grid da pesquisa de Jogadores
  f_gerais.pesquisaclubes(h_clubes.DbGridClubes, 'TODOS');
  h_clubes.identificacao := 'MnAdversario8';
  h_clubes.ShowModal;
end;

procedure TFrmPrincipal.MnJogadores8Click(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '26';

  // contar a quantidade de registros retornados na pesquisa
  sql := 'select sum(j), sum(v), sum(e), sum(d), sum(gp), sum(gc), sum(sg) ' +
    'from ( ' +
    'select sum(r.j) j, sum(r.v) v, sum(r.e) e, sum(r.d) d, sum(r.gp) gp, sum(r.gc) gc, sum(r.sg) sg '
    + 'from ca_jogos j, es_titul e, es_resum r ' +
    'where j.codjogo = e.codjogo ' + 'and j.codjogo = r.codjogo ' +
    'and e.gols >= 3 ' + 'union ' +
    'select sum(r.j) j, sum(r.v) v, sum(r.e) e, sum(r.d) d, sum(r.gp) gp, sum(r.gc) gc, sum(r.sg) sg '
    + 'from ca_jogos j, es_reser e, es_resum r ' +
    'where j.codjogo = e.codjogo ' + 'and j.codjogo = r.codjogo ' +
    'and e.gols >= 3 ' + ') as a';

  FrmDm.QrContador.Close;
  FrmDm.QrContador.sql.Clear;
  FrmDm.QrContador.sql.Add(sql);
  FrmDm.QrContador.Open;
  FrmDm.QrContador.First;

  if FrmDm.QrContador.Fields[0].AsInteger = 0 then
  begin
    msg := 'Nenhum jogador marcou 3 gols ou mais eu uma �nica partida!';
    Application.MessageBox(PChar(msg), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin

    // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
    // e dividir por 10 truncando o resultado, assim teremos a quantidade de
    // p�ginas a ser exibida.
    if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
    else
      cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

    r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
    f_gerais.determinaVEDRelatorios(FrmDm.QrContador);

    // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
    r_jogospadrao.CbxPagina.Clear;
    for i := 1 to cont do
    begin
      r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
    end;
    r_jogospadrao.CbxPagina.ItemIndex := 0;

    // agora faremos a pesquisa com retorno dos resultados para serem
    // arpesentados na tela padr�o
    sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, gols, codjogador '
      + 'from ( ' +
      'select j.codjogo, j.data, j.codadvermand, j.placar1, j.placar2, j.codadvervisit, j.codestadio, j.codcompeticao, e.gols, e.codjogador '
      + 'from ca_jogos j, es_titul e ' + 'where j.codjogo = e.codjogo ' +
      'and e.gols >= 3 ' + 'union ' +
      'select j.codjogo, j.data, j.codadvermand, j.placar1, j.placar2, j.codadvervisit, j.codestadio, j.codcompeticao, e.gols, e.codjogador '
      + 'from ca_jogos j, es_reser e ' + 'where j.codjogo = e.codjogo ' +
      'and e.gols >= 3 ' + ') as a ' + 'order by gols desc, data desc ' +
      'limit :LIMITE offset :CORTE';

    // fun��o para preencher a tela padr�o com os resultados da sql acima
    f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

    // t�tulos e descri��o do relat�rio
    r_jogospadrao.LblDescricao1.Caption := 'MAIORES ARTILHEIROS POR JOGO';
    r_jogospadrao.LblDescricao2.Caption :=
      'que marcaram 3 gols ou mais em uma mesma partida';
    // buscar escudo do seu time
    f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
    // definir t�tulo do formul�rio
    r_jogospadrao.Caption := 'Maiores Artilheiros por Jogo';
    // mostara a consulta finalizada
    r_jogospadrao.ShowModal;
  end;
end;

procedure TFrmPrincipal.MnJogadores9Click(Sender: TObject);
var
  codigos: String;
begin
  // preencher grid da pesquisa de Jogadores
  codigos := f_gerais.retornaCodigosRivais();

  if codigos = EmptyStr then
  begin
    msg := 'N�o h� rivais cadastrados no sistema!';
    Application.MessageBox(PChar(msg), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
  end
  else
  begin
    r_jogospadrao.numerorelatorio := '34';
    r_jogospadrao.codauxiliar1 := f_gerais.retornaCodigosRivais();
    f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
    h_jogadores.identificacao := 'MnJogadores9';
    h_jogadores.ShowModal;
  end;
end;

procedure TFrmPrincipal.MnJogosAnoClick(Sender: TObject);
begin
  f_gerais.anocompeticao := 'MnJogosAno';
  h_anos.identificacao := 'MnJogosAno';
  h_anos.ShowModal;
end;

procedure TFrmPrincipal.MnJogosArbitroClick(Sender: TObject);
begin
  // preencher grid da pesquisa de arbitros
  f_gerais.pesquisaArbitro(h_arbitros.DbGridArbitro, 'TODOS');
  h_arbitros.identificacao := 'MnJogosArbitro';
  h_arbitros.ShowModal;
end;

procedure TFrmPrincipal.MnJogosEstadioClick(Sender: TObject);
begin
  // preencher grid da pesquisa de est�dios
  f_gerais.pesquisaEstadio(h_estadios.DbGridEstadio, 'TODOS');
  h_estadios.identificacao := 'MnJogosEstadio';
  h_estadios.ShowModal;
end;

procedure TFrmPrincipal.mnJogosEstreiasClick(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisacompeticao(h_competicao.DbGridCompeticao, 'TODOS');
  h_competicao.identificacao := 'MnJogosEstreias';
  h_competicao.ShowModal;
end;

procedure TFrmPrincipal.MnJogosPaisClick(Sender: TObject);
begin
  h_pais.identificacao := 'MnJogosPais';
  h_pais.ShowModal;
end;

procedure TFrmPrincipal.MnJogosPeriodoClick(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '23';
  h_periodo.identificacao := 'MnJogosPeriodo';
  h_periodo.ShowModal;
end;

procedure TFrmPrincipal.MnJogosUfClick(Sender: TObject);
begin
  h_uf.identificacao := 'MnJogosUf';
  h_uf.ShowModal;
end;

procedure TFrmPrincipal.MnLiberarAnoClick(Sender: TObject);
begin
  f_gerais.liberaJogadores('TODOS');
  h_liberarjogador.ShowModal;
end;

procedure TFrmPrincipal.MnLiberarClick(Sender: TObject);
begin
  f_gerais.atualizaSituacaoGeral(0);
end;

procedure TFrmPrincipal.MnPatrocClick(Sender: TObject);
begin
  CA_PATROC.ShowModal;
end;

procedure TFrmPrincipal.MnPlacarClick(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '24';
  f_gerais.buscaImagemPorCodigo(h_placar.ImgEscudoSeutime, '0', '0');
  h_placar.identificacao := 'MnPlacar';
  h_placar.ShowModal;
end;

procedure TFrmPrincipal.MnPublicoClick(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '5';

  // contar a quantidade de registros retornados na pesquisa
  sql := 'select count(*) from ca_jogos where publico > 0';

  FrmDm.QrContador.Close;
  FrmDm.QrContador.sql.Clear;
  FrmDm.QrContador.sql.Add(sql);
  FrmDm.QrContador.Open;
  FrmDm.QrContador.First;

  // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
  // e dividir por 10 truncando o resultado, assim teremos a quantidade de
  // p�ginas a ser exibida.
  if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
    cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
  else
    cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

  r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
  r_jogospadrao.LblDescricao3.Caption := EmptyStr;

  // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
  r_jogospadrao.CbxPagina.Clear;
  for i := 1 to cont do
  begin
    r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
  end;
  r_jogospadrao.CbxPagina.ItemIndex := 0;

  // agora faremos a pesquisa com retorno dos resultados para serem
  // arpesentados na tela padr�o
  sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, publico '
    + 'from ca_jogos where publico > 0 order by publico desc ' +
    'limit :LIMITE offset :CORTE';

  // fun��o para preencher a tela padr�o com os resultados da sql acima
  f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

  // t�tulos e descri��o do relat�rio
  r_jogospadrao.LblDescricao1.Caption := 'MAIORES P�BLICOS';
  r_jogospadrao.LblDescricao2.Caption :=
    'Considerando todos os jogos cadastrados';
  // buscar escudo do seu time
  f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
  // definir t�tulo do formul�rio
  r_jogospadrao.Caption := 'Maiores P�blicos: ' + f_gerais.buscarNome('nome',
    'ca_adver', 'codadver', '0');
  // mostara a consulta finalizada
  r_jogospadrao.ShowModal;
end;

procedure TFrmPrincipal.MnPublicoMaiorAnoClick(Sender: TObject);
begin
  f_gerais.anocompeticao := 'MnPublicoMaiorAno';
  h_anos.identificacao := 'MnPublicoMaiorAno';
  h_anos.ShowModal;
end;

procedure TFrmPrincipal.MnPublicoMenorAnoClick(Sender: TObject);
begin
  f_gerais.anocompeticao := 'MnPublicoMenorAno';
  h_anos.identificacao := 'MnPublicoMenorAno';
  h_anos.ShowModal;
end;

procedure TFrmPrincipal.MnPublicoMenorClick(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '30';

  // contar a quantidade de registros retornados na pesquisa
  sql := 'select count(*) from ca_jogos where publico > 0';

  FrmDm.QrContador.Close;
  FrmDm.QrContador.sql.Clear;
  FrmDm.QrContador.sql.Add(sql);
  FrmDm.QrContador.Open;
  FrmDm.QrContador.First;

  // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
  // e dividir por 10 truncando o resultado, assim teremos a quantidade de
  // p�ginas a ser exibida.
  if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
    cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
  else
    cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

  r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
  r_jogospadrao.LblDescricao3.Caption := EmptyStr;

  // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
  r_jogospadrao.CbxPagina.Clear;
  for i := 1 to cont do
  begin
    r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
  end;
  r_jogospadrao.CbxPagina.ItemIndex := 0;

  // agora faremos a pesquisa com retorno dos resultados para serem
  // arpesentados na tela padr�o
  sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, publico '
    + 'from ca_jogos where publico > 0 order by publico ' +
    'limit :LIMITE offset :CORTE';

  // fun��o para preencher a tela padr�o com os resultados da sql acima
  f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

  // t�tulos e descri��o do relat�rio
  r_jogospadrao.LblDescricao1.Caption := 'MENORES P�BLICOS';
  r_jogospadrao.LblDescricao2.Caption :=
    'Considerando todos os jogos cadastrados';
  // buscar escudo do seu time
  f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
  // definir t�tulo do formul�rio
  r_jogospadrao.Caption := 'Menores P�blicos: ' + f_gerais.buscarNome('nome',
    'ca_adver', 'codadver', '0');
  // mostara a consulta finalizada
  r_jogospadrao.ShowModal;
end;

procedure TFrmPrincipal.MnRelTitulosClick(Sender: TObject);
begin
  r_titulos.LblTitNacional.Caption := EmptyStr;
  r_titulos.LblTitInter.Caption := EmptyStr;
  r_titulos.LblTitRegional.Caption := EmptyStr;
  r_titulos.Caption := 'T�TULOS CONQUISTADOS PELO ' +
    AnsiUpperCase(f_gerais.buscarNome('nome', 'ca_adver', 'codadver', '0'));
  f_gerais.relacaotitulos('N', r_titulos.LblTitNacional);
  f_gerais.relacaotitulos('I', r_titulos.LblTitInter);
  f_gerais.relacaotitulos('R', r_titulos.LblTitRegional);

  sql := 'select max(j.data) ' + 'from es_titulos t, ca_jogos j ' +
    'where t.ano = j.temporada ' +
    'and t.codcompeticao = j.codcompeticao ' +
    'and t.ano = (select max(ano) from es_titulos)';

  FrmDm.QrGeral.Close;
  FrmDm.QrGeral.sql.Clear;
  FrmDm.QrGeral.sql.Add(sql);
  FrmDm.QrGeral.Open;

  if f_gerais.idadeAtual(FrmDm.QrGeral.Fields[0].AsDateTime, now, 'N') <> EmptyStr
  then
    r_titulos.LblTempo.Caption := 'O ' + f_gerais.buscarNome('nome', 'ca_adver',
      'codadver', '0') + ' est� h� ' + f_gerais.idadeAtual
      (FrmDm.QrGeral.Fields[0].AsDateTime, now, 'N') + ' sem conquistar um t�tulo!'
  else
    r_titulos.LblTempo.Caption := '�ltimo t�tulo conquistado hoje!';

  f_gerais.buscaImagemPorCodigo(r_titulos.ImgEscudoSeutime, '0', '0');
  f_gerais.qtdeDeTitulos(r_titulos.LblQtdeTitulos, r_titulos.LblUltimoTitulo);

  r_titulos.ShowModal;
end;

procedure TFrmPrincipal.MnRivaisClick(Sender: TObject);
begin
  f_gerais.anocompeticao := 'MnRivais';
  h_anos.identificacao := 'MnRivais';
  h_anos.ShowModal;
end;

procedure TFrmPrincipal.MnSairClick(Sender: TObject);
begin
  FrmPrincipal.Close;
end;

procedure TFrmPrincipal.MnSobreClick(Sender: TObject);
begin
  h_informacao.ShowModal;
end;

procedure TFrmPrincipal.MnTaticaClick(Sender: TObject);
begin
  CA_TATIC.ShowModal;
end;

procedure TFrmPrincipal.MnUltimosJogosClick(Sender: TObject);
begin
  // guardar o n�mero do foruml�rio na label
  r_jogospadrao.numerorelatorio := '12';

  // contar a quantidade de registros retornados na pesquisa
  sql := 'select count(*) from ca_jogos where publico > 0';

  FrmDm.QrContador.Close;
  FrmDm.QrContador.sql.Clear;
  FrmDm.QrContador.sql.Add(sql);
  FrmDm.QrContador.Open;
  FrmDm.QrContador.First;

  // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
  // e dividir por 10 truncando o resultado, assim teremos a quantidade de
  // p�ginas a ser exibida.
  if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
    cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
  else
    cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

  r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
  r_jogospadrao.LblDescricao3.Caption := EmptyStr;

  // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
  r_jogospadrao.CbxPagina.Clear;
  for i := 1 to cont do
  begin
    r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
  end;
  r_jogospadrao.CbxPagina.ItemIndex := 0;

  // agora faremos a pesquisa com retorno dos resultados para serem
  // arpesentados na tela padr�o
  sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, publico '
    + 'from ca_jogos where publico > 0 order by publico desc ' +
    'limit :LIMITE offset :CORTE';

  // fun��o para preencher a tela padr�o com os resultados da sql acima
  f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

  // t�tulos e descri��o do relat�rio
  r_jogospadrao.LblDescricao1.Caption := 'MAIORES P�BLICOS';
  r_jogospadrao.LblDescricao2.Caption :=
    'Considerando todos os jogos cadastrados';
  // buscar escudo do seu time
  f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
  // definir t�tulo do formul�rio
  r_jogospadrao.Caption := 'Maiores P�blicos: ' + f_gerais.buscarNome('nome',
    'ca_adver', 'codadver', '0');
  // mostara a consulta finalizada
  r_jogospadrao.ShowModal;
end;

procedure TFrmPrincipal.mitMaioresartilheirosClick(Sender: TObject);
begin
  sql := ' SELECT g.codjogador, j.nome, COUNT(g.tempo) gols ' +
         ' FROM es_gols g ' +
         ' INNER JOIN es_tipogol t ON g.codtipogol = t.codtipo ' +
         ' INNER JOIN ca_jogad j ON g.codjogador = j.codjogador ' +
         ' GROUP BY g.codjogador, j.nome ' +
         ' ORDER BY COUNT(g.tempo) DESC ' +
         ' LIMIT 15 OFFSET 0';

  f_gerais.preencherOsDezMais(sql, 1);
end;

procedure TFrmPrincipal.mitArtilheirosportemporadaClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(gols) gols, ano from( ' +
    'select e.ano, e.codjogador, j.nome, sum(e.gols) gols ' +
    'from es_titul e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'group by e.ano, e.codjogador, j.nome ' + 'having gols > 0 ' + 'union ' +
    'select e.ano, e.codjogador, j.nome, sum(e.gols) gols ' +
    'from es_reser e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'group by e.ano, e.codjogador, j.nome ' + 'having gols > 0 ' + ') as a ' +
    'group by ano, codjogador, nome ' + 'order by 3 desc, 4 desc, 2 ' +
    'limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 2);
end;

procedure TFrmPrincipal.mitJogadoresMaisAtuaramClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(jogos) qtde from( ' +
    'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_titul e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao not in (6, 9) ' + 'group by e.codjogador, j.nome ' +
    'union ' + 'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_reser e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao not in (6, 9) ' + 'group by e.codjogador, j.nome ' +
    ') as a ' + 'group by codjogador, nome ' + 'order by 3 desc ' +
    'limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 3);
end;

procedure TFrmPrincipal.mitTecnicosMaisTreinaramClick(Sender: TObject);
begin
  // Excluir o codigo de jogador 574 pois pertence a um grupo que
  // treinava o Fluminense em d�cadas passadas
  sql := 'select codjogador, nome, sum(jogos) qtde from( ' +
    'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_titul e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao = 6 ' + 'and j.codjogador not in (574) ' +
    'group by e.codjogador, j.nome ' + 'union ' +
    'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_reser e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao = 6 ' + 'and j.codjogador not in (574) ' +
    'group by e.codjogador, j.nome ' + ') as a ' + 'group by codjogador, nome '
    + 'order by 3 desc ' + 'limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 4);
end;

procedure TFrmPrincipal.mitJogadoresamaisdisciplinadosClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(ca+cv) total, sum(ca) ca, sum(cv) cv from( ' +
    'select e.codjogador, j.nome, sum(e.camarelo) ca, sum(e.cvermelho) cv ' +
    'from es_titul e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'group by e.codjogador, j.nome ' + 'union ' +
    'select e.codjogador, j.nome, sum(e.camarelo) ca, sum(e.cvermelho) cv ' +
    'from es_reser e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'group by e.codjogador, j.nome ' + ') as a ' + 'group by codjogador, nome '
    + 'order by 3 desc, 5 desc, 4 desc ' + 'limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 5);
end;

procedure TFrmPrincipal.mitEstrangeirosMaisAtuaramClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(jogos) qtde from( ' +
    'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_titul e, ca_jogad j, ca_cidad c, ca_pais p ' +
    'where e.codjogador = j.codjogador ' + 'and j.codcidade = c.codcidade ' +
    'and c.codpais = p.codpais ' + 'and p.fifa not in (' +
          'select ca_pais.fifa  ' +
          'from ca_adver ' +
          'inner join ca_cidad on ca_cidad.codcidade = ca_adver.codcidade ' +
          'inner join ca_pais on ca_pais.codpais = ca_cidad.codpais ' +
          'where codadver = 0 ' +
    ') ' +
    'and j.codposicao not in (6) ' + 'group by e.codjogador, j.nome ' + 'union '
    + 'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_reser e, ca_jogad j, ca_cidad c, ca_pais p ' +
    'where e.codjogador = j.codjogador ' + 'and j.codcidade = c.codcidade ' +
    'and c.codpais = p.codpais ' + 'and p.fifa not in (' +
          'select ca_pais.fifa  ' +
          'from ca_adver ' +
          'inner join ca_cidad on ca_cidad.codcidade = ca_adver.codcidade ' +
          'inner join ca_pais on ca_pais.codpais = ca_cidad.codpais ' +
          'where codadver = 0 ' +
    ') ' +
    'and j.codposicao not in (6) ' + 'group by e.codjogador, j.nome ' +
    ') as a ' + 'group by codjogador, nome ' + 'order by 3 desc ' +
    'limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 6);
end;

procedure TFrmPrincipal.mitEstrangeirosMaisMarcaramClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(gols) gols' +
    ' from( select e.codjogador, j.nome, sum(e.gols) gols' +
    ' from es_titul e, ca_jogad j, ca_cidad c, ca_pais p' +
    ' where e.codjogador = j.codjogador' + ' and j.codcidade = c.codcidade' +
    ' and c.codpais = p.codpais' + ' and p.fifa not in (' +
          'select ca_pais.fifa  ' +
          'from ca_adver ' +
          'inner join ca_cidad on ca_cidad.codcidade = ca_adver.codcidade ' +
          'inner join ca_pais on ca_pais.codpais = ca_cidad.codpais ' +
          'where codadver = 0 ' +
    ') ' +
    ' and j.codposicao not in (6)' + ' group by e.codjogador, j.nome' + ' union'
    + ' select e.codjogador, j.nome, sum(e.gols) gols' +
    ' from es_reser e, ca_jogad j, ca_cidad c, ca_pais p' +
    ' where e.codjogador = j.codjogador' + ' and j.codcidade = c.codcidade' +
    ' and c.codpais = p.codpais' + ' and p.fifa not in (' +
          'select ca_pais.fifa  ' +
          'from ca_adver ' +
          'inner join ca_cidad on ca_cidad.codcidade = ca_adver.codcidade ' +
          'inner join ca_pais on ca_pais.codpais = ca_cidad.codpais ' +
          'where codadver = 0 ' +
    ') ' +
    ' and j.codposicao not in (6)' + ' group by e.codjogador, j.nome ) as a' +
    ' group by codjogador, nome having sum(gols) > 0' + ' order by 3 desc limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 7);
end;

procedure TFrmPrincipal.Gerenciadordejogos1Click(Sender: TObject);
begin
  frmGerenciadorJogos.SelecionarJogos;
  frmGerenciadorJogos.ShowModal;
end;

procedure TFrmPrincipal.mitGoleirosquemaisatuaramClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(jogos) qtde from( ' +
    'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_titul e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao = 2 ' + 'group by e.codjogador, j.nome ' + 'union ' +
    'select e.codjogador, j.nome, count(*) jogos ' +
    'from es_reser e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao = 2 ' + 'group by e.codjogador, j.nome ' + ') as a ' +
    'group by codjogador, nome having sum(jogos) > 0 ' + 'order by 3 desc ' + 'limit 15 offset 0 ';

  f_gerais.preencherOsDezMais(sql, 8);
end;

procedure TFrmPrincipal.mitMaioresartilheiroscontrarivaisClick(Sender: TObject);
begin
  if f_gerais.contadorRegistros('ca_rival') > 0 then
  begin

    sql := 'select codjogador, nome, sum(gols) gols ' +
      'from( select e.codjogador, j.nome, sum(e.gols) gols ' +
      'from es_titul e, ca_jogad j, ca_cidad c, ca_pais p, es_resum r, ca_rival ri '
      + 'where e.codjogador = j.codjogador ' + 'and j.codcidade = c.codcidade '
      + 'and c.codpais = p.codpais ' + 'and e.codjogo = r.codjogo ' +
      'and r.codadver = ri.codadver ' + 'and j.codposicao not in (6) ' +
      'group by e.codjogador, j.nome ' + 'union ' +
      'select e.codjogador, j.nome, sum(e.gols) gols ' +
      'from es_reser e, ca_jogad j, ca_cidad c, ca_pais p, es_resum r, ca_rival ri '
      + 'where e.codjogador = j.codjogador ' + 'and j.codcidade = c.codcidade '
      + 'and c.codpais = p.codpais ' + 'and e.codjogo = r.codjogo ' +
      'and r.codadver = ri.codadver ' + 'and j.codposicao not in (6) ' +
      'group by e.codjogador, j.nome ' + ') as a ' +
      'group by codjogador, nome having sum(gols) > 0 ' + 'order by 3 desc limit 15 offset 0 ';

    f_gerais.preencherOsDezMais(sql, 9);
  end
  else
    Application.MessageBox(PChar('N�o h� nenhum clube cadastrado como rival!'),
      'ATEN��O', MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.mitMaioresartilheirosdefaltasClick(Sender: TObject);
begin
  sql := ' SELECT g.codjogador, j.nome, COUNT(g.tempo) gols ' +
         ' FROM es_gols g ' +
         ' INNER JOIN es_tipogol t ON g.codtipogol = t.codtipo ' +
         ' INNER JOIN ca_jogad j ON g.codjogador = j.codjogador ' +
         ' WHERE g.codtipogol = 10 ' +
         ' GROUP BY g.codjogador, j.nome ' +
         ' ORDER BY COUNT(g.tempo) DESC ' +
         ' LIMIT 15 OFFSET 0';

  f_gerais.preencherOsDezMais(sql, 15);
end;

procedure TFrmPrincipal.mitMaioresartilheirosdepnaltisClick(Sender: TObject);
begin
  sql := ' SELECT g.codjogador, j.nome, COUNT(g.tempo) gols ' +
         ' FROM es_gols g ' +
         ' INNER JOIN es_tipogol t ON g.codtipogol = t.codtipo ' +
         ' INNER JOIN ca_jogad j ON g.codjogador = j.codjogador ' +
         ' WHERE g.codtipogol = 8 ' +
         ' GROUP BY g.codjogador, j.nome ' +
         ' ORDER BY COUNT(g.tempo) DESC ' +
         ' LIMIT 15 OFFSET 0';

  f_gerais.preencherOsDezMais(sql, 14);
end;

procedure TFrmPrincipal.mitJogadoresMaisHattricksClick(Sender: TObject);
begin
  sql := 'select c, j, qtde from( ' +
    'select e.codjogador c, jg.nome j, count(r.j) qtde ' +
    'from es_titul e, ca_jogos j, es_resum r, ca_adver am, ca_adver av, ca_estad es, ca_compe c, ca_jogad jg '
    + 'where e.codjogo = j.codjogo ' + 'and j.codjogo = r.codjogo ' +
    'and j.codadvermand = am.codadver ' + 'and j.codadvervisit = av.codadver ' +
    'and j.codestadio = es.codestadio ' +
    'and j.codcompeticao = c.codcompeticao ' +
    'and e.codjogador = jg.codjogador ' + 'and e.gols > 2 ' +
    'group by e.codjogador, jg.nome ' + 'union ' +
    'select e.codjogador c, jg.nome j, count(r.j) qtde ' +
    'from es_reser e, ca_jogos j, es_resum r, ca_adver am, ca_adver av, ca_estad es, ca_compe c,  ca_jogad jg '
    + 'where e.codjogo = j.codjogo ' + 'and j.codjogo = r.codjogo ' +
    'and j.codadvermand = am.codadver ' + 'and j.codadvervisit = av.codadver ' +
    'and j.codestadio = es.codestadio ' +
    'and j.codcompeticao = c.codcompeticao ' +
    'and e.codjogador = jg.codjogador ' + 'and e.gols > 2 ' +
    'group by e.codjogador, j.codjogo ) as a ' + 'order by qtde desc, j ' +
    'limit 15 offset 0 ';

  f_gerais.preencherOsDezMais(sql, 10);
end;

procedure TFrmPrincipal.mitJogosComTecnicoClick(Sender: TObject);
begin
  // preencher grid da pesquisa de Jogadores
  f_gerais.pesquisajogadores(h_jogadores.DbGridJogadores, 'TODOS', 0);
  h_jogadores.identificacao := 'MnTecnicos';
  h_jogadores.ShowModal;
end;

procedure TFrmPrincipal.mitMaioreszagueirosartilheirosClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(gols) gols from( ' +
    'select e.codjogador, j.nome, sum(e.gols) gols ' +
    'from es_titul e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao = 8 ' + 'group by e.codjogador, j.nome ' + 'union ' +
    'select e.codjogador, j.nome, sum(e.gols) gols ' +
    'from es_reser e, ca_jogad j ' + 'where e.codjogador = j.codjogador ' +
    'and j.codposicao = 8 ' + 'group by e.codjogador, j.nome ' + ') as a ' +
    'group by codjogador, nome having sum(gols) > 0 ' + 'order by 3 desc ' + 'limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 12);
end;

procedure TFrmPrincipal.mitMaioresartilheirosemfinaisClick(Sender: TObject);
begin
  sql := 'select codjogador, nome, sum(gols) gols from( ' +
    'select e.codjogador, j.nome, sum(e.gols) gols ' +
    'from es_titul e ' +
    'inner join ca_jogad j on j.codjogador = e.codjogador ' +
    'inner join ca_jogos g on g.codjogo = e.codjogo ' +
    'where g.codfase = 15 ' +
    'group by e.codjogador, j.nome ' +
    'union ' +
    'select e.codjogador, j.nome, sum(e.gols) gols ' +
    'from es_reser e ' +
    'inner join ca_jogad j on j.codjogador = e.codjogador ' +
    'inner join ca_jogos g on g.codjogo = e.codjogo ' +
    'where g.codfase = 15 ' +
    'group by e.codjogador, j.nome) as a ' +
    'group by codjogador, nome having sum(gols) > 0 ' +
    'order by 3 desc ' +
    'limit 15 offset 0';

  f_gerais.preencherOsDezMais(sql, 13);
end;

procedure TFrmPrincipal.Maioresgoleadasaplicadasemrivais1Click(Sender: TObject);
begin
  if f_gerais.contadorRegistros('ca_rival') > 0 then
  begin
    // guardar o n�mero do foruml�rio na label
    r_jogospadrao.numerorelatorio := '32';

    // contar a quantidade de registros retornados na pesquisa
    sql := 'select sum(r.j), sum(r.v), sum(r.e), sum(r.d), sum(r.gp), sum(r.gc), sum(r.sg) '
      + 'from es_resum r ' + 'where sg >= 3 ' +
      'and codadver in (select codadver from ca_rival) ';

    FrmDm.QrContador.Close;
    FrmDm.QrContador.sql.Clear;
    FrmDm.QrContador.sql.Add(sql);
    FrmDm.QrContador.Open;
    FrmDm.QrContador.First;

    if FrmDm.QrContador.Fields[0].AsInteger = 0 then
    begin
      msg := 'Seu time ainda n�o aplicou nenhuma goleada ' + #13 +
        'em seus rivais!';
      Application.MessageBox(PChar(msg), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin

      // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
      // e dividir por 10 truncando o resultado, assim teremos a quantidade de
      // p�ginas a ser exibida.
      if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
        cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
      else
        cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

      r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
      f_gerais.determinaVEDRelatorios(FrmDm.QrContador);

      // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
      r_jogospadrao.CbxPagina.Clear;
      for i := 1 to cont do
      begin
        r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
      end;
      r_jogospadrao.CbxPagina.ItemIndex := 0;

      // agora faremos a pesquisa com retorno dos resultados para serem
      // arpesentados na tela padr�o
      sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar1-placar2 saldo, placar1 golspro '
        + 'from ca_jogos ' + 'where codadvermand = 0 ' +
        'and placar1-placar2 >= 3 ' +
        'and codadvervisit in (select codadver from ca_rival) ' + 'union ' +
        'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar2-placar1 saldo, placar2 golspro '
        + 'from ca_jogos ' + 'where codadvervisit = 0 ' +
        'and placar2-placar1 >= 3 ' +
        'and codadvermand in (select codadver from ca_rival) ' +
        'order by saldo desc, golspro desc, data desc ' +
        'limit :LIMITE offset :CORTE';

      // fun��o para preencher a tela padr�o com os resultados da sql acima
      f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

      // t�tulos e descri��o do relat�rio
      r_jogospadrao.LblDescricao1.Caption :=
        'MAIORES GOLEADAS APLICADAS EM RIVAIS:';
      r_jogospadrao.LblDescricao2.Caption :=
        AnsiUpperCase(f_gerais.retornaNomesRivais()) +
        ' - POR 3 GOLS OU MAIS DE DIFEREN�A';
      // buscar escudo do seu time
      f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
      // definir t�tulo do formul�rio
      r_jogospadrao.Caption := 'Maiores Goleadas Aplicadas: ' +
        f_gerais.buscarNome('nome', 'ca_adver', 'codadver', '0');
      // mostara a consulta finalizada
      r_jogospadrao.ShowModal;
    end;
  end
  else
    Application.MessageBox(PChar('N�o h� nenhum clube cadastrado como rival!'),
      'ATEN��O', MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.Maioresgoleadassofridasporrivais1Click(Sender: TObject);
begin
  if f_gerais.contadorRegistros('ca_rival') > 0 then
  begin
    // guardar o n�mero do foruml�rio na label
    r_jogospadrao.numerorelatorio := '33';

    // contar a quantidade de registros retornados na pesquisa
    sql := 'select sum(r.j), sum(r.v), sum(r.e), sum(r.d), sum(r.gp), sum(r.gc), sum(r.sg) '
      + 'from es_resum r ' + 'where sg <= -3 ' +
      'and codadver in (select codadver from ca_rival) ';

    FrmDm.QrContador.Close;
    FrmDm.QrContador.sql.Clear;
    FrmDm.QrContador.sql.Add(sql);
    FrmDm.QrContador.Open;
    FrmDm.QrContador.First;

    if FrmDm.QrContador.Fields[0].AsInteger = 0 then
    begin
      msg := 'Seu time ainda n�o sofreu nenhuma goleada ' + #13 +
        'de seus rivais!';
      Application.MessageBox(PChar(msg), 'ATEN��O', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin

      // as p�ginas s�o mostradas de 10 em 10, por isso pegar o total de registros
      // e dividir por 10 truncando o resultado, assim teremos a quantidade de
      // p�ginas a ser exibida.
      if (FrmDm.QrContador.Fields[0].AsInteger mod 10) = 0 then
        cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10)
      else
        cont := Trunc(FrmDm.QrContador.Fields[0].AsInteger / 10) + 1;

      r_jogospadrao.LblTotalReg.Caption := IntToStr(cont);
      f_gerais.determinaVEDRelatorios(FrmDm.QrContador);

      // limpar o combobox das p�ginas e acrescentar os n�meros de p�ginas atuais
      r_jogospadrao.CbxPagina.Clear;
      for i := 1 to cont do
      begin
        r_jogospadrao.CbxPagina.Items.Add(IntToStr(i));
      end;
      r_jogospadrao.CbxPagina.ItemIndex := 0;

      // agora faremos a pesquisa com retorno dos resultados para serem
      // arpesentados na tela padr�o
      sql := 'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar1-placar2 as SALDO, placar2 as ADVER '
        + 'from ca_jogos ' + 'where codadvermand = 0 ' +
        'and placar2-placar1 >= 3 ' +
        'and codadvervisit in (select codadver from ca_rival) ' + 'union ' +
        'select codjogo, data, codadvermand, placar1, placar2, codadvervisit, codestadio, codcompeticao, placar2-placar1 as SALDO, placar1 as ADVER '
        + 'from ca_jogos ' + 'where codadvervisit = 0 ' +
        'and placar1-placar2 >= 3 ' +
        'and codadvermand in (select codadver from ca_rival) ' +
        'order by saldo, adver desc, data desc ' +
        'limit :LIMITE offset :CORTE';

      // fun��o para preencher a tela padr�o com os resultados da sql acima
      f_gerais.preenchimentoTelaPadraoJogos(sql, 0, 10);

      // t�tulos e descri��o do relat�rio
      r_jogospadrao.LblDescricao1.Caption :=
        'MAIORES GOLEADAS SOFRIDAS POR RIVAIS:';
      r_jogospadrao.LblDescricao2.Caption :=
        AnsiUpperCase(f_gerais.retornaNomesRivais()) +
        ' - POR 3 GOLS OU MAIS DE DIFEREN�A';
      // buscar escudo do seu time
      f_gerais.buscaImagemPorCodigo(r_jogospadrao.ImgEscudoSeutime, '0', '0');
      // definir t�tulo do formul�rio
      r_jogospadrao.Caption := 'Maiores Goleadas Sofridas por rivais: ' +
        f_gerais.buscarNome('nome', 'ca_adver', 'codadver', '0');
      // mostara a consulta finalizada
      r_jogospadrao.ShowModal;
    end;
  end
  else
    Application.MessageBox(PChar('N�o h� nenhum clube cadastrado como rival!'),
      'ATEN��O', MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StbSistema.Panels[0].Text :=
    FormatDateTime('dddd", "dd" de "mmmm" de "yyyy', date);
  Timer1.Interval := 1000;
end;

procedure TFrmPrincipal.MnJogosCampeonato1Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisacompeticao(h_competicao.DbGridCompeticao, 'TODOS');
  h_competicao.identificacao := 'MnJogosCampeonato1';
  h_competicao.ShowModal;
end;

procedure TFrmPrincipal.MnJogosCampeonato2Click(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisacompeticao(h_competicao.DbGridCompeticao, 'TODOS');
  h_competicao.identificacao := 'MnJogosCampeonato2';
  h_competicao.ShowModal;
end;

procedure TFrmPrincipal.habilitarCadastroJogos;
var
  msg: String;
begin
    msg := habilitarBotaoJogos;

    if not (msg = EmptyStr) then
    begin
      MnJogos.Enabled := false;
      MnBackup.Enabled := false;
      BtnCadJogos.Enabled := false;
      BtnBackup.Enabled := false;
    end
    else
    begin
      MnJogos.Enabled := True;
      MnBackup.Enabled := True;
      BtnCadJogos.Enabled := True;
      BtnBackup.Enabled := True;
    end;
end;

function TFrmPrincipal.habilitarBotaoJogos: String;
var
  msg: String;
begin
    msg := EmptyStr;
    if f_gerais.ResultadoSQL('SELECT COUNT(*) FROM ca_jogad') = 0 then
       msg := '� necess�rio haver no m�nimo 11 jogadores e 1 t�cnico cadastrados!';

    if f_gerais.ResultadoSQL('SELECT COUNT(*) FROM ca_adver') = 0 then
       msg := '� necess�rio haver no m�nimo 1 advers�rio cadastrado!';

    if f_gerais.ResultadoSQL('SELECT COUNT(*) FROM ca_compe') = 0 then
       msg := '� necess�rio haver no m�nimo 1 competi��o cadastrada!';

    if f_gerais.ResultadoSQL('SELECT COUNT(*) FROM ca_estad') = 0 then
       msg := '� necess�rio haver no m�nimo 1 est�dio cadastrado!';

    if f_gerais.ResultadoSQL('SELECT COUNT(*) FROM ca_arbit') = 0 then
       msg := '� necess�rio haver no m�nimo 1 �rbitro cadastrado!';

    if f_gerais.ResultadoSQL('SELECT COUNT(*) FROM ca_tatic') = 0 then
       msg := '� necess�rio haver no m�nimo 1 t�tica cadastrada!';

    Result := msg;
end;

end.
