program scv;

uses
  Vcl.Forms,
  uPrincipal in 'view\uPrincipal.pas' {frmPrincipal},
  uVisualControl in 'utils\uVisualControl.pas',
  uBase in 'repository\uBase.pas' {frmBase},
  uCadClientes in 'view\uCadClientes.pas' {frmCadClientes},
  uSobre in 'view\uSobre.pas' {frmSobre},
  uConexaoController in 'controller\uConexaoController.pas',
  uDmPrincipal in 'model\uDmPrincipal.pas' {dmPrincipal: TDataModule},
  uDmTabelas in 'model\uDmTabelas.pas' {dmTabelas: TDataModule},
  uCadProdutos in 'view\uCadProdutos.pas' {frmCadProdutos},
  uClienteController in 'controller\uClienteController.pas',
  uCliente in 'model\uCliente.pas',
  uProdutocontroller in 'controller\uProdutocontroller.pas',
  uProduto in 'model\uProduto.pas',
  uVenda in 'view\uVenda.pas' {frmVendas},
  uPesquisa in 'view\uPesquisa.pas' {frmPesquisa},
  uPesquisaController in 'controller\uPesquisaController.pas',
  Pesquisa in 'model\Pesquisa.pas',
  Venda in 'model\Venda.pas',
  uVendaController in 'controller\uVendaController.pas',
  ItemVenda in 'model\ItemVenda.pas',
  uItemVendaController in 'controller\uItemVendaController.pas',
  uExcluirProduto in 'view\uExcluirProduto.pas' {frmExcluirProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SCV - Sistema de Controle de Vendas';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
