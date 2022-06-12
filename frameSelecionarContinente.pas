unit frameSelecionarContinente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TfraSelContinente = class(TFrame)
    grbContinente: TGroupBox;
    lblSelecionarPais: TLabel;
    chbTodos: TCheckBox;
    dblContinente: TDBLookupComboBox;
    procedure chbTodosClick(Sender: TObject);
    procedure dblContinenteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigoContinente: integer;
  end;

implementation

{$R *.dfm}

uses module;

procedure TfraSelContinente.chbTodosClick(Sender: TObject);
begin
  if chbTodos.Checked then
    dblContinente.KeyValue := -1;
end;

procedure TfraSelContinente.dblContinenteClick(Sender: TObject);
begin
  chbTodos.Checked := false;
  CodigoContinente := dblContinente.KeyValue;
end;

end.
