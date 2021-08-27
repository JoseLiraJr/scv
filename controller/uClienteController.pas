unit uClienteController;

interface

uses
  System.SysUtils, Data.DB, FireDAC.Comp.Client, FireDAC.DApt,
  uDmPrincipal, uCliente;

type
  TClienteController = class
  private
    cliente : TCliente;
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

{ TClienteController }

procedure TClienteController.Cancel(dtSource: TDataSource);
begin
  if not(cliente.Cancel(dtSource)) then
    raise Exception.Create('Erro ao tentar cancelar a operação!');
end;

constructor TClienteController.Create;
begin
  cliente := Tcliente.Create;
  inherited Create;
end;

function TClienteController.Delete(dtSource: TDataSource): Boolean;
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  Result:= cliente.Delete(dtSource);
  if not(Result) then
   raise Exception.Create('Erro ao tentar excluir o registro');
end;

destructor TClienteController.Destroy;
begin
  cliente.Free;
  inherited Destroy;
end;

procedure TClienteController.Edit(dtSource: TDataSource);
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  if not(cliente.Edit(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de cadastro de clientes em modo de edição!');
end;

procedure TClienteController.Filter(dtSource: TDataSource; tpPesquisa: Integer;
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

    if not(cliente.Filter(dtSource, vlrInt)) then
      raise Exception.Create('Erro ao ralizar a pesquisa');
   end
  else
  if (tpPesquisa = 1) then
   begin
     if not(cliente.Filter(dtSource, valor)) then
       raise Exception.Create('Erro ao ralizar a pesquisa');
   end;
end;

procedure TClienteController.Insert(dtSource: TDataSource);
begin
  if not(cliente.Insert(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de cadastro de clientes em modo de inserção!');
end;

procedure TClienteController.Open(dtSource: TDataSource);
begin
  if not(cliente.Open(dtSource)) then
   raise Exception.Create('Erro ao abrir a tabela de cadastro de clientes!');
end;

function TClienteController.Save(dtSource: TDataSource): Integer;
begin
  //Validações do Objeto na camada de controle
  if not(Assigned(dtSource)) then
    raise Exception.Create('A tabela não está criada em memória!');

  if (dtSource.DataSet.FieldByName('NOME').AsString = '') then
    raise Exception.Create('Informe um nome para o cliente, antes de continuar!');

  if (dtSource.DataSet.FieldByName('STATUS').AsString = '') then
    raise Exception.Create('Informe o status do cliente, antes de continuar!');

  Result := cliente.Save(dtSource);
  if (Result <= 0) then
   raise Exception.Create('Erro ao tentar salvar um registro na tabela de cadastro de clientes');
end;

end.
