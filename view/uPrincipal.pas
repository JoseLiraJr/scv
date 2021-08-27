unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    mnPrincipal: TMainMenu;
    mnuCadastros: TMenuItem;
    mnuMovimento: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuSair: TMenuItem;
    mniSairSistema: TMenuItem;
    mniSobreSistema: TMenuItem;
    mniVenda: TMenuItem;
    mniCliente: TMenuItem;
    N1: TMenuItem;
    mniProduto: TMenuItem;
    pnTop: TPanel;
    btnCliente: TSpeedButton;
    btnSobre: TSpeedButton;
    btnSair: TSpeedButton;
    btnProduto: TSpeedButton;
    btnVenda: TSpeedButton;
    stbPrincipal: TStatusBar;
    N2: TMenuItem;
    PesquisaVendas1: TMenuItem;
    N3: TMenuItem;
    mniFornecedor: TMenuItem;
    btnFornecedor: TSpeedButton;
    mnuRelatorios: TMenuItem;
    mniRelClientes: TMenuItem;
    N4: TMenuItem;
    mniRelVendas: TMenuItem;
    mniRelFornecedores: TMenuItem;
    mniRelProdutos: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure mniSairSistemaClick(Sender: TObject);
    procedure mniClienteClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure mniSobreSistemaClick(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mniProdutoClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure mniVendaClick(Sender: TObject);
    procedure btnVendaClick(Sender: TObject);
    procedure PesquisaVendas1Click(Sender: TObject);
    procedure mniFornecedorClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure mniRelClientesClick(Sender: TObject);
    procedure mniRelFornecedoresClick(Sender: TObject);
    procedure mniRelProdutosClick(Sender: TObject);
    procedure mniRelVendasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uVisualControl, uCadClientes, uSobre, uConexaoController, uDmPrincipal,
  uCadProdutos, uVenda, uPesquisa, uCadFornecedor, uSelecao, uSelVenda;

{$R *.dfm}

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  mniCliente.Click;
end;

procedure TfrmPrincipal.btnFornecedorClick(Sender: TObject);
begin
  mniFornecedor.Click;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
  mniProduto.Click
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.btnSobreClick(Sender: TObject);
begin
  mniSobreSistema.Click;
end;

procedure TfrmPrincipal.btnVendaClick(Sender: TObject);
begin
  mniVenda.Click;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Deseja realmente sair do Sistema?', 'Encerrar Aplicação', MB_ICONQUESTION + MB_YESNO) = mrYes) then
    Action := caFree
  else
    Action := caNone;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  ConexaoCto : TConexaoController;
  criouDados : Boolean;
begin
  //Setando o Caption do Form
  Caption := Application.Title;

  //Criando o Banco de Dados
  ConexaoCto := TConexaoController.Create;
  try
    criouDados := ConexaoCto.createData;
  finally
    ConexaoCto.Free;
  end;

  //Encerrando a Aplicação caso haja erros na criação das tabelas.
  if not(criouDados) then
    Application.Terminate;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  TdmPrincipal.Destroy;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  stbPrincipal.Panels[0].Text := Application.Title;
  stbPrincipal.Panels[1].Text := TVisualControl.dayOfWeek + ', ' + TVisualControl.dataExtenso;
end;

procedure TfrmPrincipal.mniClienteClick(Sender: TObject);
var
  frmCadClientes : TfrmCadClientes;
begin
  frmCadClientes := TfrmCadClientes.Create(Self);
  try
    frmCadClientes.ShowModal;
  finally
    frmCadClientes.Free;
  end;
end;

procedure TfrmPrincipal.mniFornecedorClick(Sender: TObject);
var
  frmCadFornecedor : TfrmCadFornecedor;
begin
  frmCadFornecedor := TfrmCadFornecedor.Create(Self);
  try
    frmCadFornecedor.ShowModal;
  finally
    frmCadFornecedor.Free;
  end;
end;

procedure TfrmPrincipal.mniProdutoClick(Sender: TObject);
var
  frmCadProdutos : TfrmCadProdutos;
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    frmCadProdutos.Free;
  end;
end;

procedure TfrmPrincipal.mniRelClientesClick(Sender: TObject);
var
  frmSelecao : TfrmSelecao;
begin
  frmSelecao := TfrmSelecao.Create(Self);
  try
    frmSelecao.tipo := trCliente;
    frmSelecao.ShowModal;
  finally
    frmSelecao.Free;
  end;
end;

procedure TfrmPrincipal.mniRelFornecedoresClick(Sender: TObject);
var
  frmSelecao : TfrmSelecao;
begin
  frmSelecao := TfrmSelecao.Create(Self);
  try
    frmSelecao.tipo := trFornecedor;
    frmSelecao.ShowModal;
  finally
    frmSelecao.Free;
  end;
end;

procedure TfrmPrincipal.mniRelProdutosClick(Sender: TObject);
var
  frmSelecao : TfrmSelecao;
begin
  frmSelecao := TfrmSelecao.Create(Self);
  try
    frmSelecao.tipo := trProduto;
    frmSelecao.ShowModal;
  finally
    frmSelecao.Free;
  end;
end;

procedure TfrmPrincipal.mniRelVendasClick(Sender: TObject);
var
  frmSelVenda : TfrmSelVenda;
begin
  frmSelVenda := TfrmSelVenda.Create(Self);
  try
    frmSelVenda.ShowModal;
  finally
    frmSelVenda.Free;
  end;
end;

procedure TfrmPrincipal.mniSairSistemaClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.mniSobreSistemaClick(Sender: TObject);
var
  frmSobre : TfrmSobre;
begin
  frmSobre := TfrmSobre.Create(Self);
  try
    frmSobre.ShowModal;
  finally
    frmSobre.Free;
  end;
end;

procedure TfrmPrincipal.mniVendaClick(Sender: TObject);
var
  frmVendas : TfrmVendas;
begin
  frmVendas := TfrmVendas.Create(Self);
  try
    frmVendas.ShowModal;
  finally
    frmVendas.Free;
  end;
end;

procedure TfrmPrincipal.PesquisaVendas1Click(Sender: TObject);
var
  frmPesquisa : TfrmPesquisa;
begin
  frmPesquisa := TfrmPesquisa.Create(Self);
  try
    frmPesquisa.ShowModal;
  finally
    frmPesquisa.Free;
  end;
end;

end.
