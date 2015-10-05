object frmFilterEn2: TfrmFilterEn2
  Left = 361
  Height = 352
  Top = 205
  Width = 566
  BorderIcons = [biSystemMenu]
  Caption = 'Φίλτρο'
  ClientHeight = 352
  ClientWidth = 566
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  OnCreate = FormCreate
  LCLVersion = '1.4.0.4'
  object btnAccept: TBitBtn
    Left = 433
    Height = 26
    Top = 326
    Width = 109
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Kind = bkOK
    ModalResult = 1
    OnClick = btnAcceptClick
    Spacing = 20
    TabOrder = 0
  end
  object DataSource99: TDataSource
    DataSet = SQLMemTable1
    left = 32
    top = 16
  end
  object SQLMemTable1: TZMQueryDataSet
    FieldDefs = <>
    QueryExecuted = False
    TableLoaded = False
    TableSaved = False
    DynamicFieldsCreated = False
    PeristentFieldsCreated = False
    MemoryDataSetOpened = False
    PersistentSave = False
    Parameters = <>
    MasterDetailFiltration = False
    FilterOptions = []
    left = 37
    top = 88
  end
  object PopChLstBox: TPopupMenu
    left = 37
    top = 168
  end
end
