object frmSelVenda: TfrmSelVenda
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Vendas'
  ClientHeight = 196
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBottom: TPanel
    Left = 0
    Top = 161
    Width = 341
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 409
    DesignSize = (
      341
      35)
    object btnConfirmar: TBitBtn
      Left = 132
      Top = 6
      Width = 100
      Height = 25
      Hint = 'Confirmar sele'#231#227'o do relat'#243'rio'
      Anchors = [akRight, akBottom]
      Caption = '&Confirmar'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TBitBtn
      Left = 234
      Top = 6
      Width = 100
      Height = 25
      Hint = 'Cancelar relat'#243'rio'
      Anchors = [akRight, akBottom]
      Caption = 'Ca&ncelar'
      Kind = bkCancel
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object btnLimparFiltros: TBitBtn
      Left = 9
      Top = 6
      Width = 110
      Height = 25
      Hint = 'Limpar filtros do relat'#243'rio'
      Anchors = [akRight, akBottom]
      Caption = '&Limpar Filtros'
      Glyph.Data = {
        0E060000424D0E06000000000000360000002800000016000000160000000100
        180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C49898989B9B9B9B9B9B9B9B9B
        9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B999999A3A3
        A3F0F0F00000FFFFFFFFFFFFFFFFFFFFFFFFD3D3D30808080000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000009898980000FFFFFFFFFFFFFFFFFFF4F4F427272700000037373755
        55555050505252524B4B4B0000000000000404044242425A5A5A515151505050
        5050504D4D4D5D5D5DDEDEDE0000FFFFFFFFFFFFFFFFFF616161000000383838
        FAFAFAFFFFFFFFFFFFFFFFFFF5F5F50000000000000000003F3F40E2E2E2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF9696960000000D0D
        0DD4D4D4FFFFFFFFFFFFFFFFFFF1F1F13F3F3F00000049270D3219080000000D
        0F10A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFCFCFCF00000000
        0000ADADADFFFFFFFFFFFFFFFFFFFFFFFF525252000000341B08F7842EFD882F
        6B3813000000000000636363F8F8F8FFFFFFFFFFFFFFFFFF0000F3F3F3333333
        0000006D6D6DFFFFFFFFFFFFFFFFFFFFFFFF979797000000000000DE7729FF8D
        30FF8B30FF8D30964F1B0000000000003A3B3BD9D9D9FFFFFFFFFFFF0000E9E9
        E92525250000002E2E2ECDCDCDFFFFFFFFFFFFA8A8A8000000020000B46021FF
        9233FF872EFF882FFF892FFF9232DB7629351C08000000000000A7A7A7FFFFFF
        0000FFFFFFDADADA2323230000000D0D0DADADADE5E5E50F1011000000854718
        FF8D31FF882FFF882FFF882FFF882FFF882FFF8D31F0812C5B30110000000000
        00A4A4A40000FFFFFFFFFFFFFFFFFF7676760000000000000203030000006737
        12FF9533FF892FFF882FFF882FFF882FFF882FFF882FFF882FFF9031CF70270A
        0400000000B2B2B20000FFFFFFFFFFFFFFFFFFFFFFFF9D9D9D04040400000005
        0301C36824FF9634FF892FFF872EFF882FFF882FFF882FFF872FFF8C30FA862D
        2A16070000006D6D6DFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE
        3A3A3A000000000000A3581EFF8A30FF8B30FF872EFF882FFF882FFF892FFF8C
        30593011000000343535FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF5F5F56363630000000000005E3211FF8B30FF8D30FF882FFF882FFF
        8F319A521C0000000F1011D3D3D3FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9040607000000351C09CF6F26FF8E31
        FF9031C66A24020000000000AEAEAEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD393A3A0000000401
        00AE5D20F5832D2613060000006E6E6EFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE56
        56560000000000002412050000003B3C3CF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA5A5A5070809000000151516DFDFDFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C54C4C4CB3B3B3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnLimparFiltrosClick
    end
  end
  object pnBody: TPanel
    Left = 0
    Top = 0
    Width = 341
    Height = 161
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 409
    object gbDadosCadastro: TGroupBox
      Left = 0
      Top = 0
      Width = 341
      Height = 73
      Align = alTop
      Caption = 'Dados da Sele'#231#227'o.:'
      TabOrder = 0
      ExplicitWidth = 409
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object dblCliente: TDBLookupComboBox
        Left = 16
        Top = 38
        Width = 234
        Height = 21
        KeyField = 'ID'
        TabOrder = 0
      end
    end
    object gbPeriodoVenda: TGroupBox
      Left = 0
      Top = 73
      Width = 341
      Height = 88
      Align = alClient
      Caption = 'Per'#237'odo da Venda.:'
      TabOrder = 1
      ExplicitWidth = 409
      object Label2: TLabel
        Left = 16
        Top = 18
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label3: TLabel
        Left = 174
        Top = 18
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object edtInicio: TDateTimePicker
        Left = 16
        Top = 37
        Width = 150
        Height = 21
        Date = 44276.000000000000000000
        Time = 0.739331099539413100
        Enabled = False
        TabOrder = 0
      end
      object edtFim: TDateTimePicker
        Left = 174
        Top = 37
        Width = 150
        Height = 21
        Date = 44276.000000000000000000
        Time = 0.739331099539413100
        Enabled = False
        TabOrder = 1
      end
      object cbTodoPeriodo: TCheckBox
        Left = 16
        Top = 64
        Width = 110
        Height = 17
        Hint = 'Relat'#243'rio de todo o per'#237'odo'
        Caption = 'Todo o Per'#237'odo'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 2
        OnClick = cbTodoPeriodoClick
      end
    end
  end
end