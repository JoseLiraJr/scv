unit ItemVenda;

interface

uses
  Data.DB, System.SysUtils, System.Variants;

type
  tpState = (inserindo, editando, outro);

type
  TItemVenda = class
  private
    modo : tpState;
    FVlrTotal: Double;
    FIdProduto: Integer;
    FId: Integer;
    FIdVenda: Integer;
    FQtdVendida: Double;
    FVlrUnitario: Double;
    FDescProduto: String;
    procedure SetId(const Value: Integer);
    procedure SetIdProduto(const Value: Integer);
    procedure SetIdVenda(const Value: Integer);
    procedure SetQtdVendida(const Value: Double);
    procedure SetVlrTotal(const Value: Double);
    procedure SetVlrUnitario(const Value: Double);
    procedure SetDescProduto(const Value: String);
  public
    ListaProduto : array of TItemVenda;
    function Open(dtSource : TDataSource) : Boolean;
    function Cancel(dtSource: TDataSource) : Boolean;
    function GetDadosProduto(dtSource : TDataSource; id : Integer) : Boolean;
    function save(dtSource : TDataSource) : Boolean;
    function insert(dtSource : TDataSource) : Boolean;
    function delete(dtSource : TDataSource; codVenda : Integer) : Boolean;
    function filter(dtSource : TDataSource; codVenda : Integer) : Boolean;
    function edit(dtSource : TDataSource) : Boolean;
    property Id : Integer read FId write SetId;
    property IdVenda : Integer read FIdVenda write SetIdVenda;
    property IdProduto : Integer read FIdProduto write SetIdProduto;
    property DescProduto : String read FDescProduto write SetDescProduto;
    property QtdVendida : Double read FQtdVendida write SetQtdVendida;
    property VlrUnitario : Double read FVlrUnitario write SetVlrUnitario;
    property VlrTotal : Double read FVlrTotal write SetVlrTotal;
  end;

implementation

{ TItemVenda }

function TItemVenda.Cancel(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Cancel;
  except
    Result := False;
  end;
end;

function TItemVenda.delete(dtSource: TDataSource; codVenda : Integer): Boolean;
begin
  Result := True;
  try
    with dtSource.DataSet do
     begin
      First;
      while not(Eof) do
       begin
         if (FieldByName('ID_VENDA').AsInteger = codVenda) then
          Delete
         else
          Next;
       end;
     end;
  except
    Result := False;
  end;
end;

function TItemVenda.edit(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Edit;
  except
    Result := False;
  end;
end;

function TItemVenda.filter(dtSource: TDataSource; codVenda: Integer): Boolean;
begin
  Result := True;
  try
    with dtSource.DataSet do
     begin
       Filtered := False;
       Filter := 'ID_VENDA = ' + IntToStr(codVenda);
       Filtered := True;
     end;
  except
    Result := False;
  end;
end;

function TItemVenda.GetDadosProduto(dtSource: TDataSource; id: Integer): Boolean;
begin
  try
    Result := dtSource.DataSet.Locate('ID', id, []);
  except
    Result := False;
  end;
end;

function TItemVenda.insert(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Insert;
  except
    Result := False;
  end;
end;

function TItemVenda.Open(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    if not(dtSource.DataSet.Active) then
     dtSource.DataSet.Active := True;
    dtSource.DataSet.Open;
  except
    Result := False;
  end;
end;

function TItemVenda.save(dtSource : TDataSource): Boolean;
var
  i : Integer;
begin
  Result := False;
  try
    case dtSource.DataSet.State of
      dsInsert:
         modo := inserindo;
      dsEdit:
         modo := editando;
    else
      modo := outro;
    end;
    for i := Low(ListaProduto) to High(ListaProduto) do
    begin
     with dtSource.DataSet do
     begin
       if not(dtSource.DataSet.State in [dsInsert, dsEdit]) then
         begin
           if (modo = inserindo) then
             dtSource.DataSet.Insert
           else
           if (modo = editando) then
             dtSource.DataSet.Edit;
         end;
       FieldByName('ID_VENDA').AsInteger := IdVenda;
       FieldByName('ID_PRODUTO').AsInteger := ListaProduto[i].IdProduto;
       FieldByName('DESC_PRODUTO').AsString := ListaProduto[i].DescProduto;
       FieldByName('QTD_VENDIDA').AsFloat := ListaProduto[i].QtdVendida;
       FieldByName('VLR_UNITARIO').AsFloat := ListaProduto[i].VlrUnitario;
       FieldByName('VLR_TOTAL').AsFloat := ListaProduto[i].VlrTotal;
       Post;
     end;
    end;
   Result := True;
  except
   on e : Exception do
    begin
      Result := False;
      raise Exception.Create('Erro ao inserir dados ' + e.Message);
    end;
  end;
end;

procedure TItemVenda.SetDescProduto(const Value: String);
begin
  FDescProduto := Value;
end;

procedure TItemVenda.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TItemVenda.SetIdProduto(const Value: Integer);
begin
  FIdProduto := Value;
end;

procedure TItemVenda.SetIdVenda(const Value: Integer);
begin
  FIdVenda := Value;
end;

procedure TItemVenda.SetQtdVendida(const Value: Double);
begin
  FQtdVendida := Value;
end;

procedure TItemVenda.SetVlrTotal(const Value: Double);
begin
  FVlrTotal := Value;
end;

procedure TItemVenda.SetVlrUnitario(const Value: Double);
begin
  FVlrUnitario := Value;
end;

end.
