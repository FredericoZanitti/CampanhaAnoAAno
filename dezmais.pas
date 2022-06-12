unit dezmais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Buttons;

type
  Tr_dezmais = class(TForm)
    Shape1: TShape;
    Shape4: TShape;
    Label2: TLabel;
    Shape5: TShape;
    Label3: TLabel;
    Shape6: TShape;
    Label4: TLabel;
    Shape7: TShape;
    LblTitEst: TLabel;
    lblPos2: TLabel;
    LblNome2: TLabel;
    LblPeriodo2: TLabel;
    LblEstatistica2: TLabel;
    LblCodigo2: TLabel;
    lblPos3: TLabel;
    LblNome3: TLabel;
    LblPeriodo3: TLabel;
    LblEstatistica3: TLabel;
    LblCodigo3: TLabel;
    lblPos4: TLabel;
    LblNome4: TLabel;
    LblPeriodo4: TLabel;
    LblEstatistica4: TLabel;
    LblCodigo4: TLabel;
    lblPos5: TLabel;
    LblNome5: TLabel;
    LblPeriodo5: TLabel;
    LblEstatistica5: TLabel;
    LblCodigo5: TLabel;
    lblPos6: TLabel;
    LblNome6: TLabel;
    LblPeriodo6: TLabel;
    LblEstatistica6: TLabel;
    LblCodigo6: TLabel;
    lblPos7: TLabel;
    LblNome7: TLabel;
    LblPeriodo7: TLabel;
    LblEstatistica7: TLabel;
    LblCodigo7: TLabel;
    lblPos8: TLabel;
    LblNome8: TLabel;
    LblPeriodo8: TLabel;
    LblEstatistica8: TLabel;
    LblCodigo8: TLabel;
    lblPos9: TLabel;
    LblNome9: TLabel;
    LblPeriodo9: TLabel;
    LblEstatistica9: TLabel;
    LblCodigo9: TLabel;
    lblPos10: TLabel;
    LblNome10: TLabel;
    LblPeriodo10: TLabel;
    LblEstatistica10: TLabel;
    LblCodigo10: TLabel;
    Label51: TLabel;
    LblEstatistica1: TLabel;
    Shape44: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    ImgBandNac2: TImage;
    ImgBandNac3: TImage;
    ImgBandNac4: TImage;
    ImgBandNac5: TImage;
    ImgBandNac6: TImage;
    ImgBandNac7: TImage;
    ImgBandNac8: TImage;
    ImgBandNac9: TImage;
    ImgBandNac10: TImage;
    ImgNacionalidade: TImage;
    LblApelido: TLabel;
    LblNomeCompleto: TLabel;
    LblPeriodo: TLabel;
    LblPosicao: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape17: TShape;
    ImgFotoJogador: TImage;
    LblTitulos: TLabel;
    lblPos11: TLabel;
    LblPeriodo11: TLabel;
    LblEstatistica11: TLabel;
    ImgBandNac11: TImage;
    Shape19: TShape;
    lblPos12: TLabel;
    LblPeriodo12: TLabel;
    LblEstatistica12: TLabel;
    ImgBandNac12: TImage;
    Shape20: TShape;
    lblPos13: TLabel;
    LblPeriodo13: TLabel;
    LblEstatistica13: TLabel;
    ImgBandNac13: TImage;
    Shape21: TShape;
    Shape22: TShape;
    lblPos14: TLabel;
    LblPeriodo14: TLabel;
    LblEstatistica14: TLabel;
    ImgBandNac14: TImage;
    lblPos15: TLabel;
    LblPeriodo15: TLabel;
    LblEstatistica15: TLabel;
    ImgBandNac15: TImage;
    Shape24: TShape;
    LblCodigo11: TLabel;
    LblCodigo12: TLabel;
    LblCodigo13: TLabel;
    LblCodigo14: TLabel;
    LblCodigo15: TLabel;
    Shape23: TShape;
    LblNome11: TLabel;
    LblNome12: TLabel;
    LblNome13: TLabel;
    LblNome14: TLabel;
    LblNome15: TLabel;
    Shape18: TShape;
    Label1: TLabel;
    BtnExcel: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LblNome2Click(Sender: TObject);
    procedure LblNome3Click(Sender: TObject);
    procedure LblNome4Click(Sender: TObject);
    procedure LblNome5Click(Sender: TObject);
    procedure LblNome6Click(Sender: TObject);
    procedure LblNome7Click(Sender: TObject);
    procedure LblNome8Click(Sender: TObject);
    procedure LblNome9Click(Sender: TObject);
    procedure LblNome10Click(Sender: TObject);
    procedure LblNome11Click(Sender: TObject);
    procedure LblNome12Click(Sender: TObject);
    procedure LblNome13Click(Sender: TObject);
    procedure LblNome14Click(Sender: TObject);
    procedure LblNome15Click(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExportaExcel15Mais(query: TFDQuery; titulo: string);
  public
    { Public declarations }
  end;

var
  r_dezmais: Tr_dezmais;

implementation

{$R *.dfm}

uses funcoes, fichareduzida, home, module;

procedure Tr_dezmais.BtnExcelClick(Sender: TObject);
begin
  f_gerais.QrEstat.SQL.Text := LowerCase(f_gerais.QrEstat.SQL.Text);
  f_gerais.QrEstat.SQL.Text := StringReplace(f_gerais.QrEstat.SQL.Text, 'limit 15 offset 0', '' , [rfReplaceAll]);
  f_gerais.QrEstat.Open;
  ExportaExcel15Mais(f_gerais.QrEstat,LblTitulos.Caption);
end;

procedure Tr_dezmais.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        r_dezmais.Close;
      end;
  end;
end;

procedure Tr_dezmais.LblNome10Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo10.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome11Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo11.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome12Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo12.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome13Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo13.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome14Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo14.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome15Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo15.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome2Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo2.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome3Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo3.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome4Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo4.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome5Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo5.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome6Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo6.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome7Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo7.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome8Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo8.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.LblNome9Click(Sender: TObject);
begin
  // trazer informações reduzidas do jogador
  f_gerais.InfReduzidaJogador(LblCodigo9.Caption,
    r_fichareduzida.ImgNacionalidade, r_fichareduzida.ImgFotoJogador,
    r_fichareduzida.LblApelido, r_fichareduzida.LblNomeCompleto,
    r_fichareduzida.LblPeriodo, r_fichareduzida.LblPosicao);
  r_fichareduzida.ShowModal;
end;

procedure Tr_dezmais.ExportaExcel15Mais(query: TFDQuery; titulo: string);
begin
    f_gerais.ExportarDadosExcel(query,titulo);
end;

end.
