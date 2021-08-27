unit uSelecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, uDmTabelas, Vcl.DBCtrls, uRelacaoController;

type
  TipoRelatorio = (trCliente, trFornecedor, trProduto);

  TfrmSelecao = class(TForm)
    pnBody: TPanel;
    pnBottom: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    gbDadosCadastro: TGroupBox;
    dblSelecao: TDBLookupComboBox;
    cbExibeInativos: TCheckBox;
    btnLimparFiltros: TBitBtn;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbExibeInativosClick(Sender: TObject);
    procedure btnLimparFiltrosClick(Sender: TObject);
  private
    { Private declarations }
    dmTabelas : TdmTabelas;
    relacaoCto : TRelacaoController;
    procedure GetDados;
  public
    { Public declarations }
    tipo : TipoRelatorio;
  end;

const
  SQL = 'SElECT ID AS Codigo, %S AS Nome, ' +
        'CASE STATUS ' +
        ' WHEN ''A'' THEN ''Ativo'' ' +
        ' WHEN ''I'' THEN ''Inativo'' ' +
        'ELSE '' '' ' +
        'END AS Status FROM %S ' + '%S';

implementation

uses
  uVisualControl, uRelacao;

{$R *.dfm}

procedure TfrmSelecao.btnConfirmarClick(Sender: TObject);
var
  frmRelacao: TfrmRelacao;
begin
  frmRelacao := TfrmRelacao.Create(Self);
  try
    GetDados;
    frmRelacao.RepRelacao.DataSource := dmTabelas.dsRelacao;
    case tipo of
      trCliente:
        begin
          frmRelacao.dadosRel.tituloRel := 'Relação de Clientes';
          frmRelacao.dadosRel.tituloPart := 'Nome do Cliente';
        end;
      trFornecedor:
        begin
          frmRelacao.dadosRel.tituloRel := 'Relação de Fornecedores';
          frmRelacao.dadosRel.tituloPart := 'Razaão Social do Fornecedor';
        end;
      trProduto:
        begin
          frmRelacao.dadosRel.tituloRel := 'Relação de Produtos';
          frmRelacao.dadosRel.tituloPart := 'Descrição do Produto';
        end;
    end;
    frmRelacao.RepRelacao.PreviewModal;

  finally
    frmRelacao.Free;
  end;
end;

procedure TfrmSelecao.btnLimparFiltrosClick(Sender: TObject);
begin
  dblSelecao.KeyValue := -1;
  cbExibeInativos.Checked := False;
end;

procedure TfrmSelecao.cbExibeInativosClick(Sender: TObject);
begin
  case tipo of
    trCliente:
      dmTabelas.dsCliente.DataSet.Filtered := TVisualControl.ifthen<Boolean>(cbExibeInativos.Checked, False, True);
    trFornecedor:
      dmTabelas.dsFornecedor.DataSet.Filtered := TVisualControl.ifthen<Boolean>(cbExibeInativos.Checked, False, True);
    trProduto:
      dmTabelas.dsProduto.DataSet.Filtered := TVisualControl.ifthen<Boolean>(cbExibeInativos.Checked, False, True);
  end;
  dblSelecao.KeyValue := -1;
end;

procedure TfrmSelecao.FormCreate(Sender: TObject);
begin
  dmTabelas := TdmTabelas.Create(Self);
  relacaoCto := TRelacaoController.Create;
end;

procedure TfrmSelecao.FormDestroy(Sender: TObject);
begin
  relacaoCto.Free;
  dmTabelas.Free;
end;

procedure TfrmSelecao.FormShow(Sender: TObject);
begin
  case tipo of
    trCliente:
      begin
        Caption := 'Relatório de Clientes';
        relacaoCto.Open(dmTabelas.dsCliente);
        gbDadosCadastro.Caption := 'Dados da Seleção de Clientes.:';
        dblSelecao.ListSource := TVisualControl.FilterDataset(dmTabelas.dsCliente, 'STATUS', 'A');
        dblSelecao.ListField := 'NOME';
      end;
    trFornecedor:
      begin
        Caption := 'Relatório de Fornecedores';
        relacaoCto.Open(dmTabelas.dsFornecedor);
        gbDadosCadastro.Caption := 'Dados da Seleção de Fornecedores.:';
        dblSelecao.ListSource := TVisualControl.FilterDataset(dmTabelas.dsFornecedor, 'STATUS', 'A');
        dblSelecao.ListField := 'RAZAO_SOCIAL';
      end;
    trProduto:
      begin
        Caption := 'Relatório de Produtos';
        relacaoCto.Open(dmTabelas.dsProduto);
        gbDadosCadastro.Caption := 'Dados da Seleção de Produtos.:';
        dblSelecao.ListSource := TVisualControl.FilterDataset(dmTabelas.dsProduto, 'STATUS', 'A');;
        dblSelecao.ListField := 'DESCRICAO';
      end;
  end;
end;

procedure TfrmSelecao.GetDados;
var
  nome, tabela, condicao : string;
begin
  case tipo of
    trCliente:
      begin
       nome := 'NOME';
       tabela := 'CLIENTE';
      end;
    trFornecedor:
      begin
       nome := 'RAZAO_SOCIAL';
       tabela := 'FORNECEDOR';
      end;
    trProduto:
      begin
       nome := 'DESCRICAO';
       tabela := 'PRODUTO';
      end;
  end;

  if (dblSelecao.KeyValue > -1) then
   condicao := 'WHERE ID = ' + IntToStr(dblSelecao.KeyValue)
  else
  if not(cbExibeInativos.Checked) then
   condicao := 'WHERE STATUS = ''A'' '
  else
   condicao := '';

  relacaoCto.Open(dmTabelas.qryRelacao, Format(SQL, [nome, tabela, condicao]));
end;

end.
