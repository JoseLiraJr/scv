unit uRelacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, uDmTabelas;

type
  TDadosRel = record
    tituloRel : string;
    tituloPart : string;
  end;

  TfrmRelacao = class(TForm)
    RepRelacao: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    lbTitulo: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    lbParticipante: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult3: TRLDBResult;
    RLLabel8: TRLLabel;
    procedure RepRelacaoBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    dadosRel : TDadosRel;
  end;

implementation

{$R *.dfm}

procedure TfrmRelacao.RepRelacaoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbTitulo.Caption := dadosRel.tituloRel;
  lbParticipante.Caption := dadosRel.tituloPart;
end;

end.
