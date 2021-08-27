unit uDmTabelas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDmPrincipal;

type
  TdmTabelas = class(TDataModule)
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    qryProduto: TFDQuery;
    dsProduto: TDataSource;
    qryPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    qryVenda: TFDQuery;
    dsVenda: TDataSource;
    qryItemVenda: TFDQuery;
    dsItemVenda: TDataSource;
    qryVendaID: TFDAutoIncField;
    qryVendaID_CLI: TIntegerField;
    qryVendaDT_VENDA: TDateField;
    qryVendaVLR_TOT_VENDA: TBCDField;
    qryFornecedor: TFDQuery;
    dsFornecedor: TDataSource;
    qryItemVendaID_VENDA: TIntegerField;
    qryItemVendaID_PRODUTO: TIntegerField;
    qryItemVendaDESC_PRODUTO: TWideStringField;
    qryItemVendaVLR_UNITARIO: TBCDField;
    qryItemVendaQTD_VENDIDA: TBCDField;
    qryItemVendaVLR_TOTAL: TBCDField;
    qryPesquisaIdVenda: TFDAutoIncField;
    qryPesquisaIdCliente: TIntegerField;
    qryPesquisaNome: TWideStringField;
    qryPesquisaDt_Venda: TDateField;
    qryPesquisaVlr_Venda: TBCDField;
    qryVendaHR_VENDA: TWideStringField;
    qryPesquisaHr_venda: TWideStringField;
    qryRelacao: TFDQuery;
    dsRelacao: TDataSource;
    qryRelacaoCodigo: TFDAutoIncField;
    qryRelacaoNome: TWideStringField;
    qryRelacaoStatus: TWideStringField;
    qryRelVenda: TFDQuery;
    dsRelVenda: TDataSource;
    qryRelVendaID: TFDAutoIncField;
    qryRelVendaDT_VENDA: TDateField;
    qryRelVendaHR_VENDA: TWideStringField;
    qryRelVendaNOME: TWideStringField;
    qryRelItens: TFDQuery;
    dsRelItens: TDataSource;
    qryRelItensID_PRODUTO: TIntegerField;
    qryRelItensDESC_PRODUTO: TWideStringField;
    qryRelItensQTD_VENDIDA: TBCDField;
    qryRelItensVLR_UNITARIO: TBCDField;
    qryRelItensVLR_TOTAL: TBCDField;
    qryRelVendaVLR_TOT_VENDA: TBCDField;
    qryClienteID: TFDAutoIncField;
    qryClienteNOME: TWideStringField;
    qryClienteCIDADE: TWideStringField;
    qryClienteUF: TWideStringField;
    qryClienteSTATUS: TStringField;
    qryFornecedorID: TFDAutoIncField;
    qryFornecedorNOME_FANTASIA: TWideStringField;
    qryFornecedorRAZAO_SOCIAL: TWideStringField;
    qryFornecedorCNPJ: TWideStringField;
    qryFornecedorSTATUS: TStringField;
    qryProdutoID: TFDAutoIncField;
    qryProdutoDESCRICAO: TWideStringField;
    qryProdutoPRC_VENDA: TBCDField;
    qryProdutoID_FORN: TIntegerField;
    qryProdutoSTATUS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTabelas: TdmTabelas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmTabelas.DataModuleCreate(Sender: TObject);
begin
  qryCliente.Connection := TdmPrincipal.GetConnection.Conexao;
end;

end.
