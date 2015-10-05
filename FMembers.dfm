inherited frmMembers: TfrmMembers
  Left = 230
  Top = 161
  ActiveControl = nil
  Caption = #928#961#945#964#942#961#953#945
  ClientHeight = 661
  ClientWidth = 807
  ExplicitWidth = 815
  ExplicitHeight = 707
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 16
    Top = 136
    Width = 37
    Height = 13
    Caption = #927#948#951#947#972#962
  end
  inherited panTop: TGradPan
    Top = 102
    Width = 807
    ColorStart = clWhite
    ExplicitTop = 102
    ExplicitWidth = 807
    inherited dbtMain: TDBText
      DataField = 'Name'
    end
  end
  inherited pcPage: TExtPageControl
    Top = 143
    Width = 807
    Height = 499
    ActivePage = tsDetail
    Align = alClient
    Anchors = []
    ExplicitTop = 143
    ExplicitWidth = 807
    ExplicitHeight = 499
    inherited tsMain: TTabSheet
      ExplicitWidth = 799
      ExplicitHeight = 489
      inherited panClient01: TGradPan
        Width = 799
        Height = 489
        ExplicitWidth = 799
        ExplicitHeight = 489
        inherited dgData: TDBGrid
          Left = 0
          Top = 0
          Width = 795
          Height = 485
          Align = alClient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
          PopupMenu = popFilter
        end
      end
    end
    inherited tsDetail: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 6
      ExplicitWidth = 799
      ExplicitHeight = 489
      inherited panClient02: TGradPan
        Width = 799
        Height = 489
        DockSite = True
        ExplicitWidth = 799
        ExplicitHeight = 489
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 795
          Height = 485
          ActivePage = TabSheet1
          Align = alClient
          MultiLine = True
          PopupMenu = popFilter
          ScrollOpposite = True
          Style = tsButtons
          TabOrder = 0
          OnChange = PageControl1Change
          OnChanging = PageControl1Changing
          object TabSheet1: TTabSheet
            Caption = #915#949#957#953#954#940' '#931#964#959#953#967#949#943#945
            ImageIndex = 5
            object DBText1: TDBText
              Left = 72
              Top = 8
              Width = 65
              Height = 17
              Alignment = taRightJustify
              Color = clInactiveCaption
              DataField = 'Id'
              DataSource = DMMembers.dsUpdCustLoc
              ParentColor = False
            end
            object Label1: TLabel
              Left = 8
              Top = 8
              Width = 24
              Height = 13
              Caption = #922#969#948'.'
            end
            object Label2: TLabel
              Left = 8
              Top = 32
              Width = 29
              Height = 13
              Caption = 'Omnis'
            end
            object Label3: TLabel
              Left = 8
              Top = 56
              Width = 46
              Height = 13
              Caption = #927#957#959#956#945#963#943#945
            end
            object Label11: TLabel
              Left = 8
              Top = 136
              Width = 16
              Height = 13
              Caption = 'T.K'
            end
            object Label12: TLabel
              Left = 8
              Top = 112
              Width = 30
              Height = 13
              Caption = #925#959#956#972#962
            end
            object Label13: TLabel
              Left = 8
              Top = 88
              Width = 50
              Height = 13
              Caption = #916#953#949#973#952#965#957#963#951
            end
            object Label4: TLabel
              Left = 272
              Top = 40
              Width = 51
              Height = 13
              Caption = 'sta_owner'
            end
            object Label9: TLabel
              Left = 232
              Top = 32
              Width = 34
              Height = 13
              Caption = 'LOmnis'
              FocusControl = DBLookupComboBox2
            end
            object Label10: TLabel
              Left = 8
              Top = 368
              Width = 55
              Height = 13
              Caption = 'Install Date'
            end
            object Label14: TLabel
              Left = 8
              Top = 392
              Width = 23
              Height = 13
              Caption = 'Virus'
            end
            object DBEdit1: TDBEdit
              Left = 72
              Top = 32
              Width = 134
              Height = 21
              DataField = 'OmnisId'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 72
              Top = 56
              Width = 654
              Height = 21
              DataField = 'Name'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 72
              Top = 80
              Width = 600
              Height = 21
              DataField = 'Addrr'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 72
              Top = 104
              Width = 134
              Height = 21
              DataField = 'Nomos'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 72
              Top = 128
              Width = 69
              Height = 21
              DataField = 'TK'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 4
            end
            object DBRichEdit1: TDBRichEdit
              Left = 8
              Top = 160
              Width = 745
              Height = 193
              DataField = 'Comm'
              DataSource = DMMembers.dsUpdCustLoc
              Font.Charset = GREEK_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 216
              Top = 32
              Width = 274
              Height = 21
              DataField = 'LOmnis'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 6
            end
            object DBEdit7: TDBEdit
              Left = 88
              Top = 384
              Width = 121
              Height = 21
              Hint = 'Virus Start'
              DataField = 'AntiVirusActivation'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 7
              OnDblClick = DBEdit7DblClick
            end
            object DBEdit9: TDBEdit
              Left = 344
              Top = 384
              Width = 401
              Height = 21
              Hint = 'Virus'
              TabOrder = 8
            end
            object DBEdit8: TDBEdit
              Left = 216
              Top = 384
              Width = 121
              Height = 21
              Hint = 'Virus Expire'
              DataField = 'AntiVirusActivation'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 9
              OnDblClick = DBEdit8DblClick
            end
            object DBEdit6: TDBEdit
              Left = 88
              Top = 360
              Width = 121
              Height = 21
              DataField = 'InstallDate'
              DataSource = DMMembers.dsUpdCustLoc
              TabOrder = 10
              OnDblClick = DBEdit7DblClick
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 280
              Top = 112
              Width = 249
              Height = 42
              Columns = 2
              DataField = 'SouthNorth'
              DataSource = DMMembers.dsUpdCustLoc
              Items.Strings = (
                #925#972#964#959#962
                #914#959#961#961#940#962)
              ParentBackground = True
              TabOrder = 11
              Values.Strings = (
                '1'
                '2')
            end
          end
          object TabSheet2: TTabSheet
            Caption = #928#949#955#940#964#949#962
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 787
              Height = 457
              Align = alClient
              DataSource = DMMembers.dsQRelFesCust
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'TabSheet3'
            ImageIndex = 2
            TabVisible = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label5: TLabel
              Left = 8
              Top = 16
              Width = 56
              Height = 13
              Caption = #919#956#949#961#959#956#951#957#943#945
            end
            object Label7: TLabel
              Left = 8
              Top = 48
              Width = 59
              Height = 13
              Caption = #922#969#948'.'#928#949#955#940#964#951
            end
            object Label8: TLabel
              Left = 8
              Top = 88
              Width = 59
              Height = 13
              Caption = #928#945#961#945#955#973#960#964#951#962
            end
            object dbtSapId: TDBText
              Left = 80
              Top = 40
              Width = 97
              Height = 17
              Alignment = taRightJustify
              Color = clGrayText
              DataField = 'SapId'
              DataSource = DMMembers.dsQRelFesCust
              ParentColor = False
              OnClick = FindSapExecute
              OnDblClick = FindSapExecute
            end
            object dbtLocSapId: TDBText
              Left = 238
              Top = 40
              Width = 65
              Height = 17
              Alignment = taRightJustify
              Color = clHighlightText
              DataField = 'LocSapId'
              DataSource = DMMembers.dsQRelFesCust
              ParentColor = False
            end
            object DBText3: TDBText
              Left = 326
              Top = 40
              Width = 435
              Height = 17
              Color = clHighlightText
              DataField = 'LName'
              DataSource = DMMembers.dsQRelFesCust
              ParentColor = False
            end
            object DBText4: TDBText
              Left = 80
              Top = 80
              Width = 97
              Height = 17
              Alignment = taRightJustify
              Color = clGrayText
              DataField = 'ShipId'
              DataSource = DMMembers.dsQRelFesCust
              ParentColor = False
              OnClick = FindShipExecute
              OnDblClick = FindShipExecute
            end
            object DBText5: TDBText
              Left = 238
              Top = 80
              Width = 65
              Height = 17
              Alignment = taRightJustify
              Color = clHighlightText
              DataField = 'LocShipId'
              DataSource = DMMembers.dsQRelFesCust
              ParentColor = False
            end
            object DBText6: TDBText
              Left = 326
              Top = 80
              Width = 435
              Height = 17
              Color = clHighlightText
              DataField = 'LAddr'
              DataSource = DMMembers.dsQRelFesCust
              ParentColor = False
            end
            object SpeedButton1: TSpeedButton
              Left = 192
              Top = 40
              Width = 23
              Height = 22
              OnClick = FindSapExecute
            end
            object SpeedButton2: TSpeedButton
              Left = 192
              Top = 80
              Width = 23
              Height = 22
              OnClick = FindShipExecute
            end
            object SpeedButton3: TSpeedButton
              Left = 232
              Top = 8
              Width = 23
              Height = 22
              Action = FindDate
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 80
              Top = 8
              Width = 144
              Height = 21
              DataField = 'LDate'
              DataSource = DMMembers.dsQRelFesCust
              TabOrder = 0
            end
          end
          object Pdf: TTabSheet
            Caption = 'Pdf'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 787
              Height = 457
              Align = alClient
              DataSource = DMMembers.dsQRelPdfCust
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'TabSheet6'
            ImageIndex = 5
            TabVisible = False
            object Label15: TLabel
              Left = 32
              Top = 24
              Width = 38
              Height = 13
              Caption = 'PdfText'
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 787
              Height = 41
              Align = alTop
              Caption = 'Panel1'
              TabOrder = 0
              object DBEdit10: TDBEdit
                Left = 8
                Top = 8
                Width = 600
                Height = 21
                DataField = 'PdfText'
                DataSource = DMMembers.DataSource4
                TabOrder = 0
                OnDblClick = DBEdit10DblClick
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 41
              Width = 787
              Height = 416
              Align = alClient
              Caption = 'Panel2'
              TabOrder = 1
              object AcroPDF2: TAcroPDF
                Left = 1
                Top = 1
                Width = 785
                Height = 414
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 765
                ExplicitHeight = 375
                ControlData = {0008000022510000CA2A0000}
              end
            end
          end
          object TabViewPdf: TTabSheet
            Caption = 'TabViewPdf'
            ImageIndex = 5
            TabVisible = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 787
              Height = 41
              Align = alTop
              Caption = 'Panel1'
              TabOrder = 0
              object DBEdit11: TDBEdit
                Left = 8
                Top = 8
                Width = 600
                Height = 21
                DataField = 'PdfText'
                DataSource = DMMembers.dsQRelPdfCust
                TabOrder = 0
              end
            end
            object Panel4: TPanel
              Left = 0
              Top = 41
              Width = 787
              Height = 416
              Align = alClient
              Caption = 'Panel2'
              TabOrder = 1
              object AcroPDF1: TAcroPDF
                Left = 1
                Top = 1
                Width = 785
                Height = 414
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 765
                ExplicitHeight = 375
                ControlData = {0008000022510000CA2A0000}
              end
            end
          end
          object MakData: TTabSheet
            Caption = 'MakData'
            ImageIndex = 6
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object PnlTopMak: TPanel
              Left = 0
              Top = -263
              Width = 787
              Height = 327
              Align = alBottom
              Caption = 'PnlTopMak'
              TabOrder = 0
            end
            object PnlCntrMak: TPanel
              Left = 0
              Top = 64
              Width = 787
              Height = 208
              Align = alBottom
              Caption = 'PnlCntrMak'
              TabOrder = 1
              object DbGridPhone: TDBGrid
                Left = 1
                Top = 41
                Width = 785
                Height = 166
                Align = alClient
                DataSource = DMMembers.dsMakPratPhone
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
              end
              object ToolBar3: TToolBar
                Left = 1
                Top = 1
                Width = 785
                Height = 40
                ButtonHeight = 38
                ButtonWidth = 39
                Caption = 'ToolBar2'
                Images = ImageList1
                TabOrder = 1
                object ToolButton30: TToolButton
                  Left = 0
                  Top = 0
                  Action = actPhoneAdd
                end
                object ToolButton31: TToolButton
                  Left = 39
                  Top = 0
                  Action = actPhoneDelete
                end
                object ToolButton32: TToolButton
                  Left = 78
                  Top = 0
                  Action = actPhoneEdit
                end
                object ToolButton33: TToolButton
                  Left = 117
                  Top = 0
                  Action = actPhonePost
                end
                object ToolButton34: TToolButton
                  Left = 156
                  Top = 0
                  Action = actPhoneCancel
                end
              end
            end
            object PnlBtmMak: TPanel
              Left = 0
              Top = 272
              Width = 787
              Height = 185
              Align = alBottom
              Caption = 'PnlBtmMak'
              TabOrder = 2
              object DbGridIP: TDBGrid
                Left = 1
                Top = 41
                Width = 785
                Height = 143
                Align = alClient
                DataSource = DMMembers.dsMakPratIP
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
              end
              object ToolBar2: TToolBar
                Left = 1
                Top = 1
                Width = 785
                Height = 40
                ButtonHeight = 38
                ButtonWidth = 39
                Caption = 'ToolBar2'
                Images = ImageList1
                TabOrder = 1
                object ToolButton35: TToolButton
                  Left = 0
                  Top = 0
                  Action = actIPAdd
                end
                object ToolButton36: TToolButton
                  Left = 39
                  Top = 0
                  Action = actIPDelete
                end
                object ToolButton37: TToolButton
                  Left = 78
                  Top = 0
                  Action = actIPEdit
                end
                object ToolButton38: TToolButton
                  Left = 117
                  Top = 0
                  Action = actIPPost
                end
                object ToolButton39: TToolButton
                  Left = 156
                  Top = 0
                  Action = actIPCancel
                end
                object ToolButton40: TToolButton
                  Left = 195
                  Top = 0
                  Action = actPing
                end
                object ToolButton41: TToolButton
                  Left = 234
                  Top = 0
                  Action = actVNC
                end
                object ToolButton42: TToolButton
                  Left = 273
                  Top = 0
                  Action = actCmdExec
                end
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'TabSheet5'
            ImageIndex = 7
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object TabSheet7: TTabSheet
            Caption = 'TabSheet7'
            ImageIndex = 8
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 642
    Width = 807
    ExplicitTop = 642
    ExplicitWidth = 807
  end
  inherited ToolBar1: TToolBar
    Width = 807
    Height = 102
    ButtonHeight = 47
    ExplicitWidth = 807
    ExplicitHeight = 102
    inherited ToolButton1: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton2: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton3: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton4: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton5: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton17: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton10: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton6: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton7: TToolButton
      ExplicitHeight = 47
    end
    inherited ToolButton11: TToolButton
      Width = 11
      ExplicitWidth = 11
      ExplicitHeight = 47
    end
    inherited ToolButton8: TToolButton
      Left = 387
      Action = Cancel
      ExplicitLeft = 387
      ExplicitHeight = 47
    end
    inherited ToolButton9: TToolButton
      Left = 433
      Action = Post
      ExplicitLeft = 433
      ExplicitHeight = 47
    end
    inherited ToolButton16: TToolButton
      Left = 0
      Wrap = True
      ExplicitLeft = 0
      ExplicitHeight = 55
    end
    inherited ToolButton13: TToolButton
      Left = 0
      Top = 55
      ExplicitLeft = 0
      ExplicitTop = 55
      ExplicitHeight = 47
    end
    inherited ToolButton12: TToolButton
      Left = 46
      Top = 55
      ExplicitLeft = 46
      ExplicitTop = 55
      ExplicitHeight = 47
    end
    inherited ToolButton15: TToolButton
      Left = 92
      Top = 55
      ExplicitLeft = 92
      ExplicitTop = 55
      ExplicitHeight = 47
    end
    inherited ToolButton14: TToolButton
      Left = 100
      Top = 55
      ExplicitLeft = 100
      ExplicitTop = 55
      ExplicitHeight = 47
    end
    object ToolButton22: TToolButton
      Left = 146
      Top = 55
      Action = actInActive
    end
    object ToolButton18: TToolButton
      Left = 192
      Top = 55
      Action = cmdProshmInsert
    end
    object ToolButton20: TToolButton
      Left = 238
      Top = 55
      Action = cmdProshmDelete
    end
    object ToolButton24: TToolButton
      Left = 284
      Top = 55
      Action = actEquipmentDetFrom
    end
    object ToolButton19: TToolButton
      Left = 330
      Top = 55
      Action = cmdProshmPost
    end
    object ToolButton21: TToolButton
      Left = 376
      Top = 55
      Action = cmdProshmCancel
    end
    object ToolButton23: TToolButton
      Left = 422
      Top = 55
      Action = actPdfInsert
    end
    object ToolButton25: TToolButton
      Left = 468
      Top = 55
      Action = actPdfDelete
    end
    object ToolButton26: TToolButton
      Left = 514
      Top = 55
      Action = actPdfView
    end
    object ToolButton27: TToolButton
      Left = 560
      Top = 55
      Action = actPdfPost
    end
    object ToolButton28: TToolButton
      Left = 606
      Top = 55
      Action = actPdfCancel
    end
    object ToolButton29: TToolButton
      Left = 652
      Top = 55
      Action = actPdf
    end
  end
  object SAPFunctions1: TSAPFunctions [5]
    Left = 632
    Top = 8
    Width = 32
    Height = 32
    ControlData = {
      00000500560A00002B05000000000000000000000000D64449B20115CF118981
      0000E8A49FA001000100560A00002B050000470000000A26522F33204C6F676F
      6EFFFFFF00000352E30B918FCE119DE300AA004BB85101A100009001C0D40100
      0D4D532053616E73205365726966010A26522F33204C6F676F6E1246756E6374
      696F6E204F4358204C6F676F6E0000084B415041532E4C450335303002454C07
      6D6F68746573740341565400000A000000000352E30B918FCE119DE300AA004B
      B85101A100009001C0D401000D4D532053616E73205365726966010000001242
      4150495F4352454449544F525F46494E44FF9E092646554E4354494F4E414C49
      5459260A54686973206D6574686F64206973206F62736F6C6574652E20496E73
      746561642075736520746865206D6574686F6420666F756E6420696E20746865
      20627573696E6573730A6F626A656374204C464131206F72207468652066756E
      6374696F6E206D6F64756C6520424150495F56454E444F525F46494E442E0A54
      686973206D6574686F642066696E647320616C6C2076656E646F727320746861
      7420686176652073746F726564207472616E7366657272656420636F6E74656E
      747320696E0A61207472616E73666572726564206669656C64206F6620612074
      72616E73666572726564207461626C652E205468652073656172636820746572
      6D73206172650A7472616E7366657272656420696E207461626C652053454C4F
      50545F5441422E205468652076656E646F727320666F756E642061726520636F
      6C6C656374656420696E0A7461626C6520524553554C545F5441422E0A416E79
      20626C6F636B73206F722064656C6574696F6E20666C61677320666F756E6420
      666F722074686573652076656E646F727320617265206D61726B65642E0A5468
      65206E756D626572206F6620686974732063616E206265206C696D6974656420
      7573696E6720706172616D65746572204D41585F434E542E2054686520666967
      75726520300A696E646963617465732074686174207468657265206973206E6F
      206C696D69742073657420746F20746865206E756D626572206F662068697473
      2E0A496E20746865207374616E646172642073797374656D2C20616E20657861
      6374207365617263682069732072756E20666F7220746865206669656C642063
      6F6E74656E74730A286669656C642053454C4F50545F5441422D4649454C4456
      414C5545292E20496620796F752073656C6563742074686520504C5F484F4C44
      20706172616D657465722C20796F750A7065726D69742074686520757365206F
      6620746865206D657461206368617261637465722C207768696368206D65616E
      73207468617420222A22206D61736B7320610A63686172616374657220737472
      696E672C20616E6420222B22206D61736B732061206368617261637465722E0A
      4561636820736561726368207465726D2069732070726F636573736564207365
      7061726174656C7920616E64206973206E6F74206C696E6B6564207769746820
      6F746865720A736561726368207465726D732E20496E20656163682063617365
      2C207468657265666F72652C206E6F206D6F7265207468616E206F6E65206669
      656C642069730A736561726368656420696E207468652076656E646F72206D61
      73746572207265636F7264207461626C652E0A54686973206D6574686F642069
      7320434153452073656E7369746976652C207769746820746865206578636570
      74696F6E206F6620746865206D61746368636F64650A6669656C6473206D6169
      6E7461696E656420696E207461626C652054464D432E0A264558414D504C4526
      0A596F752077616E7420746F2066696E64207468652076656E646F7273207768
      6963682068617665207468652076616C7565202232332220696E206669656C64
      0A4C4642312D5045524E522028706572736F6E616C206E756D6265722920696E
      20636F6D70616E7920636F646520303030312E205468652073797374656D2073
      686F756C640A646973706C617920616C6C2076656E646F727320666F756E642E
      20546865207365617263682073686F756C642062652072756E2065786163746C
      792C20746861742069732C0A776974686F7574207573696E67206D6574612063
      6861726163746572732E0A526571756972656420656E74726965733A0A0A5461
      626C652053454C4F50545F5441420A20204669656C6420202020202020202020
      20202020436F6E74656E740A2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D
      2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A2020434F4D505F434F44
      4520202020202020202020303030310A20205441424E414D4520202020202020
      20202020204C4642310A20204649454C444E414D452020202020202020202050
      45524E520A20204649454C4456414C554520202020202020202032330A0A494D
      504F525420706172616D65746572730A20204D41585F434E5420202020202020
      2020202020300A2020504C5F484F4C4420202020202020202020202053504143
      450A0A5472616E7366657272696E672074686520494D504F525420706172616D
      6574657273204D41585F434E5420616E6420504C5F484F4C44206973206F7074
      696F6E616C2C0A62656361757365207468652061626F76652076616C75657320
      617265207468652073616D652061732074686F736520696E2074686520737461
      6E646172640A73797374656D2E0A596F752066696E6420746F2066696E642074
      68652076656E646F72732077686F7365204C4642352D4C46524D41206669656C
      64202864756E6E696E670A726563697069656E742773206163636F756E74206E
      756D6265722920626567696E7320776974682074686520636861726163746572
      20737472696E672022534150222E205468650A7365617263682073686F756C64
      2062652072756E20696E20616C6C20636F6D70616E7920636F6465732C20616E
      642074686520686974206C6973742073686F756C642062650A6C696D69746564
      20746F2061206D78696D756D206F66203130302E204D65746120636861726163
      74657273206D617920626520757365642E0A526571756972656420656E747269
      65733A0A0A5461626C652053454C4F50545F5441420A20204669656C64202020
      202020202020202020202020496E68616C740A2D2D2D2D2D2D2D2D2D2D2D2D2D
      2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A202043
      4F4D505F434F44452020202020202020202053504143450A20205441424E414D
      452020202020202020202020204C4642350A20204649454C444E414D45202020
      202020202020204C46524D410A20204649454C4456414C554520202020202020
      20205341502A0A0A494D504F525420706172616D65746572730A20204D41585F
      434E542020202020202020202020203130300A2020504C5F484F4C4420202020
      2020202020202020580A0A596F75206D757374207472616E7366657220746865
      20696D706F727420706172616D6574657273204D41585F434E5420616E642050
      4C5F484F4C4420626563617573650A7468652061626F76652076616C75657320
      61726520646966666572656E7420746F2074686F736520696E20746865207374
      616E646172642073797374656D2E0A2648494E5453260A0A2646555254484552
      5F534F55524345535F4F465F494E46260A0A000352E30B918FCE119DE300AA00
      4BB85101A100009001C0D401000D4D532053616E732053657269660200000009
      506172616D65746572074D41585F434E541242415049313030385F392D4D4158
      5F434E540400000000001F4D6178696D756D206E756D626572206F6620726563
      6F72647320666F756E64080009506172616D6574657207504C5F484F4C441242
      415049313030385F392D504C5F484F4C44010000000000194D65746120636861
      726163746572207065726D69747465643F0000000352E30B918FCE119DE300AA
      004BB85101A100009001C0D401000D4D532053616E7320536572696601000000
      095374727563747572650652455455524E0B4241504952455455524E310A0000
      0004545950450100000001000000000002494402000100140000000000064E55
      4D42455203001500030000000600074D45535341474504001800DC0000000000
      064C4F475F4E4F0500F4001400000000000A4C4F475F4D53475F4E4F06000801
      0600000006000A4D4553534147455F563107000E013200000000000A4D455353
      4147455F5632080040013200000000000A4D4553534147455F56330900720132
      00000000000A4D4553534147455F56340A00A40132000000000002000000A802
      0000000000000A524553554C545F5441421300000000000000040009434F4D50
      5F434F4445000000001E00075441424E414D45000000001E00094649454C444E
      414D450000000084000A4649454C4456414C5545000000000A000956454E444F
      525F4E4F0000000001000A505354475F424C4B5F470000000001000A50535447
      5F424C4B5F430000000001000A44454C5F464C41475F470000000001000A4445
      4C5F464C41475F43000000000100045459504500000000140002494406000000
      0300064E554D42455200000000DC00074D455353414745000000001400064C4F
      475F4E4F0600000006000A4C4F475F4D53475F4E4F0000000032000A4D455353
      4147455F56310000000032000A4D4553534147455F56320000000032000A4D45
      53534147455F56330000000032000A4D4553534147455F5634C4000000000000
      000A53454C4F50545F5441420400000000000000040009434F4D505F434F4445
      000000001E00075441424E414D45000000001E00094649454C444E414D450000
      000084000A4649454C4456414C5545}
  end
  inherited popFilter: TPopupMenu
    Left = 696
    Top = 11
    inherited MC4: TMenuItem
      Visible = False
    end
    object N25: TMenuItem
      Caption = '-'
    end
  end
  inherited ActionList1: TActionList
    Left = 756
    Top = 8
    inherited Insert: TAction
      Caption = #917'&'#953#963#945#947#969#947#942' 111'
    end
    inherited Refresh: TAction
      Category = 'Before'
    end
    inherited Stat: TAction
      Category = ''
      Visible = False
    end
    object PTown: TAction
      Category = 'After'
    end
    object cmdProshmInsert: TAction
      Category = 'ProshmGB'
      Caption = #917#953#963#945#947#969#947#942' '#931#965#963#967#941#964#951#963#951#962
      ImageIndex = 0
      OnExecute = cmdProshmInsertExecute
    end
    object cmdProshmDelete: TAction
      Category = 'ProshmGB'
      Caption = #916#953#945#947#961#945#966#942' '#931#965#963#967#941#964#951#963#951#962
      ImageIndex = 2
      OnExecute = cmdProshmDeleteExecute
    end
    object cmdProshmPost: TAction
      Category = 'ProshmGA'
      Caption = #917#957#951#956#941#961#969#963#951
      ImageIndex = 7
      ShortCut = 123
      OnExecute = cmdProshmPostExecute
    end
    object cmdProshmCancel: TAction
      Category = 'ProshmGA'
      Caption = #913#954#973#961#969#963#951
      ImageIndex = 8
      ShortCut = 120
      OnExecute = cmdProshmCancelExecute
    end
    object cmdProshmAfter: TAction
      Category = 'ProshmGA'
      Caption = #917#957#941#961#947#949#953#945
      OnExecute = cmdProshmAfterExecute
    end
    object cmdProshmBefore: TAction
      Category = 'ProshmGB'
      Caption = #931#965#963#967#941#964#951#963#951
      OnExecute = cmdProshmBeforeExecute
    end
    object PPolhths: TAction
      Category = 'After'
      Caption = 'PPolhths'
      OnExecute = PPolhthsExecute
    end
    object cmdDetailProshm: TAction
      Category = 'ProshmGB'
      Caption = 'cmdDetailProshm'
      ImageIndex = 11
      OnExecute = cmdDetailProshmExecute
    end
    object actEquipmentDetFrom: TAction
      Category = 'From'
      Caption = 'actEquipmentDet'
      ImageIndex = 11
    end
    object actEquipmentFrom: TAction
      Category = 'From'
      Caption = 'actEquipmentFrom'
    end
    object actEquipmentTo: TAction
      Category = 'From'
      Caption = 'actEquipmentTo'
    end
    object actMoveEquipment: TAction
      Category = 'From'
      Caption = 'actMoveEquipment'
      ImageIndex = 12
    end
    object actDispLocationFrom: TAction
      Category = 'After'
      Caption = 'actDispLocationFrom'
    end
    object actDispLocationTo: TAction
      Category = 'After'
      Caption = 'actDispLocationTo'
    end
    object actMoveDetDetail: TAction
      Category = 'MoveDet'
      Caption = 'actMoveDetDetail'
      ImageIndex = 11
    end
    object actMoveDetEdit: TAction
      Category = 'MoveDet'
      Caption = 'actMoveDetEdit'
      ImageIndex = 1
      OnExecute = actMoveDetEditExecute
    end
    object actMoveDet: TAction
      Category = 'MoveDet'
      Caption = 'actMoveDet'
      OnExecute = actMoveDetExecute
    end
    object actMoveDetPost: TAction
      Category = 'MoveDetA'
      Caption = 'actMoveDetPost'
      ImageIndex = 7
    end
    object actMoveDetCancel: TAction
      Category = 'MoveDetA'
      Caption = 'actMoveDetCancel'
      ImageIndex = 8
      OnExecute = actMoveDetCancelExecute
    end
    object actMoveDetA: TAction
      Category = 'MoveDetA'
      Caption = 'actMoveDetA'
      OnExecute = actMoveDetAExecute
    end
    object actEquipmentDetTo: TAction
      Category = 'To'
      Caption = 'To'
      ImageIndex = 11
    end
    object actCallSap: TAction
      Caption = 'actCallSap'
    end
    object FindSap: TAction
      Category = 'ProshmGA'
      Caption = 'FindSap'
      OnExecute = FindSapExecute
    end
    object FindShip: TAction
      Category = 'ProshmGA'
      Caption = 'FindShip'
      OnExecute = FindShipExecute
    end
    object FindDate: TAction
      Category = 'ProshmGA'
      OnExecute = FindDateExecute
    end
    object actInActive: TAction
      Category = 'Before'
      Caption = #913#957#949#957#949#961#947#972
      ImageIndex = 5
      OnExecute = actInActiveExecute
    end
    object actPdfInsert: TAction
      Category = 'PdfGB'
      Caption = 'InsertPdf'
      ImageIndex = 0
      OnExecute = actPdfInsertExecute
    end
    object actPdfDelete: TAction
      Category = 'PdfGB'
      Caption = 'actPdfDelete'
      ImageIndex = 2
      OnExecute = actPdfDeleteExecute
    end
    object actPdfBefore: TAction
      Category = 'PdfGB'
      Caption = 'Pdf'
      OnExecute = actPdfBeforeExecute
    end
    object actPdfPost: TAction
      Category = 'PdfGA'
      Caption = 'cmdPdfPost'
      ImageIndex = 7
      OnExecute = actPdfPostExecute
    end
    object actPdfCancel: TAction
      Category = 'PdfGA'
      Caption = 'actPdfCancel'
      ImageIndex = 8
      OnExecute = actPdfCancelExecute
    end
    object actPdfAfter: TAction
      Category = 'PdfGA'
      Caption = 'Pdf'
      OnExecute = actPdfAfterExecute
    end
    object actPdfView: TAction
      Category = 'PdfGB'
      Caption = 'actPdfView'
      ImageIndex = 11
      OnExecute = actPdfViewExecute
    end
    object actPdf: TAction
      Category = 'Pdf'
      Caption = 'actPdf'
      ImageIndex = 11
      OnExecute = actPdfExecute
    end
    object actPhoneAdd: TAction
      Category = 'MakIPPhone'
      Caption = 'actAddPhoneIP'
      ImageIndex = 0
      OnExecute = actPhoneAddExecute
    end
    object actPhoneEdit: TAction
      Category = 'MakIPPhone'
      Caption = 'actEditPhone'
      ImageIndex = 1
      OnExecute = actPhoneEditExecute
    end
    object actPhoneDelete: TAction
      Category = 'MakIPPhone'
      Caption = 'actDeletePhone'
      ImageIndex = 2
      OnExecute = actPhoneDeleteExecute
    end
    object actPhonePost: TAction
      Category = 'MakPhoneA'
      Caption = 'actPhonePost'
      ImageIndex = 7
      OnExecute = actPhonePostExecute
    end
    object actPhoneCancel: TAction
      Category = 'MakPhoneA'
      Caption = 'actPhoneCancel'
      ImageIndex = 8
      OnExecute = actPhoneCancelExecute
    end
    object actPhoneParam: TAction
      Category = 'MakIPPhone'
      Caption = 'actPhoneParam'
      ImageIndex = 5
      OnExecute = actPhoneParamExecute
    end
    object actIPAdd: TAction
      Category = 'MakIPPhone'
      Caption = 'actIPAdd'
      ImageIndex = 0
      OnExecute = actIPAddExecute
    end
    object actIPEdit: TAction
      Category = 'MakIPPhone'
      Caption = 'actIPEdit'
      ImageIndex = 1
      OnExecute = actIPEditExecute
    end
    object actIPDelete: TAction
      Category = 'MakIPPhone'
      Caption = 'actIPDelete'
      ImageIndex = 2
      OnExecute = actIPDeleteExecute
    end
    object actIPPost: TAction
      Category = 'MakIPA'
      Caption = 'actIPPost'
      ImageIndex = 7
      OnExecute = actIPPostExecute
    end
    object actIPCancel: TAction
      Category = 'MakIPA'
      Caption = 'actIPCancel'
      ImageIndex = 8
      OnExecute = actIPCancelExecute
    end
    object actIPParam: TAction
      Category = 'MakIPPhone'
      Caption = 'actIPParam'
      ImageIndex = 5
      OnExecute = actIPParamExecute
    end
    object actPing: TAction
      Category = 'MakIPPhone'
      Caption = 'actPing'
      ImageIndex = 12
      OnExecute = actPingExecute
    end
    object actVNC: TAction
      Category = 'MakIPPhone'
      Caption = 'actVNC'
      ImageIndex = 6
      OnExecute = actVNCExecute
    end
    object actCmdExec: TAction
      Category = 'MakIPPhone'
      Caption = 'actCmdExec'
      ImageIndex = 13
      OnExecute = actCmdExecExecute
    end
  end
  inherited MainMenu1: TMainMenu
    Left = 528
    Top = 8
    inherited N1111: TMenuItem
      object N16: TMenuItem [3]
        Action = actInActive
      end
    end
    inherited N2221: TMenuItem
      inherited N11: TMenuItem [0]
      end
      inherited N10: TMenuItem [1]
      end
    end
    object N1: TMenuItem
      Action = cmdProshmBefore
      object cmdProductInsert1: TMenuItem
        Action = cmdProshmInsert
      end
      object cmdProductUpdate1: TMenuItem
        Caption = #924#949#964#945#946#959#955#942' '#928#961#959#963#951#956#949#943#969#963#951#962
        ImageIndex = 1
        OnClick = cmdProshmUpdateExecute
      end
      object cmdProductDelete1: TMenuItem
        Action = cmdProshmDelete
      end
    end
    object N3: TMenuItem
      Action = cmdProshmAfter
      object cmdProductCancel1: TMenuItem
        Action = cmdProshmCancel
      end
      object cmdProductPost1: TMenuItem
        Action = cmdProshmPost
      end
    end
    object Pdf1: TMenuItem
      Action = actPdfBefore
      object InsertPdf1: TMenuItem
        Action = actPdfInsert
      end
      object actPdfDelete1: TMenuItem
        Action = actPdfDelete
      end
      object actPdfView1: TMenuItem
        Action = actPdfView
      end
    end
    object Pdf2: TMenuItem
      Action = actPdfAfter
      object cmdPdfPost1: TMenuItem
        Action = actPdfPost
      end
      object actPdfCancel1: TMenuItem
        Action = actPdfCancel
      end
    end
    object actPdf1: TMenuItem
      Action = actPdf
    end
  end
  inherited ImageList1: TImageList
    Left = 578
    Top = 9
  end
  object OpenDialog1: TOpenDialog
    Left = 644
    Top = 150
  end
  object Ping1: TPing
    Size = 56
    Timeout = 4000
    TTL = 64
    Flags = 0
    OnEchoReply = Ping1EchoReply
    Left = 728
    Top = 184
  end
end
