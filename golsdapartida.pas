unit golsdapartida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, module, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, funcoes, pesquisajogadores,
  Vcl.ExtCtrls;

type
  TfrmGolsdaPartida = class(TForm)
    btnJogadores: TBitBtn;
    DbGridGols: TDBGrid;
    EdtJogador: TEdit;
    Label20: TLabel;
    qryGolsporjogo: TFDQuery;
    qryGolsporjogocodjogador: TIntegerField;
    qryGolsporjogonome: TWideStringField;
    qryGolsporjogotempo: TIntegerField;
    qryGolsporjogofracao: TWideStringField;
    dtsGolsporjogo: TDataSource;
    CbxFracao: TComboBox;
    Label1: TLabel;
    BtnGravar: TBitBtn;
    rgrTiposGols: TRadioGroup;
    qryTipoGol: TFDQuery;
    qryTipoGolcodtipo: TFDAutoIncField;
    qryTipoGoltipo: TWideStringField;
    qryRecuperaCodigoTipo: TFDQuery;
    qryRecuperaCodigoTipocodtipo: TFDAutoIncField;
    qryGolsporjogotipo: TWideStringField;
    qryGolsporjogocodtipo: TIntegerField;
    BtnEliminarJogador: TBitBtn;
    qryEliminarUltimoRegistro: TFDQuery;
    rgrGolContra: TRadioGroup;
    cbxTempo: TComboBox;
    qryGolsporjogoperiodo: TWideStringField;
    qryGolsporjogocoditem: TFDAutoIncField;
    EdtTempo: TEdit;
    procedure BtnGravarClick(Sender: TObject);
    procedure btnJogadoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnEliminarJogadorClick(Sender: TObject);
    procedure rgrGolContraClick(Sender: TObject);
    procedure EdtTempoExit(Sender: TObject);
    procedure EdtTempoKeyPress(Sender: TObject; var Key: Char);
    procedure DbGridGolsCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigoJogo,
    CodigoJogador,
    CodigoItem,
    Tempo,
    CodigoTipoGol,
    Item: Integer;
    Fracao: string;
    procedure LimparCampos;
  end;

var
  frmGolsdaPartida: TfrmGolsdaPartida;

implementation

uses
  jogos;

{$R *.dfm}

procedure TfrmGolsdaPartida.LimparCampos;
begin
    CodigoItem := 0;
    rgrGolContra.ItemIndex := 0;
    rgrTiposGols.ItemIndex := 10;
    EdtJogador.Clear;
    btnJogadores.Enabled := true;
    EdtTempo.Clear;
    CbxFracao.ItemIndex := 0;
    cbxTempo.ItemIndex := 0;

    if CA_JOGOS.cdsGolsDoJogo.RecordCount > 0 then
       BtnEliminarJogador.Enabled := True
    else
       BtnEliminarJogador.Enabled := false;
end;

procedure TfrmGolsdaPartida.BtnEliminarJogadorClick(Sender: TObject);
var
  msg: string;
begin
   if CodigoItem = 0 then
   begin
      msg := 'Para que esta operação seja executada corretamente você deverá selecionar um item abaixo para excluir.';
      Application.MessageBox(Pchar(msg), 'ATENÇÃO', MB_OK + MB_ICONINFORMATION);
   end
   else
   begin
       if f_gerais.desejaRealizarAcao('excluir o registro?') then
       begin
          if CA_JOGOS.cdsGolsDoJogo.Locate('item', CodigoItem, []) then
          begin
             CA_JOGOS.cdsGolsDoJogo.Delete;
             if CA_JOGOS.cdsGolsDoJogo.RecordCount = 0 then
                CA_JOGOS.ExcluiuGolsAgora := True;
          end;
       end;

       LimparCampos;
   end;
end;

procedure TfrmGolsdaPartida.BtnGravarClick(Sender: TObject);
var
  CodigoTipo: Integer;
  TipoGol, Tempo: string;
