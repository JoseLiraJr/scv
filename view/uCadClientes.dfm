inherited frmCadClientes: TfrmCadClientes
  Caption = 'Cadastro de Cliente'
  ClientHeight = 292
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTop: TFlowPanel
    inherited btnExcluir: TBitBtn
      OnClick = btnExcluirClick
    end
  end
  inherited pnBody: TFlowPanel
    Height = 251
    ExplicitHeight = 251
    inherited pgcBase: TPageControl
      Height = 244
      ActivePage = tabCadastro
      ExplicitHeight = 244
      inherited tabConsulta: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 473
        ExplicitHeight = 216
        inherited GroupBox1: TGroupBox
          inherited btnLocalizar: TSpeedButton
            OnClick = btnLocalizarClick
          end
          inherited rbDescricao: TRadioButton
            Caption = 'Nome do Cliente'
          end
          inherited edtLocalizar: TEdit
            OnKeyPress = EditsKeyPress
          end
        end
        inherited grdConsulta: TDBGrid
          Height = 159
          DataSource = dmTabelas.dsCliente
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UF'
              Width = 84
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STATUS'
              Width = 81
              Visible = True
            end>
        end
      end
      inherited tabCadastro: TTabSheet
        ExplicitHeight = 216
        inherited Bevel1: TBevel
          Left = 6
          Top = 6
          Width = 457
          Height = 174
          ExplicitLeft = 6
          ExplicitTop = 6
          ExplicitWidth = 457
          ExplicitHeight = 174
        end
        object Label1: TLabel [1]
          Left = 16
          Top = 20
          Width = 63
          Height = 13
          Caption = 'Nome Cliente'
        end
        object Label6: TLabel [2]
          Left = 277
          Top = 69
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object Label3: TLabel [3]
          Left = 197
          Top = 69
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label4: TLabel [4]
          Left = 16
          Top = 69
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = edtCidade
        end
        inherited btnConfirmar: TBitBtn
          Top = 187
          TabOrder = 4
          ExplicitTop = 187
        end
        inherited btnCancelar: TBitBtn
          Top = 187
          TabOrder = 5
          ExplicitTop = 187
        end
        object cbStatus: TDBComboBox
          Left = 277
          Top = 85
          Width = 116
          Height = 21
          Style = csDropDownList
          DataField = 'STATUS'
          DataSource = dmTabelas.dsCliente
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 3
        end
        object edtNome: TDBEdit
          Left = 16
          Top = 36
          Width = 377
          Height = 21
          DataField = 'NOME'
          DataSource = dmTabelas.dsCliente
          TabOrder = 0
        end
        object DBComboBox1: TDBComboBox
          Left = 197
          Top = 85
          Width = 73
          Height = 21
          Style = csDropDownList
          DataField = 'UF'
          DataSource = dmTabelas.dsCliente
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          TabOrder = 2
        end
        object edtCidade: TDBEdit
          Left = 16
          Top = 85
          Width = 175
          Height = 21
          DataField = 'CIDADE'
          DataSource = dmTabelas.dsCliente
          TabOrder = 1
        end
      end
    end
  end
end
