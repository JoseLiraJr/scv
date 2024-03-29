object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Vendas'
  ClientHeight = 371
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stbData: TStatusBar
    Left = 0
    Top = 352
    Width = 436
    Height = 19
    Panels = <
      item
        Text = 'Data da Venda'
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Text = 'Hora da Venda'
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object pnAtalhos: TPanel
    Left = 300
    Top = 0
    Width = 136
    Height = 202
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 6
      Top = 21
      Width = 120
      Height = 25
      Hint = 'Inserir nova venda'
      Caption = '[F2] Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 6
      Top = 46
      Width = 120
      Height = 25
      Hint = 'Alterar venda '
      Caption = '[F3] Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 6
      Top = 71
      Width = 120
      Height = 25
      Hint = 'Cancelar venda'
      Caption = '[F4] Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnConfirmar: TBitBtn
      Left = 6
      Top = 96
      Width = 120
      Height = 25
      Hint = 'Confirmar venda'
      Caption = '[F5] Confirmar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnConfirmarClick
    end
    object btnLimpar: TBitBtn
      Left = 6
      Top = 146
      Width = 120
      Height = 25
      Hint = 'Limpar campos da tela'
      Caption = '[ESC] Limpar Editores'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnLimparClick
    end
    object btnFechar: TBitBtn
      Left = 6
      Top = 171
      Width = 120
      Height = 25
      Hint = 'Fechar tela de abastecimento'
      Caption = '[Alt + F4] Fechar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 136
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Atalhos'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
    end
    object btnExcluirVenda: TBitBtn
      Left = 6
      Top = 121
      Width = 120
      Height = 25
      Hint = 'Excluir Venda'
      Caption = '[F6] Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnExcluirVendaClick
    end
  end
  object pnVenda: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 202
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 25
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 16
      Top = 110
      Width = 65
      Height = 13
      Caption = 'Qtde Produto'
    end
    object Label4: TLabel
      Left = 157
      Top = 111
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object Label6: TLabel
      Left = 16
      Top = 153
      Width = 91
      Height = 13
      Caption = 'Vlr. Total da Venda'
    end
    object Label7: TLabel
      Left = 16
      Top = 67
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 300
      Height = 20
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Venda'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object dblCliente: TDBLookupComboBox
      Left = 16
      Top = 41
      Width = 275
      Height = 21
      DataField = 'ID_CLI'
      DataSource = dmTabelas.dsVenda
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = dmTabelas.dsCliente
      TabOrder = 1
    end
    object edtQtdeProduto: TEdit
      Left = 16
      Top = 127
      Width = 135
      Height = 21
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '0,00'
      TextHint = '0,00'
      OnEnter = edtQtdeProdutoEnter
      OnKeyPress = edtQtdeProdutoKeyPress
    end
    object edtVlrUnit: TEdit
      Left = 157
      Top = 127
      Width = 135
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = clMoneyGreen
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      Text = '0,00'
      TextHint = '0,00'
    end
    object edtVlrTotal: TEdit
      Left = 16
      Top = 169
      Width = 275
      Height = 26
      TabStop = False
      Alignment = taRightJustify
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
      Text = '0,00'
      TextHint = '0,000'
    end
    object dblProduto: TDBLookupComboBox
      Left = 16
      Top = 84
      Width = 275
      Height = 21
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dmTabelas.dsProduto
      TabOrder = 5
      OnClick = dblProdutoClick
    end
  end
  object pnProdutos: TPanel
    Left = 0
    Top = 202
    Width = 436
    Height = 150
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnAddProduto: TSpeedButton
      Left = 368
      Top = 123
      Width = 30
      Height = 25
      Hint = '[F9] - Adicionar Produto na Venda'
      Caption = '+'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAddProdutoClick
    end
    object btnDelProduto: TSpeedButton
      Left = 404
      Top = 123
      Width = 30
      Height = 25
      Hint = '[Delete] - Remover Produto da Venda'
      Caption = '-'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnDelProdutoClick
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 436
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Itens da Venda'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object mmoProdutos: TMemo
      Left = 0
      Top = 20
      Width = 436
      Height = 102
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
end
