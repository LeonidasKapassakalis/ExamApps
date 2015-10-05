object frmFilterEn: TfrmFilterEn
  Left = 326
  Height = 415
  Top = 222
  Width = 605
  BorderIcons = [biSystemMenu]
  Caption = 'Φίλτρο'
  ClientHeight = 415
  ClientWidth = 605
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  OnCreate = FormCreate
  LCLVersion = '1.4.0.4'
  object PageControl: TPageControl
    Left = 0
    Height = 415
    Top = 0
    Width = 605
    ActivePage = TabShMain
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabShMain: TTabSheet
      Caption = 'Main'
      ClientHeight = 389
      ClientWidth = 597
      object btnAccept: TBitBtn
        Left = 441
        Height = 23
        Top = 324
        Width = 137
        Anchors = [akRight, akBottom]
        Caption = 'OK'
        Kind = bkOK
        ModalResult = 1
        OnClick = btnAcceptClick
        TabOrder = 0
      end
    end
  end
  object DataSource99: TDataSource
    left = 16
    top = 32
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
    left = 24
    top = 96
  end
end
