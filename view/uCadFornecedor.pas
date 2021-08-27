unit uCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, uDmTabelas,
  Vcl.DBCtrls, Vcl.Mask, uFornecedorController;

type
  tpPesquisa = (tpCodigo, tpRazao);

type
  TfrmCadFornecedor = class(TfrmBase)
    Label1: TLabel;
    edtNomeFantasia: TDBEdit;
    Label2: TLabel;
    edtRazaoSocial: TDBEdit;
    Label3: TLabel;
    edtCnpj: TDBEdit;
    Label6: TLabel;
    cbStatus: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure radiobuttonsClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure EditsKeyPress(Sender : TObject; var Key : Char);
  private
    { Private declarations }
    dtmTabelas : TdmTabelas;
    tipo : tpPesquisa;
    fornecedorCTO : TFornecedorController;
  public
    { Public declarations }
  end;

var
  frmCadFornecedor: TfrmCadFornecedor;

implementation

uses
  uVisualControl;

{$R *.dfm}

procedure TfrmCadFornecedor.btnAlterarClick(Sender: TObject);
begin
  fornecedorCTO.Edit(dtmTabelas.dsFornecedor);
  cbStatus.ItemIndex := TVisualControl.ifthen<Integer>(dtmTabelas.dsFornecedor.DataSet.FieldByName('STATUS').AsString = 'A',0, 1);
  inherited;
end;

procedure TfrmCadFornecedor.btnCancelarClick(Sender: TObject);
begin
  fornecedorCTO.Cancel(dtmTabelas.dsFornecedor);
  inherited;
end;

procedure TfrmCadFornecedor.btnConfirmarClick(Sender: TObject);
var
  id : Integer;
begin
  id := fornecedorCTO.Save(dtmTabelas.dsFornecedor);
  if (id > 0) then
   Application.MessageBox(PChar('Fornecedor ' + IntToStr(id) + ' registrado com Sucesso!'), 'Informação', MB_OK + MB_ICONINFORMATION);

  inherited;
end;

procedure TfrmCadFornecedor.btnExcluirClick(Sender: TObject);
begin
  if (fornecedorCTO.Delete(dtmTabelas.dsFornecedor)) then
    Application.MessageBox('Fornecedor excluido com Sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmCadFornecedor.btnInserirClick(Sender: TObject);
begin
  fornecedorCTO.Insert(dtmTabelas.dsFornecedor);
  inherited;
end;

procedure TfrmCadFornecedor.btnLocalizarClick(Sender: TObject);
begin
  fornecedorCTO.Filter(dtmTabelas.dsFornecedor, Integer(tipo), edtLocalizar.Text);
end;

procedure TfrmCadFornecedor.EditsKeyPress(Sender: TObject; var Key: Char);
begin
  if not((Sender = edtLocalizar) and (tipo = tpRazao)) then
    begin
      if not(TVisualControl.CharNumbers(Key)) then
        Key := #0;
    end;
end;

procedure TfrmCadFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  dtmTabelas := TdmTabelas.Create(Self);
  fornecedorCTO := TFornecedorController.Create;
  fornecedorCTO.Open(dtmTabelas.dsFornecedor);
end;

procedure TfrmCadFornecedor.FormDestroy(Sender: TObject);
begin
  fornecedorCTO.Free;
  dtmTabelas.Free;
end;

procedure TfrmCadFornecedor.FormShow(Sender: TObject);
begin
  tipo := tpCodigo;
end;

procedure TfrmCadFornecedor.radiobuttonsClick(Sender: TObject);
begin
  inherited;
  if (Sender = rbCodigo) then
    tipo := tpCodigo
  else
  if (Sender = rbDescricao) then
    tipo := tpRazao;
end;

end.
