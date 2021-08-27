object dmTabelas: TdmTabelas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 281
  Width = 311
  object qryCliente: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 32
    Top = 32
    object qryClienteID: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryClienteNOME: TWideStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object qryClienteCIDADE: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 150
    end
    object qryClienteUF: TWideStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qryClienteSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsCliente: TDataSource
    DataSet = qryCliente
    Left = 96
    Top = 32
  end
  object qryProduto: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 32
    Top = 136
    object qryProdutoID: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryProdutoDESCRICAO: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object qryProdutoPRC_VENDA: TBCDField
      DisplayLabel = 'Vlr. Venda'
      FieldName = 'PRC_VENDA'
      Origin = 'PRC_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
    object qryProdutoID_FORN: TIntegerField
      DisplayLabel = 'Cod. Fornec'
      FieldName = 'ID_FORN'
      Origin = 'ID_FORN'
      Required = True
    end
    object qryProdutoSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = qryProduto
    Left = 96
    Top = 136
  end
  object qryPesquisa: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT V.ID AS IdVenda, '
      '       C.ID AS IdCliente, '
      '       C.NOME AS Nome, '
      '       V.DT_VENDA AS Dt_Venda,'
      '       V.HR_VENDA AS Hr_venda,       '
      '       V.VLR_TOT_VENDA AS Vlr_Venda'
      'FROM VENDA V'
      'LEFT JOIN CLIENTE C ON C.ID = V.ID_CLI')
    Left = 168
    Top = 30
    object qryPesquisaIdVenda: TFDAutoIncField
      DisplayLabel = 'Cod. Venda'
      FieldName = 'IdVenda'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesquisaIdCliente: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod. Venda'
      FieldName = 'IdCliente'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPesquisaNome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nome'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qryPesquisaDt_Venda: TDateField
      DisplayLabel = 'Dt. Venda'
      FieldName = 'Dt_Venda'
      Origin = 'DT_VENDA'
    end
    object qryPesquisaVlr_Venda: TBCDField
      DisplayLabel = 'Vlr. Venda'
      FieldName = 'Vlr_Venda'
      Origin = 'VLR_TOT_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
    object qryPesquisaHr_venda: TWideStringField
      DisplayLabel = 'Hr. Venda'
      FieldName = 'Hr_venda'
      Origin = 'HR_VENDA'
      Size = 8
    end
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 232
    Top = 30
  end
  object qryVenda: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM VENDA')
    Left = 168
    Top = 80
    object qryVendaID: TFDAutoIncField
      DisplayLabel = 'Cod. Venda'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryVendaID_CLI: TIntegerField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'ID_CLI'
      Origin = 'ID_CLI'
      Required = True
    end
    object qryVendaDT_VENDA: TDateField
      DisplayLabel = 'Dt. Venda'
      FieldName = 'DT_VENDA'
      Origin = 'DT_VENDA'
      EditMask = '!99/99/0000;1;_'
    end
    object qryVendaVLR_TOT_VENDA: TBCDField
      DisplayLabel = 'Vlr. Tot. Venda'
      FieldName = 'VLR_TOT_VENDA'
      Origin = 'VLR_TOT_VENDA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
    object qryVendaHR_VENDA: TWideStringField
      DisplayLabel = 'Hr. Venda'
      FieldName = 'HR_VENDA'
      Origin = 'HR_VENDA'
      Size = 8
    end
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    Left = 232
    Top = 80
  end
  object qryItemVenda: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM VENDA_ITENS')
    Left = 168
    Top = 136
    object qryItemVendaID_VENDA: TIntegerField
      DisplayLabel = 'Cod. Venda'
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemVendaID_PRODUTO: TIntegerField
      DisplayLabel = 'Cod. Produto'
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemVendaDESC_PRODUTO: TWideStringField
      DisplayLabel = 'Desc. Produto'
      FieldName = 'DESC_PRODUTO'
      Origin = 'DESC_PRODUTO'
      Size = 32767
    end
    object qryItemVendaVLR_UNITARIO: TBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      Origin = 'VLR_UNITARIO'
      Precision = 10
      Size = 2
    end
    object qryItemVendaQTD_VENDIDA: TBCDField
      DisplayLabel = 'Qtd. Vendida'
      FieldName = 'QTD_VENDIDA'
      Origin = 'QTD_VENDIDA'
      Required = True
      Precision = 10
      Size = 2
    end
    object qryItemVendaVLR_TOTAL: TBCDField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object dsItemVenda: TDataSource
    DataSet = qryItemVenda
    Left = 240
    Top = 136
  end
  object qryFornecedor: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 32
    Top = 80
    object qryFornecedorID: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryFornecedorNOME_FANTASIA: TWideStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 150
    end
    object qryFornecedorRAZAO_SOCIAL: TWideStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 150
    end
    object qryFornecedorCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 14
    end
    object qryFornecedorSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 96
    Top = 80
  end
  object qryRelacao: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT ID AS Codigo,'
      '       NOME AS Nome,'
      '       CASE STATUS'
      '         WHEN '#39'A'#39' THEN '#39'Ativo'#39
      '         WHEN '#39'I'#39' THEN '#39'Inativo'#39
      '       ELSE'
      '         '#39#39
      '       END AS Status'
      'FROM CLIENTE')
    Left = 32
    Top = 184
    object qryRelacaoCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryRelacaoNome: TWideStringField
      FieldName = 'Nome'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object qryRelacaoStatus: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object dsRelacao: TDataSource
    DataSet = qryRelacao
    Left = 96
    Top = 184
  end
  object qryRelVenda: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      
        'SELECT V.ID, V.DT_VENDA, V.HR_VENDA, C.NOME, V.VLR_TOT_VENDA    ' +
        '       '
      'FROM VENDA V '
      'LEFT JOIN CLIENTE C ON C.ID = V.ID_CLI')
    Left = 168
    Top = 184
    object qryRelVendaID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryRelVendaDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
      Origin = 'DT_VENDA'
    end
    object qryRelVendaHR_VENDA: TWideStringField
      FieldName = 'HR_VENDA'
      Origin = 'HR_VENDA'
      Size = 8
    end
    object qryRelVendaNOME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qryRelVendaVLR_TOT_VENDA: TBCDField
      FieldName = 'VLR_TOT_VENDA'
      Origin = 'VLR_TOT_VENDA'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object dsRelVenda: TDataSource
    DataSet = qryRelVenda
    Left = 232
    Top = 184
  end
  object qryRelItens: TFDQuery
    MasterSource = dsRelVenda
    MasterFields = 'ID'
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      
        'SELECT I.ID_PRODUTO, I.DESC_PRODUTO, I.QTD_VENDIDA, I.VLR_UNITAR' +
        'IO, I.VLR_TOTAL           '
      'FROM VENDA_ITENS I '
      'WHERE I.ID_VENDA = :ID_VENDA')
    Left = 32
    Top = 232
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryRelItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRelItensDESC_PRODUTO: TWideStringField
      FieldName = 'DESC_PRODUTO'
      Origin = 'DESC_PRODUTO'
      Size = 32767
    end
    object qryRelItensQTD_VENDIDA: TBCDField
      FieldName = 'QTD_VENDIDA'
      Origin = 'QTD_VENDIDA'
      Required = True
      Precision = 10
      Size = 2
    end
    object qryRelItensVLR_UNITARIO: TBCDField
      FieldName = 'VLR_UNITARIO'
      Origin = 'VLR_UNITARIO'
      Precision = 10
      Size = 2
    end
    object qryRelItensVLR_TOTAL: TBCDField
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object dsRelItens: TDataSource
    DataSet = qryRelItens
    Left = 96
    Top = 232
  end
end
