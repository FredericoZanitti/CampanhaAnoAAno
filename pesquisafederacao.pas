unit pesquisafederacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  Th_federacao = class(TForm)
    Label1: TLabel;
    EdtPesquisa: TEdit;
    DbGridfederacao: TDBGrid;
    BtnSelecionar: TBitBtn;
    Imgfederacao: TImage;
    procedure EdtPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DbGridfederacaoDblClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure DbGridfederacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbGridfederacaoCellClick(Column: TColumn);
    procedure DbGridfederacaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  var
    identificacao: String;
  end;

var
  h_federacao: Th_federacao;
  codfederacao: String;
  i, cont: integer;

implementation

{$R *.dfm}

uses funcoes, module, federacao, jogos, telapadraojogos;

procedure Th_federacao.BtnSelecionarClick(Sender: TObject);
begin
  DbGridfederacaoDblClick(Self);
end;

procedure Th_federacao.DbGridfederacaoCellClick(Column: TColumn);
begin
  f_gerais.buscaImagem(Imgfederacao, f_gerais.buscarNome('brasao',
    'CA_federacao', 'codfederacao', DbGridfederacao.Columns[0].Field.AsString));
end;

procedure Th_federacao.DbGridfederacaoDblClick(Sender: TObject);
begin
  codfederacao := DbGridfederacao.Columns[0].Field.AsString;

  // ==========================================================================
  // pesquisa quando acionado pelo cadastro de adversários
  // ==========================================================================
  if identificacao = 'CA_FEDERACAO' then
  begin
    FrmDm.Tblfederacao.First;
    while FrmDm.tblFederacaocodfederacao.AsInteger <> DbGridfederacao.Columns[0].Field.AsInteger do
    begin
      FrmDm.Tblfederacao.Next;
    end;
    CA_FEDERACAO.estadoDosBotoesdeCadastro();
    h_federacao.Close;
  end;
end;

procedure Th_federacao.DbGridfederacaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(TDBGrid(Sender).Handle, SB_HORZ, False); // Remove barra Horizontal
end;

procedure Th_federacao.DbGridfederacaoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  f_gerais.buscaImagem(Imgfederacao, f_gerais.buscarNome('brasao',
    'CA_federacao', 'codfederacao', DbGridfederacao.Columns[0].Field.AsString));
end;

procedure Th_federacao.EdtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // preencher grid da pesquisa de estádios
  f_gerais.pesquisafederacao(DbGridfederacao, EdtPesquisa.Text);
  f_gerais.buscaImagem(Imgfederacao, f_gerais.buscarNome('brasao',
    'CA_federacao', 'codfederacao', DbGridfederacao.Columns[0].Field.AsString));
end;

procedure Th_federacao.FormActivate(Sender: TObject);
begin
  EdtPesquisa.Clear;
  EdtPesquisa.SetFocus;
  f_gerais.buscaImagem(Imgfederacao, f_gerais.buscarNome('brasao',
    'CA_federacao', 'codfederacao', DbGridfederacao.Columns[0].Field.AsString));
end;

procedure Th_federacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE: // ações quando pressionar ESC
      begin
        h_federacao.Close;
      end;
    VK_RETURN: // ações quando pressionar ENTER
      begin
        DbGridfederacaoDblClick(Self);
      end;
  end;
end;

end.
