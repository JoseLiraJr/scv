unit uBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmBase = class(TForm)
    pnTop: TFlowPanel;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    pnBody: TFlowPanel;
    pgcBase: TPageControl;
    tabConsulta: TTabSheet;
    GroupBox1: TGroupBox;
    btnLocalizar: TSpeedButton;
    rbCodigo: TRadioButton;
    rbDescricao: TRadioButton;
    edtLocalizar: TEdit;
    grdConsulta: TDBGrid;
    tabCadastro: TTabSheet;
    Bevel1: TBevel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure pgcBaseChanging(Sender: TObject; var AllowChange: Boolean);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure radiobuttonsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

uses
  uVisualControl;

{$R *.dfm}

procedure TfrmBase.btnAlterarClick(Sender: TObject);
begin
  TVisualControl.EnableControls(pnTop, False);
  pgcBase.ActivePage := tabCadastro;
end;

procedure TfrmBase.btnCancelarClick(Sender: TObject);
begin
  TVisualControl.EnableControls(pnTop, True);
  pgcBase.ActivePage := tabConsulta;
end;

procedure TfrmBase.btnConfirmarClick(Sender: TObject);
begin
  TVisualControl.EnableControls(pnTop, True);
  pgcBase.ActivePage := tabConsulta;
end;

procedure TfrmBase.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBase.btnInserirClick(Sender: TObject);
begin
  TVisualControl.EnableControls(pnTop, False);
  pgcBase.ActivePage := tabCadastro;
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  pgcBase.ActivePage := tabConsulta;
end;

procedure TfrmBase.pgcBaseChanging(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TfrmBase.radiobuttonsClick(Sender: TObject);
begin
  TVisualControl.ClearEdit(edtLocalizar);
end;

end.
