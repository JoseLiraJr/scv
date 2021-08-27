unit uVendaController;

interface

uses
  System.SysUtils, Data.DB, Venda, FireDAC.Comp.Client, FireDAC.DApt,
  uDmPrincipal;

type
  TVendaController = class
  private
    FVenda: TVenda;
    procedure SetVenda(const Value: TVenda);
    procedure SetVlrsDataset(dtSource : TDataSource);
    procedure SetVlrsObjeto(dtSource : TDataSource);
  public
    procedure Open(dtSources : array of TDataSource);
    procedure Cancel(dtSource : TDataSource);
    procedure ValidaPost(codCliente : Integer; vlrVenda : Double);
    function Save(dtSource : TDataSource) : Integer;
    procedure Insert(dtSource : TDataSource);
    function Delete(dtSource : TDataSource; codVenda : Integer) : Boolean;
    procedure locate(dtSource : TDataSource; id : Integer);
    procedure Edit(dtSource : TDataSource);
    property Venda : TVenda read FVenda write SetVenda;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TVendaController }

procedure TVendaController.Cancel(dtSource: TDataSource);
begin
  if not(venda.Cancel(dtSource)) then
    raise Exception.Create('Erro ao tentar cancelar a operação!');
end;

constructor TVendaController.Create;
begin
  Venda := TVenda.Create;
  Inherited Create;
end;

function TVendaController.Delete(dtSource: TDataSource; codVenda : Integer): Boolean;
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  Result:= Venda.Delete(dtSource, codVenda);
  if not(Result) then
   raise Exception.Create('Erro ao tentar excluir o registro');
end;

destructor TVendaController.Destroy;
begin
  Venda.Free;
  inherited Destroy;
end;

procedure TVendaController.Edit(dtSource: TDataSource);
begin
  if (dtSource.DataSet.RecordCount <= 0) then
    raise Exception.Create('A tabela está vazia!');

  if not(Venda.Edit(dtSource)) then
   raise Exception.Create('Erro ao tentar colocar a tabela de venda em modo de edição!');
end;

procedure TVendaController.Insert(dtSource: TDataSource);
begin
   if not(Venda.insert(dtSource)) then
    raise Exception.Create('Erro ao tentar colocar a tabela de venda em modo de inserção!');
end;

procedure TVendaController.locate(dtSource: TDataSource; id: Integer);
begin
  if not(Venda.locate(dtSource, id)) then
    raise Exception.Create('Erro ao tentar localizar uma venda');

  SetVlrsObjeto(dtSource);
end;

procedure TVendaController.Open(dtSources: array of TDataSource);
var
  ds : TDataSource;
begin
  if not(Venda.Open(dtSources)) then
    raise Exception.Create('Erro ao tentar abrir as tabelas do Sistema!');

  for ds in dtSources do
  begin
    if (ds.Name = 'dsCliente') then
      begin
        if (ds.DataSet.IsEmpty) then
          raise Exception.Create('Nenhum Cliente cadastrado no sistema!');
      end;
    if (ds.Name = 'dsProduto') then
      begin
        if (ds.DataSet.IsEmpty) then
          raise Exception.Create('Nenhum Produto cadastrado no sistema!');
      end;
  end;
end;

function TVendaController.Save(dtSource : TDataSource): Integer;
begin
  SetVlrsDataset(dtSource);
  Result := Venda.Save(dtSource);
end;

procedure TVendaController.SetVenda(const Value: TVenda);
begin
  FVenda := Value;
end;

procedure TVendaController.SetVlrsDataset(dtSource: TDataSource);
begin
  with dtSource.DataSet, Venda do
   begin
     FieldByName('ID_CLI').AsInteger := IdCliente;
     FieldByName('DT_VENDA').AsDateTime := DtVenda;
     FieldByName('VLR_TOT_VENDA').AsFloat := VlrTotVenda;
     FieldByName('HR_VENDA').AsString := HrVenda;
   end;
end;

procedure TVendaController.SetVlrsObjeto(dtSource: TDataSource);
begin
  with dtSource.DataSet, Venda do
   begin
     Id := FieldByName('ID').AsInteger;
     IdCliente := FieldByName('ID_CLI').AsInteger;
     DtVenda := FieldByName('DT_VENDA').AsDateTime;
     VlrTotVenda := FieldByName('VLR_TOT_VENDA').AsFloat;
     HrVenda := FieldByName('HR_VENDA').AsString;
   end;
end;

procedure TVendaController.ValidaPost(codCliente: Integer; vlrVenda: Double);
begin
  if (codCliente < 1) then
    raise Exception.Create('Informe um cliente antes de gravar a venda!');

  if (vlrVenda <= 0) then
    raise Exception.Create('Uma venda deve possuir um valor!');
end;

end.
