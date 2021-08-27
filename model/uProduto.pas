unit uProduto;

interface

uses
  Data.DB, System.SysUtils,  System.Variants;

type
  TProduto = Class
  public
    function Save(dtSource : TDataSource) : Integer;
    function Open(dtSources : array of TDataSource) : Boolean;
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

{ TProduto }

function TProduto.Cancel(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Cancel;
  except
    Result := False;
  end;
end;

constructor TProduto.Create;
begin
  inherited Create;
end;

function TProduto.Delete(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Delete;
  except
    Result := False;
  end;
end;

destructor TProduto.Destroy;
begin
  inherited Destroy;
end;

function TProduto.Edit(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Edit;
  except
    Result := False;
  end;
end;

function TProduto.Filter(dtSource: TDataSource; vlrPesquisa: Integer): Boolean;
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

function TProduto.Filter(dtSource: TDataSource; vlrPesquisa: string): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Filtered := False;
    dtSource.DataSet.Filter := 'DESCRICAO LIKE ' + QuotedStr('%' + vlrPesquisa + '%');
    dtSource.DataSet.Filtered := True;
  except
    Result := False;
  end;
end;

function TProduto.Insert(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    dtSource.DataSet.Insert;
  except
    Result := False;
  end;
end;



function TProduto.Open(dtSources: array of TDataSource): Boolean;
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

function TProduto.Save(dtSource: TDataSource): Integer;
begin
  try
    dtSource.DataSet.Post;
    Result := dtSource.DataSet.FieldByName('ID').AsInteger;
  except
    Result := 0;
  end;
end;

end.
