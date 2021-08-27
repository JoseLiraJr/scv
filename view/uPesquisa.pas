unit uPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, uDmTabelas, uPesquisaController;

type
  TfrmPesquisa = class(TForm)
    pnFiltros: TPanel;
    pnDados: TPanel;
    grdVendas: TDBGrid;
    gbFiltros: TGroupBox;
    Label1: TLabel;
    dblCliente: TDBLookupComboBox;
    btnLocalizar: TSpeedButton;
    btnLimparFiltros: TSpeedButton;
    Label4: TLabel;
    edtNumVenda: TEdit;
    Label5: TLabel;
    edtDtVenda: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnLimparFiltrosClick(Sender: TObject);
    procedure grdVendasDblClick(Sender: TObject);
    procedure edtNumVendaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    pesquisaCto : TPesquisaController;
    dtmTabelas : TdmTabelas;
  public
    { Public declarations }
    bSomentePesquisa : Boolean;
    codVenda : Integer;
  end;

implementation

uses
  uVisualControl;

{$R *.dfm}

procedure TfrmPesquisa.btnLimparFiltrosClick(Sender: TObject);
begin
  TVisualControl.StartValues(gbFiltros);
end;

procedure TfrmPesquisa.btnLocalizarClick(Sender: TObject);
begin
  if (dblcliente.KeyValue <> null) then
    pesquisaCto.Pesquisa.Filtros.NmCliente := dblCliente.Text
  else
    pesquisaCto.Pesquisa.Filtros.NmCliente := '';
  if (edtNumVenda.Text <> '') then
    pesquisaCto.Pesquisa.Filtros.IdVenda := StrToInt(edtNumVenda.Text)
  else
    pesquisaCto.Pesquisa.Filtros.IdVenda := 0;
  pesquisaCto.Pesquisa.Filtros.DtVenda:= edtDtVenda.Date;
  pesquisaCto.FiltraDados(dtmTabelas.dsPesquisa);
end;

procedure TfrmPesquisa.edtNumVendaKeyPress(Sender: TObject; var Key: Char);
begin
  if not(TVisualControl.CharNumbers(Key)) then
    Key := #0;
end;

procedure TfrmPesquisa.FormCreate(Sender: TObject);
begin
  bSomentePesquisa := True;
  codVenda := 0;
  dtmTabelas := TdmTabelas.Create(Self);
  pesquisaCto := TPesquisaController.Create;
end;

procedure TfrmPesquisa.FormDestroy(Sender: TObject);
begin
  pesquisaCto.Free;
  dtmTabelas.Free;
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
begin
  pesquisaCto.Open([dtmTabelas.dsCliente, dtmTabelas.dsPesquisa]);
  grdVendas.DataSource := dtmTabelas.dsPesquisa;
  TVisualControl.StartValues(gbFiltros);
end;

procedure TfrmPesquisa.grdVendasDblClick(Sender: TObject);
begin
  if not(bSomentePesquisa) then
   begin
    codVenda := dtmTabelas.dsPesquisa.DataSet.FieldByName('IdVenda').AsInteger;
    ModalResult := mrOk;
   end;
end;

end.
