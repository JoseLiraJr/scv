unit uVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, uDmTabelas, uVendaController,
  uItemVendaController;

type
  TfrmVendas = class(TForm)
    stbData: TStatusBar;
    pnAtalhos: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnConfirmar: TBitBtn;
    btnLimpar: TBitBtn;
    btnFechar: TBitBtn;
    Panel1: TPanel;
    pnVenda: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    dblCliente: TDBLookupComboBox;
    edtQtdeProduto: TEdit;
    edtVlrUnit: TEdit;
    edtVlrTotal: TEdit;
    Label7: TLabel;
    dblProduto: TDBLookupComboBox;
    btnExcluirVenda: TBitBtn;
    pnProdutos: TPanel;
    btnAddProduto: TSpeedButton;
    btnDelProduto: TSpeedButton;
    Panel3: TPanel;
    mmoProdutos: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtQtdeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtQtdeProdutoEnter(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnExcluirVendaClick(Sender: TObject);
    procedure btnAddProdutoClick(Sender: TObject);
    procedure btnDelProdutoClick(Sender: TObject);
    procedure dblProdutoClick(Sender: TObject);
  private
    { Private declarations }
    dataVenda : TDate;
    horaVenda : String;
    dtmTabelas : TdmTabelas;
    vendaCto : TVendaController;
    itemVendaCto : TItemVendaController;
    seqProd : Integer;
    procedure setVlrsControls;
    procedure startValues;
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

uses
  uVisualControl, uPesquisa, uExcluirProduto;

{$R *.dfm}

procedure TfrmVendas.btnAddProdutoClick(Sender: TObject);
var
  vlrUnit, qtde, vlrTot : Double;
begin
  if not(dtmTabelas.dsVenda.DataSet.State in [dsInsert, dsEdit]) then
    Exit;

  itemVendaCto.validaInsert(TVisualControl.ifthen<Integer>(dblProduto.KeyValue > -1,
                            dblProduto.KeyValue, 0), edtQtdeProduto.Text);

  if (itemVendaCto.GetProdVenda(dblProduto.KeyValue)) then
   begin
     Application.MessageBox('Produto já lançado nessa Venda!', 'Aviso', MB_OK + MB_ICONINFORMATION);
     Exit;
   end;

  vlrUnit := TVisualControl.setFloat(edtVlrUnit.Text);
  qtde := TVisualControl.setFloat(edtQtdeProduto.text);
  vlrTot := TVisualControl.setFloat(FloatToStr(qtde * vlrUnit));
  Inc(seqProd);
  with itemVendaCto.ItemVenda do
   begin
     Id        := seqProd;
     IdProduto := dblProduto.KeyValue;
     DescProduto := dblProduto.Text;
     QtdVendida :=  qtde;
     VlrUnitario := vlrUnit;
     VlrTotal := vlrTot;
   end;
  mmoProdutos.Lines.Add(itemVendaCto.Insert);
  vendaCto.Venda.VlrTotVenda := vendaCto.Venda.VlrTotVenda + vlrTot;
  edtVlrTotal.Text := FormatFloat(',0.00', vendaCto.Venda.VlrTotVenda);
end;

procedure TfrmVendas.btnAlterarClick(Sender: TObject);
var
  frmPesquisa: TfrmPesquisa;
  id : integer;
begin
  id := 0;
  frmPesquisa := TfrmPesquisa.Create(nil);
  try
    frmPesquisa.bSomentePesquisa := False;
    frmPesquisa.ShowModal;
    if frmPesquisa.ModalResult = mrOk then
      id := frmPesquisa.codVenda;
  finally
    frmPesquisa.Free;
  end;

  if (id > 0) then
   begin
     if not(dtmTabelas.qryVenda.Active) then
       dtmTabelas.qryVenda.Active := True;
     if not(dtmTabelas.qryItemVenda.Active) then
       dtmTabelas.qryItemVenda.Active := True;

     vendaCto.locate(dtmTabelas.dsVenda, id);
     itemVendaCto.filter(dtmTabelas.dsItemVenda, id);
     vendaCto.Edit(dtmTabelas.dsVenda);
     setVlrsControls;
     TVisualControl.EnableControls(pnVenda, True);
   end;
end;

procedure TfrmVendas.btnCancelarClick(Sender: TObject);
begin
  itemVendaCto.Cancel(dtmTabelas.dsItemVenda);
  vendaCto.Cancel(dtmTabelas.dsVenda);
  startValues;
end;

procedure TfrmVendas.btnConfirmarClick(Sender: TObject);
var
  codVenda : Integer;
begin
  vendaCto.ValidaPost(TVisualControl.ifthen<Integer>(dblCliente.KeyValue = null,
                      0, dblCliente.KeyValue), vendaCto.Venda.VlrTotVenda);
  itemVendaCto.validaPost;

  if (dtmTabelas.dsVenda.DataSet.State = dsInsert) then
    itemVendaCto.insertMode(dtmTabelas.dsItemVenda)
  else
  if (dtmTabelas.dsVenda.DataSet.State = dsEdit) then
    itemVendaCto.edit(dtmTabelas.dsItemVenda);

  with vendaCto do
   begin
     venda.IdCliente := dblCliente.KeyValue;
     venda.DtVenda := dataVenda;
     venda.HrVenda := horaVenda;
     codVenda := Save(dtmTabelas.dsVenda);
   end;

  itemVendaCto.ItemVenda.IdVenda := codVenda;
  if (itemVendaCto.save(dtmTabelas.dsItemVenda)) then
   begin
    Application.MessageBox('Venda realizada com sucesso!', 'Sucesso', MB_OK + MB_ICONINFORMATION);
   end;
  startValues;
  stbData.Panels[3].Text := '';
end;

procedure TfrmVendas.btnDelProdutoClick(Sender: TObject);
var
  frmExcluirProduto : TfrmExcluirProduto;
  i : integer;
  vlr : Double;
begin
  vlr := 0;
  frmExcluirProduto := TfrmExcluirProduto.Create(Self);
  try
    frmExcluirProduto.ShowModal;
    if (frmExcluirProduto.edtSeqProd.Text <> '') then
     i := StrToInt(frmExcluirProduto.edtSeqProd.Text)
    else
     i := -1;
    vlr := itemVendaCto.removeProdVenda(i);
    vendaCto.Venda.VlrTotVenda := vendaCto.Venda.VlrTotVenda - vlr;
    edtVlrTotal.Text := FormatFloat(',0.00', vendaCto.Venda.VlrTotVenda);
    mmoProdutos.Lines.Delete(i - 1);
    if (mmoProdutos.Lines.Count = 0) then
      seqProd := 0;
  finally
    frmExcluirProduto.Free;
  end;
end;

procedure TfrmVendas.btnExcluirVendaClick(Sender: TObject);
var
  frmPesquisa: TfrmPesquisa;
  id : integer;
begin
  id := 0;
  frmPesquisa := TfrmPesquisa.Create(Self);
  try
    frmPesquisa.bSomentePesquisa := False;
    frmPesquisa.ShowModal;
    if frmPesquisa.ModalResult = mrOk then
      id := frmPesquisa.codVenda;
  finally
    frmPesquisa.Free;
  end;

  if (id > 0) then
   begin
     if (Application.MessageBox('Deseja realmente excluir a venda selecionada?', 'Excluir Venda',
         MB_YESNO + MB_ICONQUESTION) = mrYes) then
      begin
        if not(dtmTabelas.qryVenda.Active) then
          dtmTabelas.qryVenda.Active := True;
        if not(dtmTabelas.qryItemVenda.Active) then
          dtmTabelas.qryItemVenda.Active := True;
        if (itemVendaCto.delete(dtmTabelas.dsItemVenda, id)) and
           (vendaCto.Delete(dtmTabelas.dsVenda, id)) then
          Application.MessageBox('Venda excluida com sucesso!', 'Sucesso', MB_OK + MB_ICONINFORMATION);
        startValues;
      end;
   end;
end;

procedure TfrmVendas.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVendas.btnLimparClick(Sender: TObject);
begin
  TVisualControl.StartValues(pnVenda);
end;

procedure TfrmVendas.btnNovoClick(Sender: TObject);
begin
  dblCliente.ListSource := TVisualControl.FilterDataset(dtmTabelas.dsCliente, 'STATUS', 'A');
  dblProduto.ListSource := TVisualControl.FilterDataset(dtmTabelas.dsProduto, 'STATUS', 'A');
  vendaCto.Venda.VlrTotVenda := 0;
  vendaCto.Insert(dtmTabelas.dsVenda);
  itemVendaCto.Open(dtmTabelas.dsItemVenda);
  TVisualControl.EnableControls(pnVenda, True);
  itemVendaCto.ItemVenda.ListaProduto := nil;
end;

procedure TfrmVendas.dblProdutoClick(Sender: TObject);
begin
  if itemVendaCto.GetDadosProduto(dtmTabelas.dsProduto, TVisualControl.ifthen<Integer>(dblProduto.KeyValue > -1, dblProduto.KeyValue, -1)) then
    begin
      itemVendaCto.ItemVenda.VlrUnitario := dtmTabelas.dsProduto.DataSet.FieldByName('PRC_VENDA').AsFloat;
      edtVlrUnit.Text := FormatCurr(',0.00', itemVendaCto.ItemVenda.VlrUnitario);
    end;
end;

procedure TfrmVendas.edtQtdeProdutoEnter(Sender: TObject);
begin
  TVisualControl.ClearEdit(edtQtdeProduto);
end;

procedure TfrmVendas.edtQtdeProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(TVisualControl.CharNumbers(Key)) then
    Key := #0;
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dtmTabelas.dsVenda.DataSet.State in [dsInsert, dsEdit]) then
   begin
    Application.MessageBox('Finalize ou cancele a Venda, antes de tentar fechar a tela',
                           'Aviso', MB_OK + MB_ICONEXCLAMATION);
    Action := caNone;
   end
  else
   Action := caFree;
