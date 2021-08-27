object frmRelVenda: TfrmRelVenda
  Left = 0
  Top = 0
  Caption = 'frmRelVenda'
  ClientHeight = 394
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RepVendas: TRLReport
    Left = 8
    Top = -1
    Width = 794
    Height = 1123
    Borders.Style = bsHorizontal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'SGB - Relat'#243'rio de Abastecimentos'
    BeforePrint = RepVendasBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 26
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clBtnShadow
      ParentColor = False
      Transparent = False
      object lbTitulo: TRLLabel
        Left = 283
        Top = 3
        Width = 151
        Height = 19
        Align = faCenter
        Caption = 'Rela'#231#227'o de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 64
      Width = 718
      Height = 17
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 506
        Top = 0
        Width = 212
        Height = 15
        Align = faRightTop
        Caption = 'SCV - Sistema de Controle de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 43
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand3BeforePrint
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 67
        Height = 16
        Align = faLeftTop
        Caption = 'N'#186' Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbID: TRLDBText
        Left = 82
        Top = 1
        Width = 16
        Height = 15
        Alignment = taCenter
        DataField = 'ID'
        DataSource = dmTabelas.dsRelVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 119
        Top = 0
        Width = 140
        Height = 16
        Caption = 'Data/ Hora da Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldbData: TRLDBText
        Left = 260
        Top = 1
        Width = 66
        Height = 15
        DataField = 'DT_VENDA'
        DataSource = dmTabelas.dsRelVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rldbHora: TRLDBText
        Left = 324
        Top = 1
        Width = 68
        Height = 15
        DataField = 'HR_VENDA'
        DataSource = dmTabelas.dsRelVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rdldbCliente: TRLDBText
        Left = 452
        Top = 1
        Width = 38
        Height = 15
        DataField = 'NOME'
        DataSource = dmTabelas.dsRelVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 26
        Top = 19
        Width = 87
        Height = 16
        Caption = 'C'#243'd. Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 121
        Top = 19
        Width = 237
        Height = 16
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 383
        Top = 19
        Width = 95
        Height = 16
        Caption = 'Qtde. Vendida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 484
        Top = 19
        Width = 85
        Height = 16
        Caption = 'Vlr. Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 588
        Top = 19
        Width = 85
        Height = 16
        Caption = 'Vlr. Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 396
        Top = 0
        Width = 53
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 33
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 1
        Width = 177
        Height = 16
        Align = faLeftTop
        Info = itFullDate
        Text = 'Data da Impress'#227'o: '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 587
        Top = 17
        Width = 131
        Height = 16
        Align = faRightBottom
        Info = itPageNumber
        Text = 'P'#225'gina:'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 679
        Top = 1
        Width = 39
        Height = 16
        Align = faRightTop
        Info = itHour
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 16
      BandType = btSummary
      Color = clSilver
      ParentColor = False
      Transparent = False
      object RLDBResult3: TRLDBResult
        Left = 440
        Top = 0
        Width = 77
        Height = 16
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ID'
        DataSource = dmTabelas.dsRelVenda
        DisplayMask = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riCount
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 326
        Top = 0
        Width = 115
        Height = 15
        Align = faTopOnly
        Caption = 'N'#186' Total de Vendas.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 124
      Width = 718
      Height = 45
      AllowedBands = [btDetail, btSummary]
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataSource = dmTabelas.dsRelItens
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 21
        object RLDBText5: TRLDBText
          Left = 28
          Top = 3
          Width = 82
          Height = 15
          Alignment = taCenter
          DataField = 'ID_PRODUTO'
          DataSource = dmTabelas.dsRelItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 121
          Top = 3
          Width = 104
          Height = 15
          DataField = 'DESC_PRODUTO'
          DataSource = dmTabelas.dsRelItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 386
          Top = 3
          Width = 88
          Height = 15
          Alignment = taCenter
          DataField = 'QTD_VENDIDA'
          DataSource = dmTabelas.dsRelItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 481
          Top = 3
          Width = 90
          Height = 15
          Alignment = taCenter
          DataField = 'VLR_UNITARIO'
          DataSource = dmTabelas.dsRelItens
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 595
          Top = 3
          Width = 70
          Height = 15
          Alignment = taCenter
          DataField = 'VLR_TOTAL'
          DataSource = dmTabelas.dsRelItens
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 21
        Width = 718
        Height = 20
        BandType = btSummary
        object RLLabel11: TRLLabel
          Left = 462
          Top = 1
          Width = 109
          Height = 16
          Caption = 'Total da Venda.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTotalVenda: TRLLabel
          Left = 590
          Top = 0
          Width = 80
          Height = 16
          Alignment = taCenter
        end
      end
    end
  end
end
