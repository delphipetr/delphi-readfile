object Form1: TForm1
  Left = 502
  Top = 109
  Width = 411
  Height = 344
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
  object Memo1: TMemo
    Left = 10
    Top = 50
    Width = 269
    Height = 245
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 12
    Top = 20
    Width = 75
    Height = 25
    Caption = 'select files'
    TabOrder = 1
    WordWrap = True
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 282
    Top = 50
    Width = 101
    Height = 245
    ItemHeight = 13
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 118
    Top = 10
  end
end
