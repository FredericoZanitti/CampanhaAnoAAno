unit federacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, jpeg, Vcl.Buttons, Vcl.ExtDlgs, Vcl.Menus, Vcl.ComCtrls,
  frameBotoesMenuPadrao;

type
  TCA_FEDERACAO = class(TForm)
    EdtFotoFederacao: TDBEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ImgFederacao: TImage;
    EdtCodigo: TDBEdit;
    EdtDescricao: TDBEdit;
    BtnEscolherFoto: TBitBtn;
    OpenLogo: TOpenPictureDialog;
    MainMenu: TMainMenu;
    MnArquivo: TMenuItem;
    MnCadastrar: TMenuItem;
    MnEditar: TMenuItem;
    MnExcluir: TMenuItem;
    MnSair: TMenuItem;
    fraBotoes: TfraBotoes;
    procedure BtnEscolherFotoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MnCadastrarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
    procedure MnExcluirClick(Sender: TObject);
    procedure fraBotoesBtnPrimeiroClick(Sender: TObject);
    procedure fraBotoesBtnAnteriorClick(Sender: TObject);
    procedure fraBotoesBtnProximoClick(Sender: TObject);
    procedure fraBotoesBtnUltimoClick(Sender: TObject);
    procedure fraBotoesBtnIncluirClick(Sender: TObject);
    procedure fraBotoesBtnEditarClick(Sender: TObject);
    procedure fraBotoesBtnExcluirClick(Sender: TObject);
    procedure fraBotoesBtnGravarClick(Sender: TObject);
    procedure fraBotoesBtnCancelarClick(Sender: TObject);
    procedure fraBotoesBtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure estadoDosBotoesdeCadastro();
  end;

var
  CA_FEDERACAO: TCA_FEDERACAO;
  NomeArquivo, NomeArquivoAnterior: String;
  caminho: String;

implementation

{$R *.dfm}

uses module, funcoes, pesquisaFederacao;

{
  =======================================================
  Ativar ou desativar botões de Cadastro
  =======================================================
}
procedure TCA_FEDERACAO.estadoDosBotoesdeCadastro();
begin
  fraBotoes.estadoDosBotoesdeCadastro(FrmDm.DtsFederacao.DataSet.State);
  { O Dataset está aberto. Seus dados podem ser visualizados, mas não podem ser alterados. }
  if FrmDm.DtsFederacao.DataSet.State in [dsBrowse] then
  begin
    // botões
    MnCadastrar.Enabled := True;
    MnEditar.Enabled := True;
    MnExcluir.Enabled := True;
    BtnEscolherFoto.Enabled := false;
    // demais componentes
    EdtDescricao.Enabled := false;
  end;

  if FrmDm.DtsFederacao.DataSet.State in [dsInsert, dsEdit] then
  begin
    // botões
    MnCadastrar.Enabled := false;
    MnEditar.Enabled := false;
    MnExcluir.Enabled := false;
    BtnEscolherFoto.Enabled := True;
    // demais componentes
    EdtDescricao.Enabled := True;
    EdtDescricao.SetFocus;

  end;

  // buscar Federacao
  f_gerais.buscaImagem(ImgFederacao, EdtFotoFederacao.Text);

  // inibir pesquisa se o cadastro de jogos estiver ativo
  if FrmDm.DtsJogos.DataSet.State in [dsInsert, dsEdit] then
    fraBotoes.BtnPesquisar.Enabled := false;

end;

procedure TCA_FEDERACAO.FormActivate(Sender: TObject);
begin
  estadoDosBotoesdeCadastro();
  caminho :=
    'C:\Arquivos de programas\Campanha Ano a Ano\Seu Time\DBAcompanhamento\Escudos\FED_';
  fraBotoesBtnUltimoClick(Self);
end;

procedure TCA_FEDERACAO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FrmDm.DtsFederacao.DataSet.State in [dsInsert, dsEdit] then
    fraBotoesBtnCancelarClick(Self);
end;

procedure TCA_FEDERACAO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F5:
      begin
        fraBotoesBtnIncluirClick(Self);
      end;
    VK_ESCAPE:
      begin
        if FrmDm.DtsFederacao.DataSet.State in [dsInsert, dsEdit] then
          fraBotoesBtnCancelarClick(Self)
        else
          CA_FEDERACAO.Close;
      end;
    VK_RETURN:
      begin
        fraBotoesBtnGravarClick(Self);
      end;
    VK_LEFT:
      begin
        if not(FrmDm.DtsFederacao.DataSet.State in [dsInsert, dsEdit]) then
          fraBotoesBtnAnteriorClick(Self);
      end;
    VK_RIGHT:
      begin
        if not(FrmDm.DtsFederacao.DataSet.State in [dsInsert, dsEdit]) then
          fraBotoesBtnProximoClick(Self);
      end;
    VK_HOME:
      begin
        if not(FrmDm.DtsFederacao.DataSet.State in [dsInsert, dsEdit]) then
          fraBotoesBtnPrimeiroClick(Self);
      end;
    VK_END:
      begin
        if not(FrmDm.DtsFederacao.DataSet.State in [dsInsert, dsEdit]) then
          fraBotoesBtnUltimoClick(Self);
      end;
    VK_F10:
      fraBotoesBtnPesquisarClick(Self);
  end;
