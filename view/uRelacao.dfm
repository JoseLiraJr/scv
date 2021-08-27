object frmRelacao: TfrmRelacao
  Left = 0
  Top = 0
  Caption = 'frmRelacao'
  ClientHeight = 351
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RepRelacao: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Borders.Style = bsHorizontal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'SGB - Relat'#243'rio de Abastecimentos'
    BeforePrint = RepRelacaoBeforePrint
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
        Left = 326
        Top = 3
        Width = 66
        Height = 19
        Align = faCenter
        Caption = 'Rela'#231#227'o'
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
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 42
        Height = 15
        Align = faLeftTop
        Caption = 'C'#243'digo'
      end
      object lbParticipante: TRLLabel
        Left = 136
        Top = 0
        Width = 36
        Height = 15
        Align = faTopOnly
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 501
        Top = 0
        Width = 108
        Height = 15
        Align = faTopOnly
        Alignment = taCenter
        Caption = 'Status'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 43
        Height = 15
        Alignment = taRightJustify
        DataField = 'Codigo'
        DataSource = dmTabelas.dsRelacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 136
        Top = 0
        Width = 37
        Height = 15
        Align = faTopOnly
        DataField = 'Nome'
        DataSource = dmTabelas.dsRelacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 501
        Top = 0
        Width = 108
        Height = 15
        Align = faTopOnly
        Alignment = taCenter
        AutoSize = False
        DataField = 'Status'
        DataSource = dmTabelas.dsRelacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 113
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
      Top = 97
      Width = 718
      Height = 16
      BandType = btSummary
      object RLDBResult3: TRLDBResult
        Left = 440
        Top = 0
        Width = 77
        Height = 16
        Align = faTopOnly
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ID'
        DataSource = dmTabelas.dsCliente
        DisplayMask = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riCount
        ParentFont = False
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 326
        Top = 0
        Width = 112
        Height = 15
        Align = faTopOnly
        Caption = 'Total de Registros.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end