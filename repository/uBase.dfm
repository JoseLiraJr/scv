object frmBase: TfrmBase
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmBase'
  ClientHeight = 270
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TFlowPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btnInserir: TBitBtn
      Left = 0
      Top = 0
      Width = 70
      Height = 38
      Hint = 'Inserir Novo Cadastro'
      Caption = 'Inserir'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFD9DD39C50AF4B50AF
        4B9ED39CFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2F2E3
        4BAC474DAD494DAD494BAD47E3F2E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE1F1E048AB444FAE4A4FAE4A48AB44E1F1E0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E149AC444FAE4B4FAE4B49AC44E1F2E1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E149AC444FAE4B4FAE
        4B49AC44E1F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E1
        49AC444FAE4B4FAE4B49AC44E1F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE1F2E149AC444FAE4B4FAE4B49AC44E1F2E1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E149AC444FAE4B4FAE4B49AC44E1F2E1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F3E549AC444FAE4B4FAE
        4B49AC44E5F3E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFEFDE3F2E2E0F1DFE1F1E0E1F1E0E1F1E0E1F1E0E1F1E0E5F2E4C8E6C6
        4BAD474FAE4B4FAE4B4BAD47C8E6C6E5F2E4E1F1E0E1F1E0E1F1E0E1F1E0E1F1
        E0E0F0DFE3F2E2FDFEFD9ED29B4AAC4645A94146AA4246AA4246AA4246AA4246
        AA4246AA4249AB444FAF4B4FAE4B4FAE4B4FAF4B49AB4446AA4246AA4246AA42
        46AA4246AA4246AA4245A9414AAD469FD39C4FAF4B4DAD494FAE4B4FAE4B4FAE
        4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B50AF4C50AF4C4FAE4B4FAE4B4F
        AE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4DAD4950AF4B4FAF4B4DAD49
        4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B50AF4C50AF
        4C4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4FAE4B4DAD494F
        AF4C9DD19B4AAC4645A94146AA4246AA4246AA4246AA4246AA4246AA4249AB44
        4FAF4B4FAE4B4FAE4B4FAF4B49AB4446AA4246AA4246AA4246AA4246AA4246AA
        4245A9414AAC459DD29BFDFEFDE3F2E2E0F1DFE1F1E0E1F1E0E1F1E0E1F1E0E1
        F1E0E5F2E4C8E6C64BAD474FAE4B4FAE4B4BAD47C8E6C6E5F2E4E1F1E0E1F1E0
        E1F1E0E1F1E0E1F1E0E0F1DFE3F2E2FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE5F3E549AC444FAE4B4FAE4B49AC44E5F3E5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E149AC444FAE4B4FAE
        4B49AC44E1F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E1
        49AC444FAE4B4FAE4B49AC44E1F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE1F2E149AC444FAE4B4FAE4B49AC44E1F2E1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E149AC444FAE4B4FAE4B49AC44E1F2E1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F2E149AC444FAE4B4FAE
        4B49AC44E1F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F1E0
        48AB444FAE4A4FAE4A48AB44E1F1E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE2F2E34BAC474DAD494DAD494BAC47E3F2E3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE9DD29B4FAF4B4FAF4C9DD39CFEFEFDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnAlterar: TBitBtn
      Left = 70
      Top = 0
      Width = 70
      Height = 38
      Hint = 'Alterar Registro Selecionado'
      Caption = 'Alterar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        E9E9E94B4B4BD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF0A0A0A242424606060CCCCCCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E1E1E1D1D1D0B0B0BD3D3D3ED
        EDEDF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5757576969
        69ECECECFFFFFFF7F7F7EAEAEAE8E7E7FDFAF7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF0F0F0FFFFFFFFFFFFF8F8F8F6F6F6F5F5F5FCF5F1BAD5E6C5E3F7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAFAFAF8F8F8FBF8F6FFFFF4A0D2F1
        29A1EE1C98E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFBFAFAFFFBF8DF
        ECF45BB4ED0F9AF21F9FEF1296E956B3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFD
        FCFFFFFBA8D8F53DADF31598EB209DED26A2F11F9DEC1897E7A3D4F5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEFCFC78BFEC1596E724A5F7239FEE1C99E8229FEE23A0EF1797
        E8289EE8EAF6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8FBFE56B7F20892E91592E11F9CEB26A3F21F9AE9
        1C98E7229FEE209CEB1294E735A2E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEE4FB26A1EF1998E819
        94E323A0EF229EED1A97E61B98E7239FEE1E9BEA048CE397CFF2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF81CAF81097ED1B97E61995E425A2F11D9AE91793E21F9BEA209EED1797E722
        98E4D2EBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF40AFF5199BED1A96E51C99E8219EED1A95E41491
        E01F9CEB1F9AE90E8FE23BA4E6EFF8FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2EDFD2DA6F21B9BEB1A95E4
        1E9BEA1D99E81591E01894E3209CEB1996E5088CE071BCECFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92
        D1FA1A9DF11C99E91B97E61D9AE91894E31591E01B97E61D99E81794E40088DE
        CCE7FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF68C0F8189CEF1D9AE91B98E71A97E61591E0138FDE1D
        9AE91494E6118FDE79B6DBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FBFF24A4F51F9EEF1C98E71A97
        E61793E21390DF0B8DE03BA1E2A9CCE0FFF9EECFCFF4FBFBFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8DCFB
        159DF31F9DEC1A96E51392E30083DD66B0DDE8EEEAFFFFF27877E63F3FE0C7C7
        F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF7FCAFA1DA0F31598EB2F9DE3B3D4E7FFFEF0C1BFEB4747E0
        3737E04040E33636E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF7FF3AADF56DBDEEE1EEEFF7F2EC85
        85E34040DF3E3EE14646E34545E53030E3F9F9FEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F3FDF4F5
        ECD6D2E56363E03838DF4242E24545E43E3EE44646E7B5B5F5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB8B6E73131DD3D3DE04444E34444E54040E67E7EEFF6F6FDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFE6161E73F3FE24040E44F4FE8A3A3F4
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9F95656E770
        70EDE0E0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 140
      Top = 0
      Width = 70
      Height = 38
      Hint = 'Excluir Registro Selecionado'
      Caption = 'Excluir'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        DDDDF24C4CC83939C57878D3FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7878D33939C54C4CC8DDDDF2FFFFFFFF
        FFFFFFFFFFCACAEC4141CE3535DB3B3BDC2C2CD67171D6F4F4F9FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F97171D62C2CD63B3BDC3535
        DB4141CFCACAECFFFFFFDCDCF24242D13838DB3D3DDC3D3DDB3D3DDC3434D872
        72D7FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7272D73434D8
        3D3DDC3D3DDB3D3DDC3838DB4242D1DDDDF25050D43838DD3F3FDC3F3FDC3F3F
        DC3F3FDC3E3EDC3131D95555D0FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55
        55D03131D93E3EDC3F3FDC3F3FDC3F3FDC3F3FDC3838DD4F4FD43F3FDB3E3EDD
        3F3FDD3F3FDD3F3FDD3F3FDD3F3FDD3F3FDE3232DA7373D8F4F4F9FFFFFFFFFF
        FFF4F4F97373D83232DA3F3FDE3F3FDD3F3FDD3F3FDD3F3FDD3F3FDD3E3EDD3F
        3FDC7E7EEA3131DC4040DE4040DE4040DE4040DE4040DE4040DE4040DF3838DA
        7575D8FFFFFEFFFFFE7575D83838DA4040DF4040DE4040DE4040DE4040DE4040
        DE4040DE3131DC7D7DE9FFFFFF7777E83A3ADD4141DF4242DF4242DF4242DF42
        42DF4242DF4141DF3535DC6868D56868D53535DC4141DF4242DF4242DF4242DF
        4242DF4242DF4141DF3A3ADD7777E8FFFFFFFFFFFFF5F5FD7777E83535DE4343
        E04343E04343E04343E04343E04343E04343E13C3CDE3C3CDE4343E14343E043
        43E04343E04343E04343E04343E03535DE7777E8F5F5FDFFFFFFFFFFFFFFFFFF
        FFFFFF5C5CE53636DF4343E14343E14343E14343E14343E14343E14343E24343
        E24343E14343E14343E14343E14343E14343E13636DF5C5CE5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7979EB3C3CE14444E34545E34545E34545E3
        4545E34545E34545E34545E34545E34545E34545E34444E33C3CE17979EBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FD7A7AEA3939E146
        46E34646E34646E34646E34646E34646E34646E34646E34646E34646E33939E1
        7A7AEAF5F5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF6E6EEB4141E44646E44646E44646E44646E44646E44646E44646E446
        46E44141E46E6EEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFC6D6DE04343E64848E64848E64848E64848E64848
        E64848E64848E64848E64343E66D6DE0FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F97979DD3C3CE44949E64949E64949E6
        4949E64949E64949E64949E64949E64949E64949E63C3CE47979DDF5F5F9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A7ADE4242E34A4AE84A
        4AE74A4AE74A4AE74A4AE74A4AE74A4AE74A4AE74A4AE74A4AE74A4AE74A4AE8
        4242E37A7ADEFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6060D83E3E
        E74A4AE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B4BE94B
        4BE94B4BE94B4BE94A4AE93E3EE76060D8FFFFFDFFFFFFFFFFFFFFFFFFF5F5FA
        7C7CE03F3FE74C4CE94C4CE94C4CE94C4CE94C4CE94C4CE94C4CE94747E84747
        E84C4CE94C4CE94C4CE94C4CE94C4CE94C4CE94C4CE93F3FE77C7CE0F5F5FAFF
        FFFFFFFFFD7B7BE14545E64D4DEB4D4DEA4D4DEA4D4DEA4D4DEA4D4DEA4D4DEA
        4141E97373EE7373EE4141E94D4DEA4D4DEA4D4DEA4D4DEA4D4DEA4D4DEA4D4D
        EB4545E67C7CE1FFFFFD8484E34040EA4D4DED4E4EEC4E4EEC4E4EEC4E4EEC4E
        4EEC4D4DEC4646EB7F7FF1FFFFFFFFFFFF7F7FF14646EB4D4DEC4E4EEC4E4EEC
        4E4EEC4E4EEC4E4EEC4D4DED4040EA8484E34E4EE84E4EED4F4FED4F4FED4F4F
        ED4F4FED4F4FED4F4FED4343EB8181F2F6F6FEFFFFFFFFFFFFF6F6FE8181F243
        43EB4F4FED4F4FED4F4FED4F4FED4F4FED4F4FED4E4EED4E4EE86262EF4A4AED
        5050ED5050ED5050ED5050ED5050ED4444EC6666EFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF6666EF4444EC5050ED5050ED5050ED5050ED5050ED4A4AED62
        62EEE2E2FC5757EE4D4DEE5252EF5252EF5151EF4A4AEE8282F4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8282F34A4AEE5151EF5252EF5252
        EF4D4DEE5858EEE2E2FCFFFFFFD1D1FB5858F04C4CEF5151F04444EE8282F4F6
        F6FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FE8282F4
        4444EE5151F04C4CEF5858F0D1D1FBFFFFFFFFFFFFFFFFFFE2E2FD6565F25353
        F08A8AF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF8A8AF45353F06565F2E2E2FDFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object btnFechar: TBitBtn
      Left = 210
      Top = 0
      Width = 70
      Height = 38
      Hint = 'Fechar Tela'
      Caption = 'Fechar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC5C5C50F0F0F161616666666D1D1D1EFEFEFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFB2020200000000000000000000000002424246363
        63B0B0B0F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F000000000000000000
        0000000000000000000202021B1B1BC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6A6A6A00000000000000000000000000000000
        00000000000000000000000000000000000000000000000E0E0EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7373730000000101011B1B1B1B1B
        1B18181801010100000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4191919060606
        ACACACEAEAEAE8E8E8CCCCCC1919190000000000000000000000000000000000
        00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3
        E3E3141414181818ECECECFFFFFFFFFFFFE9E9E91C1C1C000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE2E2E2111111111111E2E2E2FFFFFFFFFFFFE5E5E51B1B1B00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF262626272727FFFFFFFFFFFFFFFF
        FFE5E5E51B1B1B00000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E2E2E222222E8E8E8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE5E5E51B1B1B0000000000000000000000000000000000
        00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE3E3E31616160000002F
        2F2FE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFE5E5E51B1B1B000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE9E9
        E91B1B1B0000000000001A1A1AFFFFFFFFFFFFFFFFFFFFFFFFE5E5E51B1B1B00
        0000000000000000000000000000000000000000000000000000F7F7F7E2E2E2
        E4E4E4E8E8E8CCCCCC1919190000000000000000001B1B1BE3E3E3FFFFFFFFFF
        FFE5E5E51B1B1B00000000000000000000000000000000000000000000000000
        00004747471616161A1A1A1B1B1B181818010101000000000000000000000000
        404040F4F4F4FFFFFFE5E5E51B1B1B0000000000000000000000000000000000
        0000000000000000000026262600000000000000000000000000000000000000
        0000000000000000333333F3F3F3FFFFFFE5E5E51B1B1B000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF202020000000000000000000363636F0F0F0FFFFFFFFFFFFE5E5E51B1B1B00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFE5E5E51B1B1B000000000000202020F3F3F3FFFFFFFFFFFFFFFF
        FFE5E5E51B1B1B00000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFE1E1E1141414000000212121E0E0E0FFFFFF
        FFFFFFFFFFFFFFFFFFE5E5E51B1B1B0000000000000000000000000000000000
        00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4646463C3C3CFA
        FAFAFCFCFCF0F0F0FFFFFFFFFFFFFFFFFFE4E4E41B1B1B000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFCFCFFFFFFFFFFFF4B4B4B4C4C4CFCFCFCFFFFFFFFFFFFE3E3E31A1A1A00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E20E0E0E111111EBEBEBFFFFFFFFFF
        FFFBFBFB1A1A1A00000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3191919060606
        ACACACEAEAEAE4E4E4F1F1F1A2A2A20000000000000000000000000000000000
        00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7979790000000101011B1B1B1A1A1A1A1A1A2727270F0F0F000000000000
        0000000000000000000000000000001D1D1DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A0B0B0B00000000000000000000000000
        0000000000000000000000000000000000000000212121C5C5C5}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnFecharClick
    end
  end
  object pnBody: TFlowPanel
    Left = 0
    Top = 41
    Width = 488
    Height = 229
    Align = alClient
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    object pgcBase: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 481
      Height = 221
      ActivePage = tabConsulta
      Align = alClient
      TabOrder = 0
      OnChanging = pgcBaseChanging
      object tabConsulta: TTabSheet
        Caption = 'Consulta'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 473
          Height = 57
          Align = alTop
          Caption = 'Pesquisar Por:'
          TabOrder = 0
          object btnLocalizar: TSpeedButton
            Left = 437
            Top = 18
            Width = 28
            Height = 28
            Hint = 'Pesquisar Registro'
            Glyph.Data = {
              0E060000424D0E06000000000000360000002800000016000000160000000100
              180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F5F2A68960D1C2AEFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCA2855C8E6936906D3DBCA991
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5F29E7F558D69369370407D5C
              2F8567410000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8A588608F6A38936F4080
              5F3282643EEBE6DE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8A182588E6936936F40
              7E5D327F6138F2EEE9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EFEAA4875E8E69369370
              40805E32846641EAE4DCFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5C6B489643092
              6F3E805E3280623AEEE9E4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFF5EFE9B99568
              A785577A572A846640EDE8E2FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFCCBEAC9C8363937A59947A59A28A6CE3DAD0FFFFFF786348A186
              65AA7B40B99567BBAA93E9E2DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFD5CABD85663C724E1F7C5A2C8D6E458769416F4D236C4A1E7E5E3665
              4B27553D1BA28665F4EFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFE8E3D9876333805A26C1A881E7D6B5F2E3C4EEDFC1DECDAF9A7F59
              6F4D2382643D664B28766145FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000F8F6F39C7C4F8F6938E0CDB1FFFFEEFFFAEAFFF9E7FFF6E2FFF6
              DDFFFFE5C7B2946F4E237D5D35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000D7C9B7865F2ABAA17CFFFEEDFFF7E5FFF6E4FFF6E4FF
              F6E4FFF5E4FDF2D9FFFFE59A7E596D4A1EE3DBD0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000AA8F6A86602BFCF2E0FFF9E7FFF6E4FFF6E4
              FFF6E4FFF6E4FFF6E4FFF5E4FFF7DDDFCEAF704D22A28B6CFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00009675469A774AFFFEEDFFF6E4FFF6
              E4FFF6E4FFF6E4FFF6E4FFF6E4FFF6E5FFF7E1EFE0C1886941947B59FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00009372429D7C4FFFFDEDFF
              F6E4FFF6E4FFF6E4FFF6E4FFF6E4FFF6E4FFF6E4FFF8E6F1E3C48C6E45937A59
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000A4875F8A6432
              FFF9E8FFF7E6FFF6E4FFF6E4FFF6E4FFF6E4FFF6E4FFF6E4FFFAE9E7D5B47C59
              2D9B8363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C7B6
              9E845C27D1BD9EFFFFF0FFF6E4FFF6E4FFF6E4FFF6E4FFF6E4FFF7E5FFFFEEC1
              A881724D1DCCBEACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000F3F0EC957344926F3FE5D6BDFFFFF0FFF7E6FFF6E4FFF6E4FFF9E7FFFEEE
              E0CEB0815A2686653CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFD3C5B187612C926F3FD0BD9EFFF9E9FFFDECFFFDEDFCF2
              E0BAA17C8F6A38876333D4CABDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD3C4B2957344845C278A65329D7C4F99
              7749865F2B865F2A9C7B4FE8E2D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF3F0EBC7B69EA68860
              947142967546AB906AD6C9B8F8F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            ParentShowHint = False
            ShowHint = True
          end
          object rbCodigo: TRadioButton
            Left = 7
            Top = 24
            Width = 74
            Height = 17
            Caption = 'C'#243'digo'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = radiobuttonsClick
          end
          object rbDescricao: TRadioButton
            Left = 80
            Top = 24
            Width = 127
            Height = 17
            Caption = 'Descri'#231#227'o'
            TabOrder = 1
            OnClick = radiobuttonsClick
          end
          object edtLocalizar: TEdit
            Left = 213
            Top = 22
            Width = 220
            Height = 21
            TabOrder = 2
          end
        end
        object grdConsulta: TDBGrid
          Left = 0
          Top = 57
          Width = 473
          Height = 136
          Align = alClient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object tabCadastro: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        DesignSize = (
          473
          193)
        object Bevel1: TBevel
          Left = 8
          Top = 7
          Width = 455
          Height = 151
          Anchors = [akLeft, akTop, akRight, akBottom]
          Shape = bsFrame
          Style = bsRaised
        end
        object btnConfirmar: TBitBtn
          Left = 281
          Top = 164
          Width = 90
          Height = 26
          Hint = 'Salvar Cadastro'
          Anchors = [akLeft, akBottom]
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
          Left = 374
          Top = 164
          Width = 90
          Height = 26
          Hint = 'Cancelar Opera'#231#227'o'
          Anchors = [akLeft, akBottom]
          Cancel = True
          Caption = 'Ca&ncelar'
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
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnCancelarClick
        end
      end
    end
  end
end
