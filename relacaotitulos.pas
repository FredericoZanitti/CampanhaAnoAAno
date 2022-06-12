unit relacaotitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Tr_titulos = class(TForm)
    lblTitulosNacionais: TLabel;
    LblTitNacional: TLabel;
    LblTitInter: TLabel;
    lblTitulosInternacionais: TLabel;
    Shape2: TShape;
    LblTempo: TLabel;
    Shape1: TShape;
    ImgEscudoSeutime: TImage;
    Shape3: TShape;
    LblQtdeTitulos: TLabel;
    LblUltimoTitulo: TLabel;
    LblTitRegional: TLabel;
    lblTitulosRegionais: TLabel;
    ImgBandUF: TImage;
    ImgBandPais: TImage;
    ImgONU: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  r_titulos: Tr_titulos;

implementation

uses
  funcoes;

{$R *.dfm}

procedure Tr_titulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        r_titulos.Close;
      end;
  end;
end;

procedure Tr_titulos.FormShow(Sender: TObject);
var
  bandEstado,
  bandPais: string;
begin
  bandEstado := f_gerais.ResultadoSQL(' SELECT ca_uf.bandeira FROM ca_adver ' +
                                      ' INNER JOIN ca_cidad ON ca_cidad.codcidade = ca_adver.codcidade ' +
                                      ' INNER JOIN ca_uf ON ca_uf.coduf = ca_cidad.coduf ' +
                                      ' WHERE ca_adver.codadver = 0');
  bandPais := f_gerais.ResultadoSQL(' SELECT ca_pais.bandeira FROM ca_adver ' +
                                    ' INNER JOIN ca_cidad ON ca_cidad.codcidade = ca_adver.codcidade ' +
                                    ' INNER JOIN ca_pais ON ca_pais.codpais = ca_cidad.codpais ' +
                                    ' WHERE ca_adver.codadver = 0 ');

  ImgBandUF.Picture.LoadFromFile(bandEstado);
  ImgBandPais.Picture.LoadFromFile(bandPais);
end;

end.
