unit uCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, uDmTabelas, uClienteController,
  Vcl.DBCtrls, Vcl.Mask;

type
  tpPesquisa = (tpCodigo, tpNome);

type
  TfrmCadClientes = class(TfrmBase)
    Label1: TLabel;
    Label6: TLabel;
    cbStatus: TDBComboBox;
    edtNome: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    edtCidade: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure radiobuttonsClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure EditsKeyPress(Sender : TObject; var Key : Char);
  private
    { Private declarations }
    dtmTabelas : TdmTabelas;
    tipo : tpPesquisa;
    clienteCTO : TClienteController;
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

uses
  uVisualControl;

{$R *.dfm}

procedure TfrmCadClientes.btnAlterarClick(Sender: TObject);
begin
  clienteCTO.Edit(dtmTabelas.dsCliente);
  cbStatus.ItemIndex := TVisualControl.ifthen<Integer>(dtmTabelas.dsCliente.DataSet.FieldByName('STATUS').AsString = 'A',0, 1);
  inherited;
end;

procedure TfrmCadClientes.btnCancelarClick(Sender: TObject);
begin
  clienteCTO.Cancel(dtmTabelas.dsCliente);
  inherited;
end;

procedure TfrmCadClientes.btnConfirmarClick(Sender: TObject);
var
  id : Integer;
begin
  id := clienteCTO.Save(dtmTabelas.dsCliente);
  if (id > 0) then
   Application.MessageBox(PChar('Cliente ' + IntToStr(id) + ' registrado com Sucesso!'), 'Informação', MB_OK + MB_ICONINFORMATION);

  inherited;
end;

procedure TfrmCadClientes.btnExcluirClick(Sender: TObject);
begin
  if (clienteCTO.Delete(dtmTabelas.dsCliente)) then
    Application.MessageBox('Cliente excluido com Sucesso!', 'Informação', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmCadClientes.btnInserirClick(Sender: TObject);
begin
  clienteCTO.Insert(dtmTabelas.dsCliente);
  inherited;
end;

procedure TfrmCadClientes.btnLocalizarClick(Sender: TObject);
begin
  clienteCTO.Filter(dtmTabelas.dsCliente, Integer(tipo), edtLocalizar.Text);
end;

procedure TfrmCadClientes.EditsKeyPress(Sender: TObject; var Key: Char);
begin
  if not((Sender = edtLocalizar) and (tipo = tpNome)) then
    begin
      if not(TVisualControl.CharNumbers(Key)) then
        Key := #0;
    end;
end;

procedure TfrmCadClientes.FormCreate(Sender: TObject);
begin
  inherited;
  dtmTabelas := TdmTabelas.Create(Self);
  clienteCTO := TClienteController.Create;
  clienteCTO.Open(dtmTabelas.dsCliente);
end;

procedure TfrmCadClientes.FormDestroy(Sender: TObject);
begin
  clienteCTO.Free;
  dtmTabelas.Free;
end;

procedure TfrmCadClientes.FormShow(Sender: TObject);
begin
  tipo := tpCodigo;
end;

procedure TfrmCadClientes.radiobuttonsClick(Sender: TObject);
begin
  inherited;
  if (Sender = rbCodigo) then
    tipo := tpCodigo
  else
  if (Sender = rbDescricao) then
    tipo := tpNome;
end;

end.