end;

procedure TfrmVendas.FormCreate(Sender: TObject);
begin
  //Setando um componente ao abrir a tela.
  SetFocusedControl(pnAtalhos);
  dataVenda := Date;
  horaVenda := FormatDateTime('hh:mm:ss', Time);
  TVisualControl.EnableControls(pnVenda, False);

  dtmTabelas := TdmTabelas.Create(Self);
  vendaCto := TVendaController.Create;
  vendaCto.Open([dtmTabelas.dsCliente, dtmTabelas.dsProduto, dtmTabelas.dsVenda]);
  itemVendaCto := TItemVendaController.Create;
end;

procedure TfrmVendas.FormDestroy(Sender: TObject);
begin
  vendaCto.Free;
  itemVendaCto.Free;
  dtmTabelas.Free;
end;

procedure TfrmVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2     : btnNovo.Click;
    VK_F3     : btnAlterar.Click;
    VK_F4     : btnCancelar.Click;
    VK_F5     : btnConfirmar.Click;
    VK_F6     : btnExcluirVenda.Click;
    VK_INSERT : btnAddProduto.Click;
    VK_DELETE : btnDelProduto.Click;
    VK_ESCAPE : btnLimpar.Click;
  end;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  stbData.Panels[1].Text := DateToStr(dataVenda);
  stbData.Panels[3].Text := horaVenda;
  TVisualControl.StartValues(pnVenda);
  seqProd := 0;
