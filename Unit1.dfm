object Form1: TForm1
  Left = 381
  Top = 118
  BorderStyle = bsToolWindow
  Caption = 'Trocar IP By Rafinhaa'
  ClientHeight = 137
  ClientWidth = 231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 63
    Height = 18
    Caption = 'Conexao'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 73
    Height = 18
    Caption = 'Numero IP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object txtnome: TEdit
    Left = 104
    Top = 8
    Width = 97
    Height = 21
    TabOrder = 0
    Text = 'Ethernet'
  end
  object btntrocar: TButton
    Left = 8
    Top = 104
    Width = 193
    Height = 25
    Caption = 'Trocar'
    TabOrder = 6
    OnClick = btntrocarClick
  end
  object txtip: TEdit
    Left = 104
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 1
    Text = '172.21.21.12'
    OnKeyPress = txtipKeyPress
  end
  object txtmascara: TEdit
    Left = 104
    Top = 56
    Width = 97
    Height = 21
    Color = clBtnFace
    Enabled = False
    TabOrder = 3
    Text = '255.255.0.0'
    OnKeyPress = txtmascaraKeyPress
  end
  object txtgatway: TEdit
    Left = 104
    Top = 80
    Width = 97
    Height = 21
    Color = clBtnFace
    Enabled = False
    TabOrder = 5
    Text = '172.21.0.18'
    OnKeyPress = txtgatwayKeyPress
  end
  object chkmascara: TCheckBox
    Left = 8
    Top = 57
    Width = 89
    Height = 15
    Caption = 'Mascara'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = chkmascaraClick
  end
  object chkgatway: TCheckBox
    Left = 8
    Top = 80
    Width = 81
    Height = 17
    Caption = 'Gateway'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = chkgatwayClick
  end
  object btnip: TButton
    Left = 208
    Top = 32
    Width = 17
    Height = 25
    Caption = '?'
    TabOrder = 7
    OnClick = btnipClick
  end
end
