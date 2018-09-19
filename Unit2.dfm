object FrmReg: TFrmReg
  Left = 0
  Top = 0
  Caption = 'Book'
  ClientHeight = 428
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblName: TLabel
    Left = 8
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object LblSurname: TLabel
    Left = 8
    Top = 125
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object LblCompany: TLabel
    Left = 8
    Top = 160
    Width = 45
    Height = 13
    Caption = 'Company'
  end
  object LblTitle: TLabel
    Left = 8
    Top = 192
    Width = 20
    Height = 13
    Caption = 'Title'
  end
  object LblEmail: TLabel
    Left = 8
    Top = 224
    Width = 28
    Height = 13
    Caption = 'E-Mail'
  end
  object LblLName: TLabel
    Left = 360
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object LblLSurname: TLabel
    Left = 464
    Top = 72
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object LblLCompany: TLabel
    Left = 567
    Top = 72
    Width = 45
    Height = 13
    Caption = 'Company'
  end
  object LblLTitle: TLabel
    Left = 693
    Top = 72
    Width = 20
    Height = 13
    Caption = 'Title'
  end
  object LblLEmail: TLabel
    Left = 840
    Top = 72
    Width = 28
    Height = 13
    Caption = 'E-Mail'
  end
  object GBFileButton: TGroupBox
    Left = 208
    Top = 0
    Width = 529
    Height = 45
    TabOrder = 11
  end
  object EName: TEdit
    Left = 56
    Top = 93
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object ESurname: TEdit
    Left = 56
    Top = 122
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object ECompany: TEdit
    Left = 56
    Top = 157
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object ETitle: TEdit
    Left = 56
    Top = 192
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object EEmail: TEdit
    Left = 56
    Top = 221
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object MemName: TMemo
    Left = 313
    Top = 91
    Width = 112
    Height = 220
    TabOrder = 5
  end
  object MemSurname: TMemo
    Left = 431
    Top = 91
    Width = 106
    Height = 220
    TabOrder = 6
  end
  object MemCompany: TMemo
    Left = 543
    Top = 91
    Width = 106
    Height = 220
    TabOrder = 7
  end
  object MemTitle: TMemo
    Left = 655
    Top = 91
    Width = 102
    Height = 220
    TabOrder = 8
  end
  object MemEmail: TMemo
    Left = 763
    Top = 91
    Width = 170
    Height = 220
    TabOrder = 9
  end
  object BtnSelectFile: TButton
    Left = 208
    Top = 16
    Width = 225
    Height = 25
    Caption = 'Select Address Book File'
    TabOrder = 10
    OnClick = BtnSelectFileClick
  end
  object BtnReadFromFile: TButton
    Left = 512
    Top = 16
    Width = 225
    Height = 25
    Caption = 'Read All From Address Book '
    TabOrder = 12
    OnClick = BtnReadFromFileClick
  end
  object BtnAddToAddress: TButton
    Left = 96
    Top = 264
    Width = 121
    Height = 25
    Caption = 'Add To Address Book'
    TabOrder = 13
    OnClick = BtnAddToAddressClick
  end
  object BtnClear: TButton
    Left = 751
    Top = 336
    Width = 81
    Height = 25
    Caption = 'Clear List'
    TabOrder = 14
    OnClick = BtnClearClick
  end
  object BtnClose: TButton
    Left = 852
    Top = 336
    Width = 81
    Height = 25
    Caption = 'Close'
    TabOrder = 15
    OnClick = BtnCloseClick
  end
  object BtnSearch: TButton
    Left = 647
    Top = 336
    Width = 81
    Height = 25
    Caption = 'Search'
    TabOrder = 16
    OnClick = BtnSearchClick
  end
  object ODFile: TOpenDialog
    Left = 8
    Top = 384
  end
end
