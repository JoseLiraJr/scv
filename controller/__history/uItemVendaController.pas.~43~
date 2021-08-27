unit uItemVendaController;

interface

uses
  System.SysUtils, Data.DB, ItemVenda, FireDAC.Comp.Client, FireDAC.DApt,
  uDmPrincipal;

type
  TItemVendaController = class
  private
    FItemVenda: TItemVenda;
    procedure SetVenda(const Value: TItemVenda);
    procedure SetVlrsObject(dtSource : TDataSource);
    function getDescProduto(id : integer) : string;
  public
    procedure Open(dtSource : TDataSource);
    function Insert : string;
    function GetProdVenda(codProduto : Integer) : Boolean;
    function removeProdVenda(id : Integer) : Double;
    function GetDadosProduto(dtSource : TDataSource; id : Integer) : Boolean;
    procedure Cancel(dtSource : TDataSource);
    procedure validaInsert(codProd : Integer; qtde : String);
    procedure validaPost;
    function save(dtSource : TDataSource) : Boolean;
    procedure insertMode(dtSource : TDataSource);
    function delete(dtSource : TDataSource; codVenda : Integer) : Boolean;
    function validaEstoque(saldo, qtdVendida : Double) : Boolean;
    procedure filter(dtSource : TDataSource; codVenda : Integer);
    procedure edit(dtSource : TDataSource);
    property ItemVenda : TItemVenda read FItemVenda write SetVenda;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TItemVendaController }

procedure TItemVendaController.Cancel(dtSource: TDataSource);
begin
  if not(ItemVenda.Cancel(dtSource)) then
    raise Exception.Create('Erro ao tentar cancelar a operação!');
end;

constructor TItemVendaController.Create;
begin
  ItemVenda := TItemVenda.Create;
  inherited Create;
end;

function TItemVendaController.delete(dtSource: TDataSource; codVenda : Integer): Boolean;
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  Result:= ItemVenda.Delete(dtSource, codVenda);
  if not(Result) then
   raise Exception.Create('Erro ao tentar excluir o registro');
end;

destructor TItemVendaController.Destroy;
begin
  ItemVenda.Free;
  inherited Destroy;
end;

