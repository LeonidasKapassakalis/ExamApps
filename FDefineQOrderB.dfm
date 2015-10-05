object frmDefineQOrderB: TfrmDefineQOrderB
  Left = 449
  Height = 439
  Top = 178
  Width = 312
  Caption = 'Define Order'
  ClientHeight = 439
  ClientWidth = 312
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  LCLVersion = '1.2.6.0'
  object CheckListBox1: TCheckListBox
    Left = 16
    Height = 97
    Hint = 'Φθίνουσα Ταξινόμηση στα Εοιλεγμένα'
    Top = 136
    Width = 273
    ItemHeight = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 16
    Height = 97
    Hint = 'Σειρά Πεδίων'
    Top = 256
    Width = 273
    ItemHeight = 0
    TabOrder = 1
  end
  object ListBox2: TListBox
    Left = 16
    Height = 97
    Hint = 'Πεδία '
    Top = 16
    Width = 273
    ItemHeight = 0
    OnDblClick = ListBox2DblClick
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Height = 25
    Top = 368
    Width = 75
    Caption = 'Αποδοχή'
    Font.CharSet = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = '@Arial Unicode MS'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ModalResult = 1
    OnClick = actAcceptExecute
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 112
    Height = 25
    Top = 368
    Width = 75
    Caption = 'Απόρριψη'
    Font.CharSet = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = '@Arial Unicode MS'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ModalResult = 2
    OnClick = actQuitExecute
    ParentFont = False
    TabOrder = 4
  end
  object Button3: TButton
    Left = 216
    Height = 25
    Top = 368
    Width = 75
    Caption = 'Clear'
    OnClick = actClearExecute
    TabOrder = 5
  end
end
