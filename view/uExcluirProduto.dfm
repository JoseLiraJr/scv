object frmExcluirProduto: TfrmExcluirProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Excluir Produto'
  ClientHeight = 40
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    292
    40)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 2
    Top = 1
    Width = 287
    Height = 35
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    Style = bsRaised
  end
  object edtSeqProd: TEdit
    Left = 8
    Top = 10
    Width = 121
    Height = 21
    Hint = 'Sequ'#234'ncia do Produto a ser '
    Alignment = taCenter
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnEnter = edtSeqProdEnter
    OnKeyPress = edtSeqProdKeyPress
  end
  object btnInformacao: TBitBtn
    Left = 250
    Top = 8
    Width = 34
    Height = 25
    Hint = 'Informa'#231#227'o!'
    Caption = '!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnInformacaoClick
  end
  object btnExcluir: TBitBtn
    Left = 135
    Top = 8
    Width = 109
    Height = 25
    Hint = 'Excluir Produto'
    Cancel = True
    Caption = '&Excluir Produto'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
end
