unit uProdutoController;

interface

uses
  System.SysUtils, Data.DB, FireDAC.Comp.Client, FireDAC.DApt,
  uDmPrincipal, uProduto;

type
  TProdutoController = class
  private
    produto : TProduto;
  public
    function Save(dtSource : TDataSource) : Integer;
    procedure Open(dtSources : array of TDataSource);
    procedure Insert(dtSource : TDataSource);
    procedure Edit(dtSource : TDataSource);
    function Delete(dtSource: TDataSource): Boolean;
    procedure Filter(dtSource : TDataSource; tpPesquisa : Integer; valor : string); overload;
    procedure Cancel(dtSource : TDataSource);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TProdutoController }

procedure TProdutoController.Cancel(dtSource: TDataSource);
begin
  if not(produto.Cancel(dtSource)) then
    raise Exception.Create('Erro ao tentar cancelar a operação!');
end;

constructor TProdutoController.Create;
begin
  produto := TProduto.Create;
  inherited Create;
end;

function TProdutoController.Delete(dtSource: TDataSource): Boolean;
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  Result:= produto.Delete(dtSource);
  if not(Result) then
   raise Exception.Create('Erro ao tentar excluir o registro');
end;

destructor TProdutoController.Destroy;
begin
  produto.Free;
  inherited Destroy;
end;

procedure TProdutoController.Edit(dtSource: TDataSource);
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  if not(produto.Edit(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de cadastro de produtos em modo de edição!');
end;

procedure TProdutoController.Filter(dtSource: TDataSource; tpPesquisa: Integer;
  valor: string);
var
  vlrInt : Integer;
begin
  if (valor = '') then
   raise Exception.Create('Valor da pesquisa está vazio!');

  if (tpPesquisa = 0) then
   begin
    try
      vlrInt := StrToInt(valor);
    except
      vlrInt := 0;
    end;

    if not(produto.Filter(dtSource, vlrInt)) then
      raise Exception.Create('Erro ao ralizar a pesquisa');
   end
  else
  if (tpPesquisa = 1) then
   begin
     if not(produto.Filter(dtSource, valor)) then
       raise Exception.Create('Erro ao ralizar a pesquisa');
   end;
end;

procedure TProdutoController.Insert(dtSource: TDataSource);
begin
  if not(produto.Insert(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de cadastro de produtos em modo de inserção!');
end;

procedure TProdutoController.Open(dtSources: array of TDataSource);
var
  ds : TDataSource;
begin
  if not(produto.Open(dtSources)) then
    raise Exception.Create('Erro ao abrir as tabelas do cadastro de produtos!');

  for ds in dtSources do
   begin
     if (ds.Name = 'dsFornecedor') then
      begin
        if (ds.DataSet.IsEmpty) then
          raise Exception.Create('Não existe fornecedores cadastrados no sistema,' + sLineBreak +
                                 'cadastre um fornecedor antes de cadastrar o produto!');
      end;
   end;
end;

function TProdutoController.Save(dtSource: TDataSource): Integer;
begin
  //Validações do Objeto na camada de controle
  if not(Assigned(dtSource)) then
    raise Exception.Create('A tabela não está criada em memória!');

  if (dtSource.DataSet.FieldByName('DESCRICAO').AsString = '') then
    raise Exception.Create('Informe uma descricao para o produto, antes de continuar!');

  if (dtSource.DataSet.FieldByName('PRC_VENDA').AsFloat <= 0) then
    raise Exception.Create('Informe um preço maior que zero para o produto!');

  if (dtSource.DataSet.FieldByName('STATUS').AsString = '') then
    raise Exception.Create('Informe o status do produto, antes de continuar!');

  if (dtSource.DataSet.FieldByName('ID_FORN').AsInteger <= 0) then
    raise Exception.Create('Selecione um fornecedor para o produto!');

  Result := produto.Save(dtSource);
  if (Result <= 0) then
   raise Exception.Create('Erro ao tentar salvar um registro na tabela de cadastro de produtos');
end;

end.
