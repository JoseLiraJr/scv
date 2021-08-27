unit uCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, uDmTabelas, uProdutoController,
  Vcl.DBCtrls, Vcl.Mask;

type
  tpPesquisa = (tpCodigo, tpDescricao);

type
  TfrmCadProdutos = class(TfrmBase)
    Label2: TLabel;
    EdtDescricao: TDBEdit;
    Label4: TLabel;
    edtPrecoVenda: TDBEdit;
    dblFornecedor: TDBLookupComboBox;
    Label1: TLabel;
    Label6: TLabel;
    cbStatus: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure EditsKeyPress(Sender : TObject; var Key : Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure radiobuttonsClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    dtmTabelas : TdmTabelas;
    tipo : tpPesquisa;
    produtoCTO : TProdutoController;
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

uses
  uVisualControl;

{$R *.dfm}

procedure TfrmCadProdutos.btnAlterarClick(Sender: TObject);
begin
  produtoCTO.Edit(dtmTabelas.dsProduto);
  cbStatus.ItemIndex := TVisualControl.ifthen<Integer>(dtmTabelas.dsProduto.DataSet.FieldByName('STATUS').AsString = 'A',0, 1);
  inherited;
end;

procedure TfrmCadProdutos.btnCancelarClick(Sender: TObject);
begin
  produtoCTO.Cancel(dtmTabelas.dsProduto);
  inherited;
end;

procedure TfrmCadProdutos.btnConfirmarClick(Sender: TObject);
var
  id : Integer;
begin
  id := produtoCTO.Save(dtmTabelas.dsProduto);
  if (id > 0) then
   Application.MessageBox(PChar('Produto ' + IntToStr(id) + ' registrado com Sucesso!'), 'Informação', MB_OK + MB_ICONINFORMATION);

  inherited;
end;

procedure TfrmCadProdutos.btnExcluirClick(Sender: TObject);
begin
  if (produtoCTO.Delete(dtmTabelas.dsProduto)) then
   Application.MessageBox('Produto excluido com Sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmCadProdutos.btnInserirClick(Sender: TObject);
begin
  produtoCTO.Insert(dtmTabelas.dsProduto);
  inherited;
end;

procedure TfrmCadProdutos.btnLocalizarClick(Sender: TObject);
begin
  produtoCTO.Filter(dtmTabelas.dsProduto, Integer(tipo), edtLocalizar.Text);
end;

procedure TfrmCadProdutos.EditsKeyPress(Sender: TObject; var Key: Char);
begin
  if not((Sender = edtLocalizar) and (tipo = tpDescricao)) then
    begin
      if not(TVisualControl.CharNumbers(Key)) then
        Key := #0;
    end;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  dtmTabelas := TdmTabelas.Create(Self);
  produtoCTO := TProdutoController.Create;
  produtoCTO.Open([dtmTabelas.dsProduto, dtmTabelas.dsFornecedor]);
  dblFornecedor.ListSource := TVisualControl.FilterDataset(dtmTabelas.dsFornecedor, 'STATUS', 'A');
end;

procedure TfrmCadProdutos.FormDestroy(Sender: TObject);
begin
  produtoCTO.Free;
  dtmTabelas.Free;
end;

procedure TfrmCadProdutos.FormShow(Sender: TObject);
begin
  tipo := tpCodigo;
end;

procedure TfrmCadProdutos.radiobuttonsClick(Sender: TObject);
begin
  inherited;
  if (Sender = rbCodigo) then
    tipo := tpCodigo
  else
  if (Sender = rbDescricao) then
    tipo := tpDescricao;
end;

end.
