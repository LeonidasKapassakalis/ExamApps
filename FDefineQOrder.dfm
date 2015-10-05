object frmDefineQOrder: TfrmDefineQOrder
  Left = 266
  Top = 173
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = #922#945#952#959#961#953#963#956#972#962' '#932#945#958#953#957#972#956#951#963#951#962
  ClientHeight = 402
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CheckListBox1: TCheckListBox
    Left = 16
    Top = 136
    Width = 273
    Height = 97
    Hint = #934#952#943#957#959#965#963#945' '#932#945#958#953#957#972#956#951#963#951' '#963#964#945' '#917#959#953#955#949#947#956#941#957#945
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 16
    Top = 256
    Width = 273
    Height = 97
    Hint = #931#949#953#961#940' '#928#949#948#943#969#957
    ItemHeight = 13
    TabOrder = 1
  end
  object ListBox2: TListBox
    Left = 16
    Top = 16
    Width = 273
    Height = 97
    Hint = #928#949#948#943#945' '
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnDblClick = ListBox2DblClick
  end
  object Button1: TButton
    Left = 16
    Top = 368
    Width = 75
    Height = 25
    Action = actAccept
    ModalResult = 1
    TabOrder = 3
  end
  object Button2: TButton
    Left = 112
    Top = 368
    Width = 75
    Height = 25
    Action = actQuit
    ModalResult = 2
    TabOrder = 4
  end
  object Button3: TButton
    Left = 216
    Top = 368
    Width = 75
    Height = 25
    Action = actClear
    TabOrder = 5
  end
  object ActionList1: TActionList
    Left = 160
    Top = 120
    object actAccept: TAction
      Caption = #913#960#959#948#959#967#942
      OnExecute = actAcceptExecute
    end
    object actQuit: TAction
      Caption = #917#958#972#948#959#962
      OnExecute = actQuitExecute
    end
    object actClear: TAction
      Caption = 'Clear'
      OnExecute = actClearExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 120
    object actAccept1: TMenuItem
      Action = actAccept
    end
    object actQuit1: TMenuItem
      Action = actQuit
    end
    object actClear1: TMenuItem
      Action = actClear
    end
  end
end
