object Form1: TForm1
  Left = 226
  Top = 126
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1080#1084#1077#1088' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' IPC'
  ClientHeight = 358
  ClientWidth = 524
  Color = clBtnFace
  Constraints.MinHeight = 303
  Constraints.MinWidth = 409
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    524
    358)
  PixelsPerInch = 120
  TextHeight = 17
  object Button1: TButton
    Left = 387
    Top = 315
    Width = 127
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1072#1085#1072#1083
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 135
    Top = 315
    Width = 110
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 10
    Width = 235
    Height = 297
    Anchors = [akLeft, akTop, akBottom]
    Caption = ' '#1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '
    TabOrder = 2
    DesignSize = (
      235
      297)
    object Label1: TLabel
      Left = 13
      Top = 21
      Width = 65
      Height = 17
      Caption = #1042#1072#1096#1077' '#1080#1084#1103':'
    end
    object Label2: TLabel
      Left = 13
      Top = 81
      Width = 72
      Height = 17
      Caption = #1042#1072#1096' '#1083#1086#1075#1080#1085':'
    end
    object Label3: TLabel
      Left = 13
      Top = 171
      Width = 108
      Height = 17
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
      Enabled = False
    end
    object Label4: TLabel
      Left = 13
      Top = 231
      Width = 37
      Height = 17
      Caption = #1044#1072#1090#1072':'
    end
    object Edit1: TEdit
      Left = 13
      Top = 46
      Width = 208
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 13
      Top = 106
      Width = 208
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 13
      Top = 141
      Width = 156
      Height = 22
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1072#1088#1086#1083#1100':'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object Edit3: TEdit
      Left = 13
      Top = 196
      Width = 208
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object DateTimePicker1: TDateTimePicker
      Left = 13
      Top = 256
      Width = 207
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Date = 39987.555227592590000000
      Time = 39987.555227592590000000
      TabOrder = 4
    end
  end
  object Memo1: TMemo
    Left = 252
    Top = 10
    Width = 262
    Height = 297
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Button3: TButton
    Left = 252
    Top = 315
    Width = 127
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1082#1072#1085#1072#1083
    TabOrder = 4
    OnClick = Button3Click
  end
end