begin
  if (not (CodigoJogador > 0)) and (rgrGolContra.ItemIndex = 0) then
  begin
     Application.MessageBox('É obrigatório selecionar um jogador', 'ATENÇÃO', MB_OK + MB_ICONWARNING);
     btnJogadores.SetFocus;
     Abort;
  end;

  if EdtTempo.Text = EmptyStr then
  begin
     Application.MessageBox('É obrigatório informar o tempo do gol', 'ATENÇÃO', MB_OK + MB_ICONWARNING);
     EdtTempo.SetFocus;
     Abort;
  end;

  if CbxFracao.Text = EmptyStr then
  begin
     Application.MessageBox('É obrigatório informar a fração de tempo do gol', 'ATENÇÃO', MB_OK + MB_ICONWARNING);
     CbxFracao.SetFocus;
     Abort;
  end;

  if cbxTempo.Text = EmptyStr then
  begin
     Application.MessageBox('É obrigatório informar o período em que o gol aconteceu', 'ATENÇÃO', MB_OK + MB_ICONWARNING);
     cbxTempo.SetFocus;
     Abort;
  end;

  if rgrTiposGols.ItemIndex = -1 then
  begin
     Application.MessageBox('É obrigatório informar o tipo do gol', 'ATENÇÃO', MB_OK + MB_ICONWARNING);
     rgrTiposGols.SetFocus;
     Abort;
  end;

  if rgrGolContra.ItemIndex = 1 then
  begin
     CodigoJogador := 0;
     EdtJogador.Text := 'Contra';
  end;

  case cbxTempo.ItemIndex of
      0: Tempo := '1T';
      1: Tempo := '2T';
      2: Tempo := '1TP';
      3: Tempo := '2TP';
  end;

  TipoGol := rgrTiposGols.Items[rgrTiposGols.ItemIndex];
  if qryRecuperaCodigoTipo.Active then
     qryRecuperaCodigoTipo.Close;
  qryRecuperaCodigoTipo.Params.ParamByName('tipogol').DataType := ftString;
  qryRecuperaCodigoTipo.Params.ParamByName('tipogol').Value := TipoGol;
  qryRecuperaCodigoTipo.Open;
  CA_JOGOS.cdsGolsDoJogo.Last;
  Item := CA_JOGOS.cdsGolsDoJogoItem.Value + 1;

  CA_JOGOS.cdsGolsDoJogo.Insert;
  CA_JOGOS.cdsGolsDoJogoItem.Value := Item;
  CA_JOGOS.cdsGolsDoJogocodjogo.Value := CodigoJogo;
  CA_JOGOS.cdsGolsDoJogocodjogador.Value := CodigoJogador;
  if f_gerais.ResultadoSQL(Format('SELECT nome FROM ca_jogad WHERE codjogador = %d',[CodigoJogador])) = EmptyStr then
     CA_JOGOS.cdsGolsDoJogonome.Value := 'Contra'
  else
     CA_JOGOS.cdsGolsDoJogonome.Value := f_gerais.ResultadoSQL(Format('SELECT nome FROM ca_jogad WHERE codjogador = %d',[CodigoJogador]));
  CA_JOGOS.cdsGolsDoJogotempo.Value := StrToInt(EdtTempo.Text);
  CA_JOGOS.cdsGolsDoJogofracao.Value := CbxFracao.Text;
  CA_JOGOS.cdsGolsDoJogotipo.Value := TipoGol;
  CA_JOGOS.cdsGolsDoJogocodtipo.Value := qryRecuperaCodigoTipocodtipo.Value;
  CA_JOGOS.cdsGolsDoJogoperiodo.Value := Tempo;
  CA_JOGOS.cdsGolsDoJogo.Post;

  LimparCampos;

end;

procedure TfrmGolsdaPartida.btnJogadoresClick(Sender: TObject);
begin
  h_jogadores.CodigoJogo := CodigoJogo;
  h_jogadores.identificacao := 'ES_GOLS';
  h_jogadores.ShowModal;
  rgrTiposGols.ItemIndex := 10;
  EdtTempo.SetFocus;
end;

procedure TfrmGolsdaPartida.DbGridGolsCellClick(Column: TColumn);
begin
  CodigoItem := CA_JOGOS.cdsGolsDoJogoItem.Value;
end;

procedure TfrmGolsdaPartida.EdtTempoExit(Sender: TObject);
begin
    if not (EdtTempo.Text = EmptyStr) then
    begin
        if StrToInt(EdtTempo.Text) > 60 then
        begin
            if not f_gerais.desejaRealizarAcao('manter o valor digitado? Possivelmente o tempo digitado está incorreto, pois considerando os acréscimos um tempo, provavelmente, não terá mais que 60 minutos') then
            begin
                EdtTempo.SetFocus;
                Abort;
            end;
        end;
    end;

    if CA_JOGOS.cdsGolsDoJogoperiodo.Value = '2T' then
       cbxTempo.ItemIndex := 1;