procedure TItemVendaController.edit(dtSource: TDataSource);
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  if not(ItemVenda.Edit(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de item da venda em modo de edição!');
end;

procedure TItemVendaController.filter(dtSource: TDataSource; codVenda: Integer);
begin
  if not(ItemVenda.Filter(dtSource, codVenda)) then
    raise Exception.Create('Erro ao tentar filtrar dados na tabela de itens da venda');

  SetVlrsObject(dtSource);
end;

function TItemVendaController.GetProdVenda(codProduto: Integer): Boolean;
var
  i : Integer;
begin
  Result := False;
  for i := Low(ItemVenda.ListaProduto) to High(ItemVenda.ListaProduto) do
   begin
     if (ItemVenda.ListaProduto[i].IdProduto = codProduto) then
      begin
        Result := True;
        Break;
      end;
   end;
end;

function TItemVendaController.GetDadosProduto(dtSource: TDataSource;
  id: Integer): Boolean;
begin
  Result := ItemVenda.GetDadosProduto(dtSource, id);
  if not(Result) then
    raise Exception.Create('Erro ao tentar localizar os dados do produto!');
end;

function TItemVendaController.getDescProduto(id: integer): string;
var
  query : TFDQuery;
begin
  query := TFDQuery.Create(nil);
  try
    query.Connection := TdmPrincipal.GetConnection.Conexao;

    query.Open('SELECT DESCRICAO FROM PRODUTO WHERE ID = ' + IntToStr(id));
    Result := query.Fields[0].AsString;
  finally
    query.Free;
  end;
end;

procedure TItemVendaController.InsertMode(dtSource: TDataSource);
begin
  if not(ItemVenda.insert(dtSource)) then
    raise Exception.Create('Erro ao tentar colocar a tabela de item da venda em modo de inserção!');
end;

function TItemVendaController.Insert: string;
begin
  Result := '';
  with ItemVenda do
   begin
    try
     SetLength(ListaProduto, length(ListaProduto) + 1);
     ListaProduto[Length(ListaProduto) - 1] := TItemVenda.Create;
     ListaProduto[Length(ListaProduto) - 1].Id := ItemVenda.Id;
     ListaProduto[Length(ListaProduto) - 1].IdProduto := ItemVenda.IdProduto;
     ListaProduto[Length(ListaProduto) - 1].DescProduto := ItemVenda.DescProduto;
     ListaProduto[Length(ListaProduto) - 1].QtdVendida :=  ItemVenda.QtdVendida;
     ListaProduto[Length(ListaProduto) - 1].VlrUnitario := ItemVenda.VlrUnitario;
     ListaProduto[Length(ListaProduto) - 1].VlrTotal := ItemVenda.VlrTotal;

     Result := IntToStr(ListaProduto[Length(ListaProduto) - 1].Id) + '   -   ' +
               ListaProduto[Length(ListaProduto) - 1].DescProduto + '   -    ' +
               FloatToStr(ListaProduto[Length(ListaProduto) - 1].QtdVendida) + ' * ' +
               FloatToStr(ListaProduto[Length(ListaProduto) - 1].VlrUnitario) + '  =  ' +
               FloatToStr(ListaProduto[Length(ListaProduto) - 1].VlrTotal);
    except
     on e : Exception do
      begin
        Result := '';
        raise Exception.Create('Erro ao inserir um produto' + e.Message);
      end;
    end;
   end;
end;

procedure TItemVendaController.Open(dtSource: TDataSource);
begin
  if not(ItemVenda.Open(dtSource)) then
   raise Exception.Create('Erro ao abrir a tabela de itens da venda!');
end;

function TItemVendaController.removeProdVenda(id: Integer): Double;
var
  i : Integer;
begin
  Result := 0;
  for i := Low(ItemVenda.ListaProduto) to High(ItemVenda.ListaProduto) do
   begin
     if (ItemVenda.ListaProduto[i].Id = id) then
      begin
        Result := ItemVenda.ListaProduto[i].VlrTotal;
        if Assigned(ItemVenda.ListaProduto[i]) then
          FreeAndNil(ItemVenda.ListaProduto[i]);
        ItemVenda.ListaProduto[i] := ItemVenda.ListaProduto[i + 1];
      end;
   end;
  SetLength(ItemVenda.ListaProduto, Length(ItemVenda.ListaProduto) - 1);
end;

function TItemVendaController.save(dtSource : TDataSource): Boolean;
begin
  if not(ItemVenda.save(dtSource)) then
   begin
    Result := False;
    raise Exception.Create('Erro ao tentar inserir dados na tabela de itens da venda!');
   end
  else
    Result := True;
end;

procedure TItemVendaController.SetVenda(const Value: TItemVenda);
begin
  FItemVenda := Value;
end;

procedure TItemVendaController.SetVlrsObject(dtSource: TDataSource);
var
  i : Integer;
begin
  i := 0;
  with ItemVenda do
   begin
     dtSource.DataSet.First;
     while not(dtSource.DataSet.Eof) do
      begin
        SetLength(ListaProduto, dtSource.DataSet.RecordCount);
        ListaProduto[i] := TItemVenda.Create;
        ListaProduto[i].Id := dtSource.DataSet.FieldByName('ID').AsInteger;
        ListaProduto[i].IdProduto := dtSource.DataSet.FieldByName('ID_PRODUTO').AsInteger;
        ListaProduto[i].DescProduto := getDescProduto(dtSource.DataSet.FieldByName('ID_PRODUTO').AsInteger);
        ListaProduto[i].QtdVendida := dtSource.DataSet.FieldByName('QTD_VENDIDA').AsFloat;
        ListaProduto[i].VlrUnitario := dtSource.DataSet.FieldByName('VLR_UNITARIO').AsFloat;;
        ListaProduto[i].VlrTotal := dtSource.DataSet.FieldByName('VLR_TOTAL').AsFloat;
        Inc(i);
        dtSource.DataSet.Next;
      end;
   end;
end;

function TItemVendaController.validaEstoque(saldo, qtdVendida : Double): Boolean;
begin
  if (saldo - qtdVendida) >= 0 then
   Result := True
  else
   Result := False;
end;

procedure TItemVendaController.validaInsert(codProd : Integer;  qtde: String);
begin
  if (codProd < 1) then
   raise Exception.Create('Insira um produto antes de continuar!');
  if (qtde = '') or (qtde = '0') then
   raise Exception.Create('Informe uma quantidade para o produto antes de continuar!');
end;

procedure TItemVendaController.validaPost;
begin
  if (High(ItemVenda.ListaProduto) < 0) then
   raise Exception.Create('Insira um produto antes de continuar!');
end;

end.
