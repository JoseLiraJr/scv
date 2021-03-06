object dmTabelas: TdmTabelas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 261
  Width = 316
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
      ReadOnly = True
    end
    object qryClienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object qryClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 11
    end
    object qryClienteSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryClienteLOGRADOURO: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 150
    end
    object qryClienteNUMERO: TStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object qryClienteBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 70
    end
    object qryClienteCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 70
    end
    object qryClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object qryClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
    object qryClienteTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 12
    end
    object qryClienteEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
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
    Top = 80
    object qryProdutoID: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryProdutoCOD_BARRA: TStringField
      DisplayLabel = 'Cod. Barra'
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Required = True
      Size = 14
    end
    object qryProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object qryProdutoQTD_ESTOQUE: TBCDField
      DisplayLabel = 'Qtde. Estoque'
      FieldName = 'QTD_ESTOQUE'
      Origin = 'QTD_ESTOQUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
    object qryProdutoVLR_COMPRA: TBCDField
      DisplayLabel = 'Vlr. Compra'
      FieldName = 'VLR_COMPRA'
      Origin = 'VLR_COMPRA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
    object qryProdutoPERC_LUCRO: TBCDField
      DisplayLabel = 'Lucro (%)'
      FieldName = 'PERC_LUCRO'
      Origin = 'PERC_LUCRO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 3
    end
    object qryProdutoVLR_VENDA: TBCDField
      DisplayLabel = 'Vlr. Venda'
      FieldName = 'VLR_VENDA'
      Origin = 'VLR_VENDA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
    object qryProdutoCONTR_ESTOQUE: TBooleanField
      DisplayLabel = 'Controla Estoque'
      FieldName = 'CONTR_ESTOQUE'
      Origin = 'CONTR_ESTOQUE'
    end
  end
  object dsProduto: TDataSource
    DataSet = qryProduto
    Left = 96
    Top = 80
  end
  object qryPesquisa: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT V.ID AS IdVenda, '
      '       C.ID AS IdCliente, '
      '       C.NOME AS Nome, '
      '       V.DT_VENDA AS Dt_Venda,'
      '       V.VLR_TOT_VENDA AS Vlr_Venda'
      'FROM VENDA V'
      'LEFT JOIN CLIENTE C ON C.ID = V.ID_CLIENTE')
    Left = 32
    Top = 134
    object qryPesquisaIdVenda: TFDAutoIncField
      DisplayLabel = 'N'#186' Venda'
      FieldName = 'IdVenda'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesquisaIdCliente: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'IdCliente'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPesquisaNome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do Cliente'
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
      Required = True
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
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 96
    Top = 134
  end
  object qryVenda: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM VENDA')
    Left = 32
    Top = 184
    object qryVendaID: TFDAutoIncField
      DisplayLabel = 'Cod. Venda'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryVendaDT_VENDA: TDateField
      DisplayLabel = 'Dt. Venda'
      FieldName = 'DT_VENDA'
      Origin = 'DT_VENDA'
      Required = True
    end
    object qryVendaID_CLIENTE: TIntegerField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
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
  end
  object dsVenda: TDataSource
    DataSet = qryVenda
    Left = 96
    Top = 184
  end
  object qryItemVenda: TFDQuery
    Connection = dmPrincipal.Conexao
    SQL.Strings = (
      'SELECT * FROM VENDA_ITENS')
    Left = 176
    Top = 32
    object qryItemVendaID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryItemVendaID_VENDA: TIntegerField
      DisplayLabel = 'Cod Venda'
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      Required = True
    end
    object qryItemVendaID_PRODUTO: TIntegerField
      DisplayLabel = 'Cod Produto'
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryItemVendaQTD_VENDIDA: TBCDField
      DisplayLabel = 'Qtde. Vendida'
      FieldName = 'QTD_VENDIDA'
      Origin = 'QTD_VENDIDA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 3
    end
    object qryItemVendaVLR_UNITARIO: TBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
      Origin = 'VLR_UNITARIO'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
    object qryItemVendaVLR_TOTAL: TBCDField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 10
      Size = 2
    end
  end
  object dsItemVenda: TDataSource
    DataSet = qryItemVenda
    Left = 248
    Top = 32
  end
end
