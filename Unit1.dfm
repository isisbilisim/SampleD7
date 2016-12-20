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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 619
    Height = 418
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Bilgiler'
      object Label2: TLabel
        Left = 114
        Top = 56
        Width = 22
        Height = 13
        Caption = 'VKN'
      end
      object Label3: TLabel
        Left = 114
        Top = 80
        Width = 39
        Height = 13
        Caption = 'Kullan'#253'c'#253
      end
      object Label4: TLabel
        Left = 114
        Top = 104
        Width = 21
        Height = 13
        Caption = #222'ifre'
      end
      object txtVKN: TEdit
        Left = 165
        Top = 51
        Width = 209
        Height = 21
        TabOrder = 0
      end
      object txtUser: TEdit
        Left = 165
        Top = 75
        Width = 209
        Height = 21
        TabOrder = 1
      end
      object txtPass: TEdit
        Left = 165
        Top = 99
        Width = 209
        Height = 21
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Haz'#253'rla'
      ImageIndex = 1
      object Label1: TLabel
        Left = 90
        Top = 152
        Width = 29
        Height = 13
        Caption = 'ETTN'
      end
      object txtETTN: TEdit
        Left = 125
        Top = 147
        Width = 209
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 174
        Top = 200
        Width = 75
        Height = 25
        Caption = 'UBL Haz'#253'rla'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'G'#246'nder'
      ImageIndex = 2
      object Button2: TButton
        Left = 206
        Top = 140
        Width = 75
        Height = 25
        Caption = 'G'#246'nder'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'M'#252'kellef'
      ImageIndex = 3
      DesignSize = (
        611
        390)
      object Label5: TLabel
        Left = 208
        Top = 16
        Width = 59
        Height = 13
        Caption = 'M'#252#254'teri VKN'
      end
      object Button3: TButton
        Left = 240
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Sorgula'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Edit1: TEdit
        Left = 272
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '4660392430'
      end
      object Memo1: TMemo
        Left = 0
        Top = 152
        Width = 611
        Height = 238
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
      end
      object Button4: TButton
        Left = 240
        Top = 80
        Width = 75
        Height = 25
        Anchors = [akLeft]
        Caption = 'T'#252'm Liste'
        TabOrder = 3
        OnClick = Button4Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 32
    Top = 224
  end
end
