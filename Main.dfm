object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 499
  ClientWidth = 799
  Caption = 'MainForm'
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object eTexto: TUniEdit
    Left = 40
    Top = 32
    Width = 273
    Hint = ''
    Text = 'eTexto'
    TabOrder = 0
  end
  object bAceptar: TUniButton
    Left = 238
    Top = 60
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = bAceptarClick
  end
  object mmTextos: TUniMemo
    Left = 40
    Top = 96
    Width = 273
    Height = 193
    Hint = ''
    Lines.Strings = (
      'mmTextos')
    TabOrder = 2
  end
end
