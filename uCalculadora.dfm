object FCalculadora: TFCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 261
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lblCalculadora: TLabel
    Left = 130
    Top = 32
    Width = 124
    Height = 19
    Caption = 'CALCULADORA'
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 177
    Top = 99
    Width = 17
    Height = 25
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblValor1: TLabel
    Left = 110
    Top = 57
    Width = 44
    Height = 13
    Caption = 'VALOR1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblValor2: TLabel
    Left = 228
    Top = 53
    Width = 44
    Height = 13
    Caption = 'VALOR2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValor1: TEdit
    Left = 82
    Top = 72
    Width = 89
    Height = 21
    TabOrder = 0
    OnExit = edtValor1Exit
  end
  object edtValor2: TEdit
    Left = 202
    Top = 72
    Width = 89
    Height = 21
    TabOrder = 1
    OnExit = edtValor2Exit
  end
  object edtResultado: TEdit
    Left = 138
    Top = 130
    Width = 97
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object btnAdicao: TButton
    Left = 26
    Top = 200
    Width = 75
    Height = 25
    Caption = 'ADI'#199#195'O - F4'
    TabOrder = 3
    OnClick = btnAdicaoClick
  end
  object btnSubtracao: TButton
    Left = 107
    Top = 200
    Width = 89
    Height = 25
    Caption = 'SUBTRA'#199#195'O - F5'
    TabOrder = 4
    OnClick = btnSubtracaoClick
  end
  object btnDivisao: TButton
    Left = 202
    Top = 200
    Width = 75
    Height = 25
    Caption = 'DIVIS'#195'O - F6'
    TabOrder = 5
    OnClick = btnDivisaoClick
  end
  object btnMultiplicar: TButton
    Left = 283
    Top = 200
    Width = 113
    Height = 25
    Caption = 'MULTIPLICA'#199#195'O - F7'
    TabOrder = 6
    OnClick = btnMultiplicarClick
  end
  object btnSobra: TButton
    Left = 402
    Top = 200
    Width = 75
    Height = 25
    Caption = 'SOBRA - F8'
    TabOrder = 7
    OnClick = btnSobraClick
  end
  object Mehistorico: TMemo
    Left = 317
    Top = 34
    Width = 185
    Height = 145
    Lines.Strings = (
      '')
    TabOrder = 8
    Visible = False
  end
  object btnHistorico: TButton
    Left = 152
    Top = 228
    Width = 169
    Height = 25
    Caption = 'HISTORICO DE OPERA'#199#213'ES - F9'
    TabOrder = 9
    OnClick = btnHistoricoClick
  end
  object btnLimpaHistorico: TButton
    Left = 344
    Top = 228
    Width = 75
    Height = 25
    Caption = 'LIMPAR - F10'
    TabOrder = 10
    OnClick = btnLimpaHistoricoClick
  end
end
