unit parametros;

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
  FireDAC.Comp.UI, jpeg, Vcl.Buttons, Vcl.ExtDlgs, Vcl.Menus,
  frameBotoesMenuPadrao;

type
  TfrmParametros = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtCodigo: TDBEdit;
    EdtDescricao: TDBEdit;
    MainMenu: TMainMenu;
    MnArquivo: TMenuItem;
    MnCadastrar: TMenuItem;
    MnEditar: TMenuItem;
    MnExcluir: TMenuItem;
    MnSair: TMenuItem;
    fraBotoes: TfraBotoes;
    Label3: TLabel;
    EdtValor: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MnCadastrarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
    procedure MnExcluirClick(Sender: TObject);
    procedure MnSairClick(Sender: TObject);
    procedure EdtDescricaoEnter(Sender: TObject);
    procedure EdtDescricaoExit(Sender: TObject);
    procedure fraBotoesBtnPrimeiroClick(Sender: TObject);
    procedure fraBotoesBtnAnteriorClick(Sender: TObject);
    procedure fraBotoesBtnProximoClick(Sender: TObject);
    procedure fraBotoesBtnUltimoClick(Sender: TObject);
    procedure fraBotoesBtnIncluirClick(Sender: TObject);
    procedure fraBotoesBtnEditarClick(Sender: TObject);
    procedure fraBotoesBtnExcluirClick(Sender: TObject);
    procedure fraBotoesBtnGravarClick(Sender: TObject);
    procedure fraBotoesBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure estadoDosBotoesdeCadastro();
  end;

var
  frmParametros: TfrmParametros;
  sql: String;

implementation

{$R *.dfm}

uses module, funcoes, home;

{
  =======================================================
  Ativar ou desativar botões de Cadastro
  =======================================================
}
procedure TfrmParametros.estadoDosBotoesdeCadastro();
begin
  fraBotoes.estadoDosBotoesdeCadastro(FrmDm.dtsParametros.DataSet.State);
  { O Dataset está aberto. Seus dados podem ser visualizados, mas não podem ser alterados. }
  if FrmDm.dtsParametros.DataSet.State in [dsBrowse] then
  begin
    // botões
    MnCadastrar.Enabled := true;
    MnExcluir.Enabled := true;
    // demais componentes
    EdtDescricao.Enabled := false;
    EdtValor.Enabled := false;
  end;

  if FrmDm.dtsParametros.DataSet.State in [dsInsert, dsEdit] then
  begin
    // botões
    MnCadastrar.Enabled := false;
    MnEditar.Enabled := false;
    MnExcluir.Enabled := false;
    // demais componentes
    EdtDescricao.Enabled := True;
    EdtValor.Enabled := True;
    EdtDescricao.SetFocus;
  end;
end;

procedure TfrmParametros.FormActivate(Sender: TObject);
begin
  fraBotoes.estadoDosBotoesdeCadastro(FrmDm.dtsParametros.DataSet.State);
end;

procedure TfrmParametros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MnSairClick(Self);
end;

procedure TfrmParametros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F5:
      begin
        fraBotoesBtnIncluirClick(Self);
      end;
    VK_ESCAPE:
      begin
        if FrmDm.dtsParametros.DataSet.State in [dsInsert, dsEdit] then
          fraBotoesBtnCancelarClick(Self)
        else
          MnSairClick(Self);
      end;
    VK_RETURN:
      begin
        fraBotoesBtnGravarClick(Self);
      end;
  end;
end;

procedure TfrmParametros.fraBotoesBtnAnteriorClick(Sender: TObject);
begin
  FrmDm.dtsParametros.DataSet.Prior;
  estadoDosBotoesdeCadastro();
end;

procedure TfrmParametros.fraBotoesBtnCancelarClick(Sender: TObject);
begin
  FrmDm.dtsParametros.DataSet.Cancel;
  EdtCodigo.Font.Color := clWindowText;
  estadoDosBotoesdeCadastro();
end;

procedure TfrmParametros.fraBotoesBtnEditarClick(Sender: TObject);
begin
  if f_gerais.contadorRegistros('parametros') > 0 then
  begin
    FrmDm.dtsParametros.DataSet.Edit;
    estadoDosBotoesdeCadastro();
  end
  else
    Application.MessageBox('A tabela está vazia!', 'ATENÇÃO',
      MB_OK + MB_ICONWARNING);
end;

procedure TfrmParametros.fraBotoesBtnExcluirClick(Sender: TObject);
begin
  if f_gerais.desejaRealizarAcao('excluir o registro?') then
  begin
    // deletar o registro
    FrmDm.dtsParametros.DataSet.Delete;
    estadoDosBotoesdeCadastro();
  end;
end;

procedure TfrmParametros.fraBotoesBtnGravarClick(Sender: TObject);
begin
  if f_gerais.verificarStringEmBranco(EdtDescricao.Text, 'descrição do parâmetro') then
  begin
    EdtDescricao.SetFocus;
    Abort;
  end;

  if f_gerais.verificarStringEmBranco(EdtValor.Text, 'valor do parâmetro') then
  begin
    EdtDescricao.SetFocus;
    Abort;
  end;

  FrmDm.dtsParametros.DataSet.Post;
  EdtCodigo.Font.Color := clWindowText;
  estadoDosBotoesdeCadastro();
  FrmDm.dtsParametros.DataSet.Refresh;
end;

procedure TfrmParametros.fraBotoesBtnIncluirClick(Sender: TObject);
begin
  FrmDm.dtsParametros.DataSet.Append;
  EdtCodigo.Font.Color := clWhite;
  estadoDosBotoesdeCadastro();
end;

procedure TfrmParametros.fraBotoesBtnPrimeiroClick(Sender: TObject);
begin
  FrmDm.dtsParametros.DataSet.First;
  estadoDosBotoesdeCadastro();
end;

procedure TfrmParametros.fraBotoesBtnProximoClick(Sender: TObject);
begin
  FrmDm.dtsParametros.DataSet.Next;
  estadoDosBotoesdeCadastro();
end;

procedure TfrmParametros.fraBotoesBtnUltimoClick(Sender: TObject);
begin
  FrmDm.dtsParametros.DataSet.Last;
  estadoDosBotoesdeCadastro();
end;

procedure TfrmParametros.MnCadastrarClick(Sender: TObject);
begin
  fraBotoesBtnIncluirClick(Self);
end;

procedure TfrmParametros.MnEditarClick(Sender: TObject);
begin
  fraBotoesBtnEditarClick(Self);
end;

procedure TfrmParametros.MnExcluirClick(Sender: TObject);
begin
  fraBotoesBtnExcluirClick(Self);
end;

procedure TfrmParametros.MnSairClick(Sender: TObject);
begin
  if FrmDm.dtsParametros.DataSet.State in [dsInsert, dsEdit] then
    fraBotoesBtnCancelarClick(Self)
  else
    frmParametros.Close;
end;

procedure TfrmParametros.EdtDescricaoEnter(Sender: TObject);
begin
  f_gerais.MudaCor('Entra', Sender);
end;

procedure TfrmParametros.EdtDescricaoExit(Sender: TObject);
begin
  f_gerais.MudaCor('Sai', Sender);
end;

end.
