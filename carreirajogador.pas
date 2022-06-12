unit carreirajogador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frameSelecionarAnoCompleto,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, frameSelecionarClubeCompleto,
  Vcl.StdCtrls, Vcl.Buttons, Datasnap.DBClient;

type
  TfrmCarreiraJogador = class(TForm)
    fraSelAnoInicial: TfraSelAnoCompleto;
    fraSelAnoFinal: TfraSelAnoCompleto;
    fraSelClubeCompleto: TfraSelClubeCompleto;
    DbGridClubesCarreira: TDBGrid;
    btnInserir: TBitBtn;
    LblApelido: TLabel;
    BtnCancelar: TBitBtn;
    cdsCarreira: TClientDataSet;
    dtsCarreira: TDataSource;
    BtnIncluir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    cdsCarreiraItem: TIntegerField;
    cdsCarreiraCodigoJogador: TIntegerField;
    cdsCarreiraCodigoClube: TIntegerField;
    cdsCarreiranomeClube: TStringField;
    cdsCarreirapais: TStringField;
    cdsCarreiraAnoInicial: TStringField;
    cdsCarreiraAnoFinal: TStringField;
    BtnGravar: TBitBtn;
    qryGravarCarreira: TFDQuery;
    procedure FormActivate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure cdsCarreiraCalcFields(DataSet: TDataSet);
    procedure BtnEditarClick(Sender: TObject);
    procedure DbGridClubesCarreiraCellClick(Column: TColumn);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure DbGridClubesCarreiraDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure PreencherGridCarreira(estadoDts: TDataSetState);
    procedure EstadoDosBotoes(estadoReg: TDataSetState);
    procedure FecharFormulario;
    { Private declarations }
  public
    { Public declarations }
    codigoJogador: integer;
    codigoitem: integer;
    estado: TDataSetState;
    alterarRegistro: Boolean;
  end;

var
  frmCarreiraJogador: TfrmCarreiraJogador;

implementation

{$R *.dfm}

uses module, funcoes;

procedure TfrmCarreiraJogador.BtnCancelarClick(Sender: TObject);
begin
  fraSelAnoInicial.edtAno.Clear;
  fraSelAnoFinal.edtAno.Clear;
  fraSelClubeCompleto.dblClube.KeyValue := -1;

  fraSelClubeCompleto.dblClube.Enabled := False;
  fraSelAnoInicial.edtAno.Enabled := False;
  fraSelAnoFinal.edtAno.Enabled := False;

  cdsCarreira.Cancel;
  estado := dsBrowse;
  EstadoDosBotoes(estado);
  alterarRegistro := False;
end;

procedure TfrmCarreiraJogador.BtnEditarClick(Sender: TObject);
begin
  fraSelClubeCompleto.dblClube.Enabled := True;
  fraSelAnoInicial.edtAno.Enabled := True;
  fraSelAnoFinal.edtAno.Enabled := True;

  if cdsCarreira.Locate('Item', CodigoItem, []) then
  begin
      fraSelClubeCompleto.dblClube.KeyValue := cdsCarreiraCodigoClube.Value;
      fraSelAnoInicial.edtAno.Text := cdsCarreiraAnoInicial.AsString;
      fraSelAnoFinal.edtAno.Text := cdsCarreiraAnoFinal.AsString;
  end;

  estado := dsEdit;
  EstadoDosBotoes(estado);
end;

procedure TfrmCarreiraJogador.BtnExcluirClick(Sender: TObject);
begin
     if f_gerais.desejaRealizarAcao('excluir o registro?') then
     begin
        if cdsCarreira.Locate('Item', CodigoItem, []) then
        begin
           cdsCarreira.Delete;
           alterarRegistro := True;
           EstadoDosBotoes(estado);
        end;
     end;
end;

procedure TfrmCarreiraJogador.BtnGravarClick(Sender: TObject);
var
  qryAjustarCarreira: TFDQuery;
  sql: string;
