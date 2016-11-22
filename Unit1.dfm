object Form1: TForm1
  Left = 284
  Top = 195
  Width = 635
  Height = 457
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 90
    Top = 187
    Width = 29
    Height = 13
    Caption = 'ETTN'
  end
  object Button1: TButton
    Left = 264
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 232
    Width = 75
    Height = 25
    Caption = 'G'#246'nder'
    TabOrder = 1
    OnClick = Button2Click
  end
  object txtETTN: TEdit
    Left = 136
    Top = 184
    Width = 209
    Height = 21
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Left = 152
    Top = 112
  end
end
