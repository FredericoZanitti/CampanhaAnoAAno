unit pesquisacidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Data.DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons;

type
  Th_cidades = class(TForm)
    EdtPesquisa: TEdit;
    Label1: TLabel;
    DbGridCidades: TDBGrid;
    BtnSelecionar: TBitBtn;
    BtnIncluir: TBitBtn;
    procedure EdtPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DbGridCidadesDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure DbGridCidadesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  var
    identificacao: String;
  end;

var
  h_cidades: Th_cidades;

implementation

{$R *.dfm}

uses funcoes, adversarios, jogadores, estadios, cidades, module, patrocinadores,
  fornecedor;

procedure Th_cidades.BtnIncluirClick(Sender: TObject);
begin
  FrmDm.DtsCidade.DataSet.Append;
  if not(EdtPesquisa.Text = EmptyStr) then
    CA_CIDAD.EdtNomeCidade.Text := EdtPesquisa.Text;

  CA_CIDAD.EdtCodCidade.Text :=
    IntToStr(f_gerais.novoCodigo('ca_cidad', 'codcidade'));
  CA_CIDAD.ShowModal;
end;

procedure Th_cidades.BtnSelecionarClick(Sender: TObject);
begin
  DbGridCidadesDblClick(Self);
end;

procedure Th_cidades.DbGridCidadesDblClick(Sender: TObject);
var
  CodigoFederacao: integer;
begin
  // SE PESQUISA PARTIR DO CADASTRO DE CLUBES
  if identificacao = 'CA_ADVER' then
  begin
    CA_ADVER.EdtCidade.Text := DbGridCidades.Columns[0].Field.AsString;
    // buscar bandeiras do Pais e UF
    f_gerais.buscaBandeiras(CA_ADVER.fraCidades.ImgBandPaisAdver, CA_ADVER.fraCidades.ImgUfAdver,
      DbGridCidades.Columns[0].Field.AsString, CA_ADVER.fraCidades.LblCidade,
      CA_ADVER.fraCidades.LblPais, CA_ADVER.fraCidades.LblUf);
    //setar federação de acordo com o continente
    if FrmDm.DtsAdversarios.DataSet.State in [dsInsert] then
    begin
       CodigoFederacao := f_gerais.ResultadoSQL(Format(' SELECT CASE ' +
                                                       ' WHEN ca_pais.codcontinente = 1 THEN 3 ' +   //AFC
                                                       ' WHEN ca_pais.codcontinente = 2 THEN 4 ' +   //CAF
                                                       ' WHEN ca_pais.codcontinente = 3 THEN 2 ' +   //UEFA
                                                       ' WHEN ca_pais.codpais = 86 THEN 5 ' +        //CONCACAF
                                                       ' WHEN ca_pais.codpais = 213 THEN 5 ' +       //CONCACAF
                                                       ' WHEN ca_pais.codcontinente = 4 THEN 5 ' +   //CONCACAF
                                                       ' WHEN ca_pais.codcontinente = 5 THEN 5 ' +   //CONCACAF
                                                       ' WHEN ca_pais.codcontinente = 6 THEN 1 ' +   //CONMEBOL
                                                       ' WHEN ca_pais.codcontinente = 7 THEN 6 ' +   //OFC
                                                       ' END codfederacao ' +
                                                       ' FROM ca_cidad INNER JOIN ca_pais ON ca_pais.codpais = ca_cidad.codpais ' +
                                                       ' WHERE ca_cidad.codcidade = %s ',[CA_ADVER.EdtCidade.Text]));
       CA_ADVER.dblFederacao.KeyValue := CodigoFederacao;
       CA_ADVER.edtCodigoFederacao.Text := IntToStr(CodigoFederacao);
       f_gerais.buscaLogoFederacaoPorCodigo(CA_ADVER.ImgFederacao, CodigoFederacao);
    end;

    h_cidades.Close;
  end;

  // SE PESQUISA PARTIR DO CADASTRO DE PATROCINADORES
  if identificacao = 'CA_PATROC' then
  begin
    CA_PATROC.EdtCidade.Text := DbGridCidades.Columns[0].Field.AsString;
    // buscar bandeiras do Pais e UF
    f_gerais.buscaBandeiras(CA_PATROC.ImgBandPaisAdver, CA_PATROC.ImgUfAdver,
      DbGridCidades.Columns[0].Field.AsString, CA_PATROC.LblCidade,
      CA_PATROC.LblPais, CA_PATROC.LblUf);
    h_cidades.Close;
  end;

  // SE PESQUISA PARTIR DO CADASTRO DE FORNECEDORES
  if identificacao = 'CA_FORNEC' then
  begin
    CA_FORNEC.EdtCidade.Text := DbGridCidades.Columns[0].Field.AsString;
    // buscar bandeiras do Pais e UF
    f_gerais.buscaBandeiras(CA_FORNEC.ImgBandPaisAdver, CA_FORNEC.ImgUfAdver,
      DbGridCidades.Columns[0].Field.AsString, CA_FORNEC.LblCidade,
      CA_FORNEC.LblPais, CA_FORNEC.LblUf);
    h_cidades.Close;
  end;

  // SE PESQUISA PARTIR DO CADASTRO DE JOGADORES
  if identificacao = 'CA_JOGAD' then
  begin
    CA_JOGAD.EdtCidade.Text := DbGridCidades.Columns[0].Field.AsString;
    // buscar bandeiras do Pais e UF
    f_gerais.buscaBandeiras(CA_JOGAD.fraCidades.ImgBandPaisAdver, CA_JOGAD.fraCidades.ImgUfAdver,
      DbGridCidades.Columns[0].Field.AsString, CA_JOGAD.fraCidades.LblCidade,
      CA_JOGAD.fraCidades.LblPais, CA_JOGAD.fraCidades.LblUf);
    h_cidades.Close;
  end;

  // SE PESQUISA PARTIR DO CADASTRO ESTÁDIOS
  if identificacao = 'CA_ESTAD' then
  begin
    CA_ESTAD.EdtCidade.Text := DbGridCidades.Columns[0].Field.AsString;
    // buscar bandeiras do Pais e UF
    f_gerais.buscaBandeiras(CA_ESTAD.fraCidades.ImgBandPaisAdver, CA_ESTAD.fraCidades.ImgUfAdver,
      DbGridCidades.Columns[0].Field.AsString, CA_ESTAD.fraCidades.LblCidade,
      CA_ESTAD.fraCidades.LblPais, CA_ESTAD.fraCidades.LblUf);
    h_cidades.Close;
  end;

end;

procedure Th_cidades.DbGridCidadesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(TDBGrid(Sender).Handle, SB_HORZ, False);
  // Remove barra Horizontal
end;

procedure Th_cidades.EdtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // preencher grid da pesquisa de cidades
  f_gerais.pesquisaCidade(DbGridCidades, EdtPesquisa.Text);

end;

procedure Th_cidades.FormActivate(Sender: TObject);
begin
  EdtPesquisa.Clear;
  EdtPesquisa.SetFocus;
end;

procedure Th_cidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        h_cidades.Close;
      end;
    VK_RETURN:
      begin
        DbGridCidadesDblClick(Self);
      end;
  end;
end;

end.
