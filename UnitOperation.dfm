object FormOperation: TFormOperation
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1054#1087#1077#1088#1072#1094#1080#1103' '#1086#1073#1084#1077#1085#1072
  ClientHeight = 511
  ClientWidth = 341
  Color = 15530495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 41
    Top = 115
    Width = 81
    Height = 19
    Caption = 'ID '#1082#1083#1080#1077#1085#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 71
    Width = 106
    Height = 19
    Caption = 'ID '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 68
    Top = 162
    Width = 54
    Height = 19
    Caption = #1042#1072#1083#1102#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 211
    Width = 34
    Height = 19
    Caption = #1050#1091#1088#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 76
    Top = 259
    Width = 46
    Height = 19
    Caption = #1057#1091#1084#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 17
    Top = 306
    Width = 105
    Height = 19
    Caption = #1050#1086#1084#1080#1089#1089#1080#1103', '#1088#1091#1073
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 49
    Top = 359
    Width = 73
    Height = 19
    Caption = #1054#1087#1083#1072#1095#1077#1085#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 68
    Top = 407
    Width = 54
    Height = 19
    Caption = #1042#1072#1083#1102#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 105
    Top = 30
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
  object DBEdit2: TDBEdit
    Left = 160
    Top = 28
    Width = 145
    Height = 26
    DataField = 'ID'
    DataSource = FormMain.UniDataSourceBuy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 209
    Width = 145
    Height = 26
    DataField = 'Kurs'
    DataSource = FormMain.UniDataSourceBuy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 160
    Top = 257
    Width = 145
    Height = 26
    DataField = 'Sum'
    DataSource = FormMain.UniDataSourceBuy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 160
    Top = 304
    Width = 145
    Height = 26
    DataField = 'Komission'
    DataSource = FormMain.UniDataSourceBuy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit8: TDBEdit
    Left = 160
    Top = 357
    Width = 145
    Height = 26
    DataField = 'Paid'
    DataSource = FormMain.UniDataSourceBuy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit9: TDBEdit
    Left = 160
    Top = 405
    Width = 145
    Height = 26
    DataField = 'Value2'
    DataSource = FormMain.UniDataSourceBuy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 112
    Top = 464
    Width = 137
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Color = 4286166
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 160
    Top = 160
    Width = 145
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'name'
    ListField = 'name'
    ListSource = FormMain.UniDataSourceKurs
    ParentFont = False
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 160
    Top = 71
    Width = 145
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'ID_employee'
    ListField = 'ID_employee'
    ListSource = FormMain.UniDataSourceEmployee
    ParentFont = False
    TabOrder = 8
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 160
    Top = 115
    Width = 145
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'ID_'#1082#1083#1080#1077#1085#1090#1072
    ListField = 'ID_'#1082#1083#1080#1077#1085#1090#1072
    ListSource = FormMain.UniDataSourceClients
    ParentFont = False
    TabOrder = 9
  end
  object UniQueryBuy: TUniQuery
    UpdatingTable = 'operations_buy'
    SQLUpdate.Strings = (
      'UPDATE operations_buy SET Komission = Sum * 0.02;'
      'UPDATE operations_buy'
      
        'INNER JOIN currency ON (operations_buy.`Value` = currency.`name`' +
        ')'
      'SET operations_buy.Kurs =  currency.buy;'
      'UPDATE operations_buy SET Paid = (Sum +Komission)*Kurs;')
    SQLRefresh.Strings = (
      'UPDATE operations_buy SET Komission = Sum * 0.02;'
      'UPDATE operations_buy'
      
        'INNER JOIN currency ON (operations_buy.`Value` = currency.`name`' +
        ')'
      'SET operations_buy.Kurs =  currency.buy;'
      'UPDATE operations_buy SET Paid = (Sum +Komission)*Kurs;')
    LocalUpdate = True
    Connection = FormMain.UniConnectionAIS
    SQL.Strings = (
      'select * from operations_buy')
    DetailFields = 'ID_employee'
    Left = 8
    Top = 16
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 8
    Top = 200
  end
  object UniConnectionAIS: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'ais-currency'
    Username = 'Art'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 8
    Top = 192
  end
end
