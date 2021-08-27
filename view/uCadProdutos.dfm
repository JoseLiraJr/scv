inherited frmCadProdutos: TfrmCadProdutos
  Caption = 'Cadastro de Produto'
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTop: TFlowPanel
    inherited btnExcluir: TBitBtn
      OnClick = btnExcluirClick
    end
  end
  inherited pnBody: TFlowPanel
    inherited pgcBase: TPageControl
      ActivePage = tabCadastro
      inherited tabConsulta: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 473
        ExplicitHeight = 193
        inherited GroupBox1: TGroupBox
          inherited btnLocalizar: TSpeedButton
            OnClick = btnLocalizarClick
          end
          inherited edtLocalizar: TEdit
            OnKeyPress = EditsKeyPress
          end
        end
        inherited grdConsulta: TDBGrid
          DataSource = dmTabelas.dsProduto
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 210
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRC_VENDA'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STATUS'
              Width = 82
              Visible = True
            end>
        end
      end
      inherited tabCadastro: TTabSheet
        object Label2: TLabel [1]
          Left = 18
          Top = 17
          Width = 102
          Height = 13
          Caption = 'Descri'#231#227'o do Produto'
          FocusControl = EdtDescricao
        end
        object Label4: TLabel [2]
          Left = 334
          Top = 17
          Width = 60
          Height = 13
          Caption = 'Pre'#231'o Venda'
          FocusControl = edtPrecoVenda
        end
        object Label1: TLabel [3]
          Left = 18
          Top = 62
          Width = 55
          Height = 13
          Caption = 'Fornecedor'
          FocusControl = EdtDescricao
        end
        object Label6: TLabel [4]
          Left = 255
          Top = 62
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object EdtDescricao: TDBEdit
          Left = 18
          Top = 33
          Width = 309
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dmTabelas.dsProduto
          TabOrder = 2
        end
        object edtPrecoVenda: TDBEdit
          Left = 333
          Top = 33
          Width = 110
          Height = 21
          DataField = 'PRC_VENDA'
          DataSource = dmTabelas.dsProduto
          TabOrder = 3
        end
        object dblFornecedor: TDBLookupComboBox
          Left = 18
          Top = 78
          Width = 231
          Height = 21
          DataField = 'ID_FORN'
          DataSource = dmTabelas.dsProduto
          KeyField = 'ID'
          ListField = 'RAZAO_SOCIAL'
          ListSource = dmTabelas.dsFornecedor
          TabOrder = 4
        end
        object cbStatus: TDBComboBox
          Left = 255
          Top = 78
          Width = 116
          Height = 21
          Style = csDropDownList
          DataField = 'STATUS'
          DataSource = dmTabelas.dsProduto
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 5
        end
      end
    end
  end
end
