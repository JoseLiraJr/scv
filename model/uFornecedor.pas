unit uFornecedor;

interface

uses
  Data.DB, System.SysUtils,  System.Variants;

type
  TFornecedor = class
  public
    function Save(dtSource : TDataSource) : Integer;
    function Open(dtSource : TDataSource) : Boolean;
    function Insert(dtSource : TDataSource) : Boolean;
    function Edit(dtSource : TDataSource) : Boolean;
    function Delete(dtSource : TDataSource) : Boolean;
    function Cancel(dtSource: TDataSource) : Boolean;
    function Filter(dtSource: TDataSource; vlrPesquisa: Integer) : Boolean; overload;
    function Filter(dtSource: TDataSource; vlrPesquisa: string) : Boolean; overload;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TFornecedor }

function TFornecedor.Cancel(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Cancel;
  except
    Result := False;
  end;
end;

constructor TFornecedor.Create;
begin
  inherited Create;
end;

function TFornecedor.Delete(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Delete;
  except
    Result := False;
  end;
end;

destructor TFornecedor.Destroy;
begin
  inherited Destroy;
end;

function TFornecedor.Edit(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Edit;
  except
    Result := False;
  end;
end;

function TFornecedor.Filter(dtSource: TDataSource;
  vlrPesquisa: Integer): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Filtered := False;
    dtSource.DataSet.Filter := 'ID = ' + IntToStr(vlrPesquisa);
    dtSource.DataSet.Filtered := True;
  except
    Result := False;
  end;
end;

function TFornecedor.Filter(dtSource: TDataSource;
  vlrPesquisa: string): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Filtered := False;
    dtSource.DataSet.Filter := 'RAZAO_SOCIAL LIKE ' + QuotedStr('%' + vlrPesquisa + '%');
    dtSource.DataSet.Filtered := True;
  except
    Result := False;
  end;
end;

function TFornecedor.Insert(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Insert;
  except
    Result := False;
  end;
end;

function TFornecedor.Open(dtSource: TDataSource): Boolean;
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

function TFornecedor.Save(dtSource: TDataSource): Integer;
begin
  try
    dtSource.DataSet.Post;
    Result := dtSource.DataSet.FieldByName('ID').AsInteger;
  except
    Result := 0;
  end;
end;

end.
