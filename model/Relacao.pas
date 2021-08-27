unit Relacao;

interface

uses
  Data.DB, FireDAC.Comp.Client, FireDAC.DApt;

type
  TRelacao = class
  public
    function Open(dtSource : TDataSource) : Boolean; overload;
    function Open(query : TFDQuery; sql : string) : Boolean; Overload;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TRelacao }

constructor TRelacao.Create;
begin
  inherited Create;
end;

destructor TRelacao.Destroy;
begin
  inherited Destroy;
end;

function TRelacao.Open(query : TFDQuery; sql: string): Boolean;
begin
  Result := True;
  try
    query.SQL.Clear;
    query.Open(sql);
  except
    Result := False;
  end;
end;

function TRelacao.Open(dtSource: TDataSource): Boolean;
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

end.
