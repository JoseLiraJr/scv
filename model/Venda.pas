unit Venda;

interface

uses
  System.SysUtils, Data.DB;

type
  TVenda = class
  private
    FDtVenda: TDate;
    FId: integer;
    FVlrTotVenda: Double;
    FIdCliente: Integer;
    FHrVenda: string;
    procedure SetDtVenda(const Value: TDate);
    procedure SetId(const Value: integer);
    procedure SetIdCliente(const Value: Integer);
    procedure SetVlrTotVenda(const Value: Double);
    procedure SetHrVenda(const Value: string);
  public
    function Open(dtSources: array of TDataSource): Boolean;
    function Cancel(dtSource: TDataSource) : Boolean;
    function save(dtSource : TDataSource) : Integer;
    function insert(dtSource : TDataSource) : Boolean;
    function delete(dtSource : TDataSource; codVenda : Integer) : Boolean;
    function locate(dtSource : TDataSource; id : Integer) : Boolean;
    function edit(dtSource : TDataSource) : Boolean;
    property Id : Integer read FId write SetId;
    property DtVenda : TDate read FDtVenda write SetDtVenda;
    property IdCliente : Integer read FIdCliente write SetIdCliente;
    property VlrTotVenda : Double read FVlrTotVenda write SetVlrTotVenda;
    property HrVenda : string read FHrVenda write SetHrVenda;
  end;

implementation

{ TVenda }

function TVenda.Cancel(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Cancel;
  except
    Result := False;
  end;
end;

function TVenda.delete(dtSource: TDataSource; codVenda : Integer): Boolean;
begin
  Result := True;
  try
    if (dtSource.DataSet.Locate('ID', codVenda, [])) then
      dtSource.DataSet.Delete
    else
      Result := False;
  except
    Result := False;
  end;
end;

function TVenda.edit(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Edit;
  except
    Result := False;
  end;
end;

function TVenda.insert(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Insert;
  except
    Result := False;
  end;
end;

function TVenda.locate(dtSource: TDataSource; id: Integer): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Locate('ID', id, []);
  except
    Result := False;
  end;
end;

function TVenda.Open(dtSources: array of TDataSource): Boolean;
var
  ds : TDataSource;
begin
  Result := True;
  try
    for ds in dtSources do
    begin
      if not(ds.DataSet.Active) then
        ds.DataSet.Active := True;
      ds.DataSet.Open;
    end;
  except
    Result := False;
  end;
end;

function TVenda.save(dtSource : TDataSource): Integer;
begin
  try
    dtSource.DataSet.Post;
    Result := dtSource.DataSet.FieldByName('ID').AsInteger;
  except
    Result := 0;
  end;
end;

procedure TVenda.SetDtVenda(const Value: TDate);
begin
  FDtVenda := Value;
end;

procedure TVenda.SetHrVenda(const Value: string);
begin
  FHrVenda := Value;
end;

procedure TVenda.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TVenda.SetIdCliente(const Value: Integer);
begin
  FIdCliente := Value;
end;

procedure TVenda.SetVlrTotVenda(const Value: Double);
begin
  FVlrTotVenda := Value;
end;

end.