begin
  if alterarRegistro then
  begin
      sql := Format(' DELETE FROM ca_carreira ' +
                    ' WHERE ca_carreira.codjogador = %d',[codigoJogador]);

      qryAjustarCarreira := TFDQuery.Create(nil);
      qryAjustarCarreira.Connection := FrmDm.BDMySQL;
      qryAjustarCarreira.Close;
      qryAjustarCarreira.sql.Clear;
      qryAjustarCarreira.sql.Add(sql);
      qryAjustarCarreira.ExecSQL;

      cdsCarreira.First;
      while not cdsCarreira.Eof do
      begin
          sql := ' INSERT INTO ca_carreira (codjogador, codclube, anoini, anofim) ' +
                 ' VALUES (:CODJOGADOR, :CODCLUBE, :ANOINI, :ANOFIM) ';

          qryGravarCarreira.Close;
          qryGravarCarreira.sql.Clear;
          qryGravarCarreira.sql.Add(sql);
          qryGravarCarreira.Params.ParamByName('CODJOGADOR').DataType := ftInteger;
          qryGravarCarreira.Params.ParamByName('CODJOGADOR').Value := cdsCarreiraCodigoJogador.Value;
          qryGravarCarreira.Params.ParamByName('CODCLUBE').DataType := ftInteger;
          qryGravarCarreira.Params.ParamByName('CODCLUBE').Value := cdsCarreiraCodigoClube.Value;
          qryGravarCarreira.Params.ParamByName('ANOINI').DataType := ftInteger;
          qryGravarCarreira.Params.ParamByName('ANOINI').Value := cdsCarreiraAnoInicial.AsInteger;
          qryGravarCarreira.Params.ParamByName('ANOFIM').DataType := ftInteger;
          if not (cdsCarreiraAnoFinal.Value = EmptyStr) then
              qryGravarCarreira.Params.ParamByName('ANOFIM').Value := cdsCarreiraAnoFinal.AsInteger;
          qryGravarCarreira.ExecSQL;
          cdsCarreira.Next;
      end;
  end;
  alterarRegistro := False;
  estado := dsBrowse;
  EstadoDosBotoes(estado);
end;

procedure TfrmCarreiraJogador.btnInserirClick(Sender: TObject);
var
  itemCds: Integer;
