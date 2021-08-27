unit uRelacaoController;

interface

uses
  Data.DB, System.SysUtils, FireDAC.Comp.Client, FireDAC.DApt, Relacao;

type
  TRelacaoController = class
  private
    fRelacao : TRelacao;
  public
    procedure Open(dtSource : TDataSource); overload;
    procedure Open(query : TFDQuery; sql : string); Overload;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

{ TRelacaoController }

constructor TRelacaoController.Create;
begin
  fRelacao := TRelacao.Create;
  inherited Create;
end;

destructor TRelacaoController.Destroy;
begin
  fRelacao.Free;
  inherited Destroy;
end;

procedure TRelacaoController.Open(query : TFDQuery; sql: string);
begin
  if not(fRelacao.Open(query, sql)) then
    raise Exception.Create('Erro ao realizar a pesquisa!');
end;

procedure TRelacaoController.Open(dtSource: TDataSource);
begin
  if not(fRelacao.Open(dtSource)) then
    raise Exception.Create('Erro ao tentar abrir a tabela de clientes!');
end;

end.