end;

procedure TfrmGolsdaPartida.EdtTempoKeyPress(Sender: TObject; var Key: Char);
begin
    if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
      key := #0;
end;

procedure TfrmGolsdaPartida.FormCreate(Sender: TObject);
begin
    if qryTipoGol.Active then
       qryTipoGol.Close;
    qryTipoGol.Open;
    qryTipoGol.First;
    while not qryTipoGol.Eof do
    begin
       rgrTiposGols.Items.Add(qryTipoGoltipo.Value);
       qryTipoGol.Next;
    end;

    rgrTiposGols.ItemIndex := -1;
    rgrGolContra.ItemIndex := 0;
    btnJogadores.Enabled := true;
    CodigoItem := 0;
end;

procedure TfrmGolsdaPartida.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      frmGolsdaPartida.Close;
    VK_RETURN:
      BtnGravarClick(Self);
  end;
end;

procedure TfrmGolsdaPartida.FormShow(Sender: TObject);
var
  itemCds: integer;
begin
    itemCds := 0;

    if (CA_JOGOS.cdsGolsDoJogo.RecordCount = 0) and (not CA_JOGOS.ExcluiuGolsAgora) then
    begin
        if qryGolsporjogo.Active then
           qryGolsporjogo.Close;
        qryGolsporjogo.Params.ParamByName('CodigoJogo').DataType := ftInteger;
        qryGolsporjogo.Params.ParamByName('CodigoJogo').Value := CodigoJogo;
        qryGolsporjogo.Open;

        //preenche clientdataset com os dados da tabela, se existirem
        CA_JOGOS.cdsGolsDoJogo.Close;
        CA_JOGOS.cdsGolsDoJogo.CreateDataSet;
        qryGolsporjogo.First;
        Inc(itemCds);
        while not qryGolsporjogo.Eof do
        begin
            CA_JOGOS.cdsGolsDoJogo.Insert;
            CA_JOGOS.cdsGolsDoJogoItem.Value := itemCds;
            CA_JOGOS.cdsGolsDoJogocodjogo.Value := CodigoJogo;
            CA_JOGOS.cdsGolsDoJogocodjogador.Value := qryGolsporjogocodjogador.Value;
            if f_gerais.ResultadoSQL(Format('SELECT nome FROM ca_jogad WHERE codjogador = %d',[qryGolsporjogocodjogador.Value])) = EmptyStr then
               CA_JOGOS.cdsGolsDoJogonome.Value := 'Contra'
            else
               CA_JOGOS.cdsGolsDoJogonome.Value := f_gerais.ResultadoSQL(Format('SELECT nome FROM ca_jogad WHERE codjogador = %d',[qryGolsporjogocodjogador.Value]));
            CA_JOGOS.cdsGolsDoJogotempo.Value := qryGolsporjogotempo.Value;
            CA_JOGOS.cdsGolsDoJogofracao.Value := qryGolsporjogofracao.Value;
            CA_JOGOS.cdsGolsDoJogotipo.Value := f_gerais.ResultadoSQL(Format('SELECT tipo FROM es_tipogol WHERE codtipo = %d',[qryGolsporjogocodtipo.Value]));
            CA_JOGOS.cdsGolsDoJogocodtipo.Value := qryGolsporjogocodtipo.Value;
            CA_JOGOS.cdsGolsDoJogoperiodo.Value := qryGolsporjogoperiodo.Value;
            CA_JOGOS.cdsGolsDoJogo.Post;
            Inc(itemCds);
            qryGolsporjogo.Next;
        end;
    end;

    LimparCampos;
end;

procedure TfrmGolsdaPartida.rgrGolContraClick(Sender: TObject);
begin
  if rgrGolContra.ItemIndex = 1 then
  begin
     EdtJogador.Text := 'Contra';
     btnJogadores.Enabled := False;
     CodigoJogador := 0;
  end
  else
  begin
     btnJogadores.Enabled := True;
     rgrTiposGols.ItemIndex := 10;
     EdtJogador.Clear;
  end;
  EdtTempo.SetFocus;
end;

end.


