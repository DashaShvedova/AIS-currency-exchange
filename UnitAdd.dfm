object FormAdd: TFormAdd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
  ClientHeight = 518
  ClientWidth = 353
  Color = 15530495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 0
    Top = 0
    Width = 353
    Height = 518
    Align = alClient
    PageIndex = 1
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      ExplicitWidth = 150
      ExplicitHeight = 150
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Clients'
      object PanelAddClients: TPanel
        Left = 0
        Top = 0
        Width = 353
        Height = 518
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 65
          Top = 107
          Width = 65
          Height = 19
          Caption = #1060#1072#1084#1080#1083#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 113
          Top = 51
          Width = 17
          Height = 19
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 101
          Top = 158
          Width = 29
          Height = 19
          Caption = #1048#1084#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 61
          Top = 207
          Width = 69
          Height = 19
          Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 30
          Top = 255
          Width = 100
          Height = 19
          Caption = #1051#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 17
          Top = 302
          Width = 113
          Height = 19
          Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 65
          Top = 355
          Width = 65
          Height = 19
          Caption = #1058#1077#1083#1077#1092#1086#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 85
          Top = 403
          Width = 45
          Height = 19
          Caption = #1055#1086#1095#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object PanelButtonAdd: TPanel
          Left = 113
          Top = 464
          Width = 140
          Height = 33
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Color = 2908365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = PanelButtonAddClick
        end
        object DBEditID: TDBEdit
          Left = 152
          Top = 48
          Width = 169
          Height = 27
          DataField = 'ID_'#1082#1083#1080#1077#1085#1090#1072
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEditFam: TDBEdit
          Left = 152
          Top = 104
          Width = 169
          Height = 27
          DataField = #1060#1072#1084#1080#1083#1080#1103
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEditName: TDBEdit
          Left = 152
          Top = 155
          Width = 169
          Height = 27
          DataField = #1048#1084#1103
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEditOt: TDBEdit
          Left = 152
          Top = 209
          Width = 169
          Height = 27
          DataField = #1054#1090#1095#1077#1089#1090#1074#1086
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEditChet: TDBEdit
          Left = 152
          Top = 252
          Width = 169
          Height = 27
          DataField = #1051#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 5
        end
        object DBEditMail: TDBEdit
          Left = 152
          Top = 400
          Width = 169
          Height = 27
          DataField = #1055#1086#1095#1090#1072
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit1: TDBEdit
          Left = 152
          Top = 304
          Width = 169
          Height = 27
          DataField = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = DBEdit1Click
        end
        object DBEditPhone: TDBEdit
          Left = 152
          Top = 357
          Width = 169
          Height = 27
          DataField = #1058#1077#1083#1077#1092#1086#1085
          DataSource = FormMain.UniDataSourceClients
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = DBEditPhoneClick
        end
        object Panel1: TPanel
          Left = 113
          Top = 464
          Width = 140
          Height = 33
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Color = 2908365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 9
          Visible = False
          OnClick = Panel1Click
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Currency'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Operations'
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object UniQueryClients: TUniQuery
    Connection = FormMain.UniConnectionAIS
    SQL.Strings = (
      'SELECT *'
      'FROM Clients')
    Active = True
    Left = 24
    Top = 8
  end
  object UniConnectionAIS: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'ais-currency'
    Username = 'Art'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 8
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 24
    Top = 48
  end
end
