unit uFornecedorController;

interface

uses
  System.SysUtils, Data.DB, uFornecedor, uDmPrincipal, FireDAC.Comp.Client,
  FireDAC.DApt;

type
  TFornecedorController = class
  private
    fornecedor : TFornecedor;
    function GetFornecedor(cnpj : string) : Integer;
  public
    function Save(dtSource : TDataSource) : Integer;
    procedure Open(dtSource : TDataSource);
    procedure Insert(dtSource : TDataSource);
    procedure Edit(dtSource : TDataSource);
    function Delete(dtSource: TDataSource): Boolean;
    procedure Filter(dtSource : TDataSource; tpPesquisa : Integer; valor : string); overload;
    procedure Cancel(dtSource : TDataSource);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TFornecedorController }

procedure TFornecedorController.Cancel(dtSource: TDataSource);
begin
  if not(fornecedor.Cancel(dtSource)) then
    raise Exception.Create('Erro ao tentar cancelar a operação!');
end;

constructor TFornecedorController.Create;
begin
  fornecedor := TFornecedor.Create;
  inherited Create;
end;

function TFornecedorController.Delete(dtSource: TDataSource): Boolean;
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  Result:= fornecedor.Delete(dtSource);
  if not(Result) then
   raise Exception.Create('Erro ao tentar excluir o registro');
end;

destructor TFornecedorController.Destroy;
begin
  fornecedor.Free;
  inherited Destroy;
end;

procedure TFornecedorController.Edit(dtSource: TDataSource);
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  if not(fornecedor.Edit(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de cadastro de fornecedores em modo de edição!');
end;

procedure TFornecedorController.Filter(dtSource: TDataSource;
  tpPesquisa: Integer; valor: string);
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

    if not(fornecedor.Filter(dtSource, vlrInt)) then
      raise Exception.Create('Erro ao ralizar a pesquisa');
   end
  else
  if (tpPesquisa = 1) then
   begin
     if not(fornecedor.Filter(dtSource, valor)) then
       raise Exception.Create('Erro ao ralizar a pesquisa');
   end;
end;

function TFornecedorController.GetFornecedor(cnpj: string): Integer;
var
  query : TFDQuery;
begin
  query := TFDQuery.Create(nil);
  try
    query.Connection := TdmPrincipal.GetConnection.Conexao;

    query.Open('SELECT * FROM FORNECEDOR WHERE CNPJ = ' + QuotedStr(cnpj));
    Result := query.RecordCount;
  finally
    query.Free;
  end;
end;

procedure TFornecedorController.Insert(dtSource: TDataSource);
begin
  if not(fornecedor.Insert(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de cadastro de fornecedores em modo de inserção!');
end;

procedure TFornecedorController.Open(dtSource: TDataSource);
begin
  if not(fornecedor.Open(dtSource)) then
   raise Exception.Create('Erro ao abrir a tabela de cadastro de fornecedores');
end;

function TFornecedorController.Save(dtSource: TDataSource): Integer;
begin
  if not(Assigned(dtSource)) then
    raise Exception.Create('A tabela não está criada em memória!');

  if (dtSource.DataSet.FieldByName('RAZAO_SOCIAL').AsString = '') then
    raise Exception.Create('Informe uma razão social para o fornecedor, antes de continuar!');

  if (dtSource.DataSet.FieldByName('CNPJ').AsString = '') then
    raise Exception.Create('Informe o CNPJ do fornecedor, antes de continuar!');

  if (dtSource.DataSet.FieldByName('STATUS').AsString = '') then
    raise Exception.Create('Informe o status do fornecedor, antes de continuar!');

  if (dtSource.DataSet.State = dsInsert) and (GetFornecedor(dtSource.DataSet.FieldByName('CNPJ').AsString) > 0) then
    raise Exception.Create('Já existe um fornecedor cadastrado com o mesmo CNPJ!');

  Result := fornecedor.Save(dtSource);
  if (Result <= 0) then
    raise Exception.Create('Erro ao tentar salvar um registro na tabela de cadastro de fornecedores');
end;

end.
