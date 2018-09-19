object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Book'
  ClientHeight = 344
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object FiLE1: TMenuItem
      Caption = '&File'
      object AddAddress1: TMenuItem
        Caption = '&Address Book'
        OnClick = AddAddress1Click
      end
    end
    object Exit1: TMenuItem
      Caption = '&Exit'
      OnClick = Exit1Click
    end
  end
end
