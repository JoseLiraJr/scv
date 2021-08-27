unit uConexaoController;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, FireDAC.DApt;

type
  TConexaoController = class
    localAplicacao : string;
  public
    function createData : Boolean;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

uses
  uDmPrincipal;

{ TConexaoController }

constructor TConexaoController.Create;
begin
  inherited Create;
end;

function TConexaoController.createData : Boolean;
var
  query : TFDQuery;
begin
  Result := False;
  query := TFDQuery.Create(nil);
  try
    try
      query.Connection := TdmPrincipal.GetConnection.Conexao;

      //Criando a tabela cliente
      query.SQL.Clear;
      query.SQL.Add('CREATE TABLE IF NOT EXISTS CLIENTE ( ');
      query.SQL.Add('ID INTEGER PRIMARY KEY AUTOINCREMENT, ');
      query.SQL.Add('NOME STRING(150) NOT NULL, ');
      query.SQL.Add('CIDADE STRING(150), ');
      query.SQL.Add('UF STRING(2), ');
      query.SQL.Add('STATUS CHAR(1) NOT NULL CHECK (STATUS IN (''A'',''I'')) ) ');
      query.ExecSQL;

      //Criando a tabela Fornecedor
      query.SQL.Clear;
      query.SQL.Add('CREATE TABLE IF NOT EXISTS FORNECEDOR ( ');
      query.SQL.Add('ID INTEGER PRIMARY KEY AUTOINCREMENT, ');
      query.SQL.Add('NOME_FANTASIA STRING(150), ');
      query.SQL.Add('RAZAO_SOCIAL STRING(150) NOT NULL, ');
      query.SQL.Add('CNPJ STRING(14) NOT NULL,');
      query.SQL.Add('STATUS CHAR(1) NOT NULL CHECK (STATUS IN (''A'',''I'')) )');
      query.ExecSQL;

      //Criando a Tabela Produto
      query.SQL.Clear;
      query.SQL.Add('CREATE TABLE IF NOT EXISTS PRODUTO ( ');
      query.SQL.Add('ID INTEGER PRIMARY KEY AUTOINCREMENT, ');
      query.SQL.Add('DESCRICAO STRING(150), ');
      query.SQL.Add('PRC_VENDA NUMERIC(10,2) NOT NULL, ');
      query.SQL.Add('ID_FORN INTEGER NOT NULL, ');
      query.SQL.Add('STATUS CHAR(1) NOT NULL CHECK (STATUS IN (''A'',''I'')), ');
      query.SQL.Add('FOREIGN KEY (ID_FORN) REFERENCES FORNECEDOR(ID))');
      query.ExecSQL;

      //Criando a Tabela Venda
      query.SQL.Clear;
      query.SQL.Add('CREATE TABLE IF NOT EXISTS VENDA ( ');
      query.SQL.Add('ID INTEGER PRIMARY KEY AUTOINCREMENT, ');
      query.SQL.Add('ID_CLI INTEGER NOT NULL, ');
      query.SQL.Add('DT_VENDA DATE, ');
      query.SQL.Add('HR_VENDA STRING(8), ');
      query.SQL.Add('VLR_TOT_VENDA NUMERIC(10,2) NOT NULL, ');
      query.SQL.Add('FOREIGN KEY(ID_CLI) REFERENCES CLIENTE(ID) )');
      query.ExecSQL;

      //Criando a Tabela Item da Venda
      query.SQL.Clear;
      query.SQL.Add('CREATE TABLE IF NOT EXISTS VENDA_ITENS ( ');
      query.SQL.Add('ID_VENDA INTEGER NOT NULL, ');
      query.SQL.Add('ID_PRODUTO INTEGER NOT NULL, ');
      query.SQL.Add('DESC_PRODUTO NOME, ');
      query.SQL.Add('VLR_UNITARIO NUMERIC(10,2), ');
      query.SQL.Add('QTD_VENDIDA NUMERIC(10,2) NOT NULL, ');
      query.SQL.Add('VLR_TOTAL NUMERIC(10,2) NOT NULL, ');
      query.SQL.Add('PRIMARY KEY(ID_VENDA, ID_PRODUTO), ');
      query.SQL.Add('FOREIGN KEY(ID_PRODUTO) REFERENCES PRODUTO(ID) )');
      query.ExecSQL;

      Result := True;
    except
      on e : Exception do
       begin
         Result := False;
         raise Exception.Create('Erro ao criar as tabelas do Sistema!' + sLineBreak +
                                'Descrição do Erro: ' + e.Message);
       end;
    end;
  finally
    query.Free;
  end;
end;

destructor TConexaoController.Destroy;
begin
  inherited Destroy;
end;

end.
