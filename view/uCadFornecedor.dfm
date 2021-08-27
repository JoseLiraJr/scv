inherited frmCadFornecedor: TfrmCadFornecedor
  Caption = 'Cadastro de Fornecedor'
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
          inherited rbDescricao: TRadioButton
            Caption = 'Raz'#227'o Social'
          end
          inherited edtLocalizar: TEdit
            OnKeyPress = EditsKeyPress
          end
        end
        inherited grdConsulta: TDBGrid
          DataSource = dmTabelas.dsFornecedor
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO_SOCIAL'
              Width = 230
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_FANTASIA'
              Width = 230
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJ'
              Width = 109
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
        object Label1: TLabel [1]
          Left = 24
          Top = 69
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          FocusControl = edtNomeFantasia
        end
        object Label2: TLabel [2]
          Left = 24
          Top = 24
          Width = 60
          Height = 13
          Caption = 'Raz'#227'o Social'
          FocusControl = edtRazaoSocial
        end
        object Label3: TLabel [3]
          Left = 300
          Top = 24
          Width = 25
          Height = 13
          Caption = 'CNPJ'
          FocusControl = edtCnpj
        end
        object Label6: TLabel [4]
          Left = 300
          Top = 69
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object edtNomeFantasia: TDBEdit
          Left = 24
          Top = 85
          Width = 270
          Height = 21
          DataField = 'NOME_FANTASIA'
          DataSource = dmTabelas.dsFornecedor
          TabOrder = 4
        end
        object edtRazaoSocial: TDBEdit
          Left = 24
          Top = 40
          Width = 270
          Height = 21
          DataField = 'RAZAO_SOCIAL'
          DataSource = dmTabelas.dsFornecedor
          TabOrder = 2
        end
        object edtCnpj: TDBEdit
          Left = 300
          Top = 40
          Width = 150
          Height = 21
          DataField = 'CNPJ'
          DataSource = dmTabelas.dsFornecedor
          TabOrder = 3
          OnKeyPress = EditsKeyPress
        end
        object cbStatus: TDBComboBox
          Left = 300
          Top = 85
          Width = 116
          Height = 21
          Style = csDropDownList
          DataField = 'STATUS'
          DataSource = dmTabelas.dsFornecedor
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 5
        end
      end
    end
  end
end
