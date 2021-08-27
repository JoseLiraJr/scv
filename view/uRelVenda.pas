unit uRelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, uDmTabelas;

type
  TfrmRelVenda = class(TForm)
    RepVendas: TRLReport;
    RLBand1: TRLBand;
    lbTitulo: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand5: TRLBand;
    RLDBResult3: TRLDBResult;
    RLLabel8: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    rldbID: TRLDBText;
    RLLabel3: TRLLabel;
    rldbData: TRLDBText;
    rldbHora: TRLDBText;
    rdldbCliente: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand6: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand7: TRLBand;
    RLLabel11: TRLLabel;
    lbTotalVenda: TRLLabel;
    procedure RepVendasBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dtmTabelas : TdmTabelas;
  public
    { Public declarations }
  end;

var
  frmRelVenda: TfrmRelVenda;

implementation

{$R *.dfm}

procedure TfrmRelVenda.FormCreate(Sender: TObject);
begin
  dtmTabelas := TdmTabelas.Create(Self);
end;

procedure TfrmRelVenda.FormDestroy(Sender: TObject);
begin
  dtmTabelas.Free;
end;

procedure TfrmRelVenda.RepVendasBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;
begin
  for i := 0 to RLBand3.ControlCount - 1 do
   begin
     if RLBand3.Controls[i] is TRLDBText then
      (RLBand3.Controls[i] as TRLDBText).DataSource := RepVendas.DataSource;
   end;
end;

procedure TfrmRelVenda.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
const
  sql = 'SELECT I.ID_PRODUTO, I.DESC_PRODUTO, I.QTD_VENDIDA, I.VLR_UNITARIO, I.VLR_TOTAL ' +
        'FROM VENDA_ITENS I ' +
        'WHERE I.ID_VENDA = %d';
var
  i : Integer;
begin
  dtmTabelas.qryRelItens.SQL.Clear;
  dtmTabelas.qryRelItens.Open(Format(sql, [RepVendas.DataSource.DataSet.FieldByName('ID').AsInteger]));
  RLSubDetail1.DataSource := dtmTabelas.dsRelItens;
  for i := 0 to RLBand6.ControlCount - 1 do
   begin
     if RLBand6.Controls[i] is TRLDBText then
      (RLBand6.Controls[i] as TRLDBText).DataSource := dtmTabelas.dsRelItens;
   end;
  lbTotalVenda.Caption := FormatCurr(',0.00', RepVendas.DataSource.DataSet.FieldByName('VLR_TOT_VENDA').AsFloat);
end;

end.