begin
  if (fraSelClubeCompleto.dblClube.Text = EmptyStr) or
    (fraSelAnoInicial.edtAno.Text = EmptyStr) then
  begin
    Application.MessageBox('Todos os campos são de preenchimento obrigatório!',
      'ATENÇÃO', MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  if (fraSelAnoFinal.edtAno.Text <> EmptyStr) and
    (StrToInt(fraSelAnoInicial.edtAno.Text) >
    StrToInt(fraSelAnoFinal.edtAno.Text)) then
  begin
    Application.MessageBox('Ano inicial maior que ano final!', 'ATENÇÃO',
      MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;

  if estado = dsInsert then
  begin
      cdsCarreira.Last;
      itemCds := cdsCarreiraItem.Value + 1;
      cdsCarreira.Insert;
      cdsCarreiraItem.Value := itemCds;
      cdsCarreiraCodigoJogador.Value := codigoJogador;
      cdsCarreiraCodigoClube.Value := fraSelClubeCompleto.dblClube.KeyValue;
      cdsCarreiraAnoInicial.Value := fraSelAnoInicial.edtAno.Text;
      cdsCarreiraAnoFinal.Value := fraSelAnoFinal.edtAno.Text;
      cdsCarreira.Post;
  end;

  if estado = dsEdit then
  begin
      if cdsCarreira.Locate('Item', CodigoItem, []) then
      begin
          cdsCarreira.Edit;
          cdsCarreiraCodigoClube.Value := fraSelClubeCompleto.dblClube.KeyValue;
          cdsCarreiraAnoInicial.Value := fraSelAnoInicial.edtAno.Text;
          cdsCarreiraAnoFinal.Value := fraSelAnoFinal.edtAno.Text;
          cdsCarreira.Post;
      end;
  end;

  fraSelClubeCompleto.dblClube.Enabled := False;
  fraSelAnoInicial.edtAno.Enabled := False;
  fraSelAnoFinal.edtAno.Enabled := False;

  fraSelAnoInicial.edtAno.Clear;
  fraSelAnoFinal.edtAno.Clear;
  fraSelClubeCompleto.dblClube.KeyValue := -1;

  PreencherGridCarreira(estado);
  alterarRegistro := True;
  EstadoDosBotoes(estado);
end;

procedure TfrmCarreiraJogador.BtnIncluirClick(Sender: TObject);
begin
  fraSelClubeCompleto.dblClube.Enabled := True;
  fraSelAnoInicial.edtAno.Enabled := True;
  fraSelAnoFinal.edtAno.Enabled := True;
  estado := dsInsert;
  EstadoDosBotoes(estado);
  fraSelClubeCompleto.dblClube.SetFocus;
end;

procedure TfrmCarreiraJogador.cdsCarreiraCalcFields(DataSet: TDataSet);
var
  qryDadosCalculados: TFDQuery;
  sql: string;
begin
  sql := Format(' SELECT ca_adver.nome, ca_pais.nome ' +
                ' FROM ca_adver ' +
                ' INNER JOIN ca_cidad ON ca_cidad.codcidade = ca_adver.codcidade ' +
                ' INNER JOIN ca_pais ON ca_pais.codpais = ca_cidad.codpais ' +
                ' WHERE ca_adver.codadver = %d',[cdsCarreiraCodigoClube.Value]);

  qryDadosCalculados := TFDQuery.Create(nil);
  qryDadosCalculados.Connection := FrmDm.BDMySQL;
  qryDadosCalculados.Close;
  qryDadosCalculados.sql.Clear;
  qryDadosCalculados.sql.Add(sql);
  qryDadosCalculados.Open;

  cdsCarreiranomeClube.Value := qryDadosCalculados.Fields[0].AsString;
  cdsCarreirapais.Value := qryDadosCalculados.Fields[1].AsString;
end;

procedure TfrmCarreiraJogador.DbGridClubesCarreiraCellClick(Column: TColumn);
begin
    codigoitem := DbGridClubesCarreira.Columns[0].Field.AsInteger;
end;

procedure TfrmCarreiraJogador.DbGridClubesCarreiraDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ShowScrollBar(DbGridClubesCarreira.Handle,SB_HORZ,False);
end;

procedure TfrmCarreiraJogador.PreencherGridCarreira(estadoDts: TDataSetState);
var
  qryCarreira: TFDQuery;
  sql: string;
  itemCds: Integer;
begin
  if estadoDts = dsBrowse then
  begin
      itemCds := 0;
      sql := Format(' SELECT *  FROM ca_carreira ' +
                    ' WHERE ca_carreira.codjogador = %d ' +
                    ' ORDER BY ca_carreira.coditem ',[codigoJogador]);

      qryCarreira := TFDQuery.Create(nil);
      qryCarreira.Connection := FrmDm.BDMySQL;
      qryCarreira.Close;
      qryCarreira.sql.Clear;
      qryCarreira.sql.Add(sql);
      qryCarreira.Open;

      cdsCarreira.Close;
      cdsCarreira.CreateDataSet;
      qryCarreira.First;
      Inc(itemCds);
      while not qryCarreira.Eof do
      begin
          cdsCarreira.Insert;
          cdsCarreiraItem.Value := itemCds;
          cdsCarreiraCodigoJogador.Value := qryCarreira.Fields[1].AsInteger;
          cdsCarreiraCodigoClube.Value := qryCarreira.Fields[2].AsInteger;
          cdsCarreiraAnoInicial.Value := qryCarreira.Fields[3].AsString;
          cdsCarreiraAnoFinal.Value := qryCarreira.Fields[4].AsString;
          cdsCarreira.Post;
          Inc(itemCds);
          qryCarreira.Next;
      end;
  end;
  estado := dsBrowse;
  EstadoDosBotoes(estado);
end;

procedure TfrmCarreiraJogador.FormActivate(Sender: TObject);
begin
  codigoitem := 0;
  alterarRegistro := False;
  estado := dsBrowse;
  PreencherGridCarreira(estado);
  fraSelAnoInicial.edtAno.Clear;
  fraSelAnoFinal.edtAno.Clear;
  fraSelClubeCompleto.dblClube.KeyValue := -1;

  fraSelClubeCompleto.dblClube.Enabled := False;
  fraSelAnoInicial.edtAno.Enabled := False;
  fraSelAnoFinal.edtAno.Enabled := False;
end;

procedure TfrmCarreiraJogador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FecharFormulario;
end;

procedure TfrmCarreiraJogador.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
    begin
      FecharFormulario;
      frmCarreiraJogador.Close;
    end;
  end;
end;

procedure TfrmCarreiraJogador.EstadoDosBotoes(estadoReg: TDataSetState);
begin
    if estadoReg in [dsInsert, dsEdit] then
    begin
        BtnIncluir.Enabled := False;
        BtnEditar.Enabled := False;
        BtnExcluir.Enabled := False;
        btnInserir.Enabled := True;
        BtnCancelar.Enabled := True;
    end
    else
    begin
        BtnIncluir.Enabled := True;
        BtnEditar.Enabled := True;
        BtnExcluir.Enabled := True;
        btnInserir.Enabled := False;
        BtnCancelar.Enabled := False;
    end;
    BtnGravar.Enabled := alterarRegistro;
end;

procedure TfrmCarreiraJogador.FecharFormulario;
begin
  if alterarRegistro then
  begin
      if Application.MessageBox('Alterações não salvas, desejsa sair mesmo assim?', 'ATENÇÃO', mb_yesno + MB_ICONQUESTION) = mryes then
         BtnCancelarClick(Self)
      else
         Abort;
  end;
end;

end.
