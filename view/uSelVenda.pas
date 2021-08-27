unit uSelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, udmTabelas, uRelacaoController;

type
  TfrmSelVenda = class(TForm)
    pnBottom: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    pnBody: TPanel;
    gbDadosCadastro: TGroupBox;
    dblCliente: TDBLookupComboBox;
    Label1: TLabel;
    btnLimparFiltros: TBitBtn;
    gbPeriodoVenda: TGroupBox;
    edtInicio: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    edtFim: TDateTimePicker;
    cbTodoPeriodo: TCheckBox;
    procedure cbTodoPeriodoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLimparFiltrosClick(Sender: TObject);
  private
    { Private declarations }
    dmTabelas : TdmTabelas;
    relacaoCto : TRelacaoController;
    procedure GetDados;
  public
    { Public declarations }
  end;

var
  frmSelVenda: TfrmSelVenda;

implementation

uses
  uVisualControl, uRelVenda;

{$R *.dfm}

procedure TfrmSelVenda.btnConfirmarClick(Sender: TObject);
var
  frmRelVenda : TfrmRelVenda;
begin
  frmRelVenda := TfrmRelVenda.Create(Self);
  try
    GetDados;
    frmRelVenda.RepVendas.DataSource := dmTabelas.dsRelVenda;
    frmRelVenda.RepVendas.PreviewModal;
  finally
    frmRelVenda.Free;
  end;
end;

procedure TfrmSelVenda.btnLimparFiltrosClick(Sender: TObject);
begin
  dblCliente.KeyValue := -1;
  edtInicio.Date := Date;
  edtFim.Date := Date;
  cbTodoPeriodo.Checked := True;
end;

procedure TfrmSelVenda.cbTodoPeriodoClick(Sender: TObject);
begin
  TVisualControl.EnableControls(gbPeriodoVenda, not(cbTodoPeriodo.Checked));
end;

procedure TfrmSelVenda.FormCreate(Sender: TObject);
begin
  dmTabelas := TdmTabelas.Create(Self);
  relacaoCto := TRelacaoController.Create;
end;

procedure TfrmSelVenda.FormDestroy(Sender: TObject);
begin
  relacaoCto.Free;
  dmTabelas.Free;
end;

procedure TfrmSelVenda.FormShow(Sender: TObject);
begin
  relacaoCto.Open(dmTabelas.dsCliente);
  dblCliente.ListSource := TVisualControl.FilterDataset(dmTabelas.dsCliente, 'STATUS', 'A');
  dblCliente.ListField := 'NOME';
end;

procedure TfrmSelVenda.GetDados;
var
  sql, condicao : String;
begin
  sql := 'SELECT V.ID, V.DT_VENDA, V.HR_VENDA, C.NOME, V.VLR_TOT_VENDA ' +
         'FROM VENDA V ' +
         'LEFT JOIN CLIENTE C ON C.ID = V.ID_CLI ';
  condicao := '';
  if (dblCliente.KeyValue > -1) then
    condicao :=  'WHERE V.ID_CLI = ' + IntToStr(dblCliente.KeyValue);

  if not(cbTodoPeriodo.Checked) then
   begin
    if (condicao <> '') then
      condicao := condicao + ' AND '
    else
      condicao := condicao + 'WHERE ';

    condicao := condicao + 'V.DT_VENDA >= ' + QuotedStr(DateToStr(edtInicio.Date)) + ' AND ' +
                'V.DT_VENDA <= ' + QuotedStr(DateToStr(edtFim.Date));
   end;
  sql := sql + condicao + ' ORDER BY V.DT_VENDA, V.HR_VENDA';
  relacaoCto.Open(dmTabelas.qryRelVenda, sql);
end;

end.