end;

procedure TfrmVendas.setVlrsControls;
var
  i : Integer;
begin
  with vendaCto.Venda do
   begin
     dblCliente.KeyValue := IdCliente;
     stbData.Panels[1].Text := DateToStr(DtVenda);
     stbData.Panels[3].Text := HrVenda;
     edtVlrTotal.Text := FormatFloat(',0.00', VlrTotVenda);
   end;
  mmoProdutos.Lines.Clear;
  seqProd := 1;
  with itemVendaCto.ItemVenda do
   begin
     for i := Low(ListaProduto) to High(ListaProduto) do
      begin
        mmoProdutos.Lines.Append(IntToStr(seqProd) + '   -   ' + ListaProduto[i].DescProduto +
                                 '   -   '  + FloatToStr(ListaProduto[i].QtdVendida) + ' * ' +
                                 FloatToStr(ListaProduto[i].VlrUnitario) + '  =  ' +
                                 FloatToStr(ListaProduto[i].VlrTotal));
        Inc(seqProd);
      end;
   end;
end;

procedure TfrmVendas.startValues;
begin
  TVisualControl.EnableControls(pnVenda, False);
  TVisualControl.StartValues(pnVenda, True);
  itemVendaCto.ItemVenda.ListaProduto := nil;
  mmoProdutos.Clear;
  vendaCto.Venda.VlrTotVenda := 0;
  seqProd := 0;
end;

end.
