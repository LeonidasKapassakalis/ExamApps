object frmPasswordDlg: TfrmPasswordDlg
  Left = 314
  Top = 164
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Password Dialog'
  ClientHeight = 147
  ClientWidth = 233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 65
    Width = 76
    Height = 13
    Caption = 'Enter password:'
  end
  object Label2: TLabel
    Left = 8
    Top = 9
    Width = 26
    Height = 13
    Caption = 'Login'
  end
  object Password: TEdit
    Left = 8
    Top = 83
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object OKBtn: TButton
    Left = 70
    Top = 115
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 150
    Top = 115
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    OnClick = CancelBtnClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 35
    Width = 217
    Height = 21
    TabOrder = 0
  end
end
