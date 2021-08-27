unit uExcluirProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmExcluirProduto = class(TForm)
    edtSeqProd: TEdit;
    btnInformacao: TBitBtn;
    btnExcluir: TBitBtn;
    Bevel1: TBevel;
    procedure btnInformacaoClick(Sender: TObject);
    procedure edtSeqProdKeyPress(Sender: TObject; var Key: Char);
    procedure edtSeqProdEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExcluirProduto: TfrmExcluirProduto;

implementation

uses
  uVisualControl;

{$R *.dfm}

procedure TfrmExcluirProduto.btnInformacaoClick(Sender: TObject);
begin
  Application.MessageBox('Informar o Código da Sequência do produto na venda!', 'Informação',
                         MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmExcluirProduto.edtSeqProdEnter(Sender: TObject);
begin
  TVisualControl.ClearEdit(edtSeqProd);
end;

procedure TfrmExcluirProduto.edtSeqProdKeyPress(Sender: TObject; var Key: Char);
begin
  if not(TVisualControl.CharNumbers(Key)) then
    Key := #0;
end;

end.
