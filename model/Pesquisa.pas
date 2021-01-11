unit Pesquisa;

interface

uses
  Data.DB, System.SysUtils;

type
  TFiltroPesquisa = record
    IdVenda : Integer;
    NmCliente : string;
    DtVenda : TDate;
  end;

type
  TPesquisa = class
  public
    Filtros : TFiltroPesquisa;
    function Open(dtSources: array of TDataSource) : Boolean;
    function FiltrarDados(dtSource : TDataSource) : Boolean;
  end;

implementation

{ TPesquisa }

function TPesquisa.FiltrarDados(dtSource: TDataSource): Boolean;
begin
  Result := True;
  try
    with dtSource.DataSet do
     begin
       Filtered := False;
       Filter := '';
       if (Filtros.IdVenda > 0) then
         Filter := 'IdVenda = ' + IntToStr(Filtros.IdVenda) + ' and ';
       if (Filtros.NmCliente <> '') then
         Filter := Filter + 'Nome = ' + QuotedStr(Filtros.NmCliente) + ' and ';
       Filter := Filter + 'Dt_Venda = ' + QuotedStr(DateToStr(Filtros.DtVenda));
       Filtered := True;
     end;
  except
    Result := False;
  end;
end;

function TPesquisa.Open(dtSources: array of TDataSource): Boolean;
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

end.