end;

procedure TCA_FEDERACAO.fraBotoesBtnAnteriorClick(Sender: TObject);
begin
  FrmDm.DtsFederacao.DataSet.Prior;
  estadoDosBotoesdeCadastro();
end;

procedure TCA_FEDERACAO.fraBotoesBtnCancelarClick(Sender: TObject);
begin
  EdtCodigo.Clear;
  FrmDm.DtsFederacao.DataSet.Cancel;
  estadoDosBotoesdeCadastro();
end;

procedure TCA_FEDERACAO.fraBotoesBtnEditarClick(Sender: TObject);
begin
  if f_gerais.contadorRegistros('CA_FEDERACAO') > 0 then
  begin
    FrmDm.DtsFederacao.DataSet.Edit;
    estadoDosBotoesdeCadastro();
  end
  else
    Application.MessageBox('A tabela está vazia!', 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
end;

procedure TCA_FEDERACAO.fraBotoesBtnExcluirClick(Sender: TObject);
begin
  if f_gerais.contRegComUmParametro('ca_jogos', 'codFederacao', EdtCodigo.Text) > 0
  then
  begin
    Application.MessageBox
      ('Impossível excluir, pois existem jogos em que este Federacao está associada.',
      'ATENÇÃO', MB_OK + MB_ICONERROR);
  end
  else
  begin
    if f_gerais.desejaRealizarAcao('excluir o registro?') then
    begin
      // deletar o escudo do patrocinador
      f_gerais.deletarImagens(EdtFotoFederacao.Text);
      // deletar o registro do patrocinador
      FrmDm.DtsFederacao.DataSet.Delete;
      // restaurar bandeiras e estado dos botões
      estadoDosBotoesdeCadastro();
    end;
  end;
end;

procedure TCA_FEDERACAO.fraBotoesBtnGravarClick(Sender: TObject);
begin
  if f_gerais.verificarStringEmBranco(EdtDescricao.Text, 'DESCRIÇÃO FEDERAÇÃO')
  then
    EdtDescricao.SetFocus
  else
  begin
    if f_gerais.verificarStringEmBranco(EdtFotoFederacao.Text, 'Federacao') then
      BtnEscolherFotoClick(Self)
    else
    begin
      CopyFile(PChar(NomeArquivo), PChar(caminho + FormatFloat('00000',
        StrToFloat(EdtCodigo.Text)) + ExtractFileExt(OpenLogo.FileName)
        ), false);
      FrmDm.DtsFederacao.DataSet.Post;

      if NomeArquivoAnterior <> EdtFotoFederacao.Text then
        f_gerais.deletarImagens(NomeArquivoAnterior);

      estadoDosBotoesdeCadastro();
      FrmDm.DtsFederacao.DataSet.Refresh;
    end;
  end;
end;

procedure TCA_FEDERACAO.fraBotoesBtnIncluirClick(Sender: TObject);
begin
  FrmDm.DtsFederacao.DataSet.Append;
  EdtCodigo.Text := IntToStr(f_gerais.novoCodigo('CA_FEDERACAO',
    'codFederacao'));
  estadoDosBotoesdeCadastro();
end;

procedure TCA_FEDERACAO.fraBotoesBtnPesquisarClick(Sender: TObject);
begin
  // preencher grid da pesquisa de clubes
  f_gerais.pesquisaFederacao(h_Federacao.DbGridFederacao, 'TODOS');
  h_Federacao.identificacao := 'CA_FEDERACAO';
  h_Federacao.ShowModal;
end;

procedure TCA_FEDERACAO.fraBotoesBtnPrimeiroClick(Sender: TObject);
begin
  FrmDm.DtsFederacao.DataSet.First;
  estadoDosBotoesdeCadastro();
end;

procedure TCA_FEDERACAO.fraBotoesBtnProximoClick(Sender: TObject);
begin
  FrmDm.DtsFederacao.DataSet.Next;
  estadoDosBotoesdeCadastro();
end;

procedure TCA_FEDERACAO.fraBotoesBtnUltimoClick(Sender: TObject);
begin
  FrmDm.DtsFederacao.DataSet.Last;
  estadoDosBotoesdeCadastro();
end;

procedure TCA_FEDERACAO.BtnEscolherFotoClick(Sender: TObject);
begin
  NomeArquivoAnterior := EdtFotoFederacao.Text;
  if OpenLogo.Execute then
  begin
    NomeArquivo := OpenLogo.FileName;
    f_gerais.buscaImagem(ImgFederacao, NomeArquivo);
    EdtFotoFederacao.Text :=
      PChar(caminho + FormatFloat('00000', StrToFloat(EdtCodigo.Text)) +
      ExtractFileExt(OpenLogo.FileName));
  end;
end;

procedure TCA_FEDERACAO.MnCadastrarClick(Sender: TObject);
begin
  fraBotoesBtnIncluirClick(Self);
end;

procedure TCA_FEDERACAO.MnEditarClick(Sender: TObject);
begin
  fraBotoesBtnEditarClick(Self);
end;

procedure TCA_FEDERACAO.MnExcluirClick(Sender: TObject);
begin
  fraBotoesBtnExcluirClick(Self);
end;

end.
