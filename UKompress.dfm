object FKompress: TFKompress
  Left = 191
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Kompres JPG Menggunakan Delphi | Riko Software'
  ClientHeight = 422
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    606
    422)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 233
    Height = 273
  end
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 233
    Height = 273
    Stretch = True
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 397
    Width = 606
    Height = 25
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 294
    ExplicitWidth = 461
  end
  object BtnLoad: TButton
    Left = 247
    Top = 9
    Width = 351
    Height = 41
    Caption = 'Load Gambar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnLoadClick
  end
  object BtnSimpan: TButton
    Left = 247
    Top = 143
    Width = 351
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Simpan Gambar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnSimpanClick
  end
  object GroupBox1: TGroupBox
    Left = 247
    Top = 56
    Width = 351
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Kualitas Gambar'
    TabOrder = 3
    DesignSize = (
      351
      81)
    object Min: TLabel
      Left = 16
      Top = 56
      Width = 17
      Height = 13
      Caption = 'Min'
    end
    object Label1: TLabel
      Left = 318
      Top = 56
      Width = 20
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Max'
      ExplicitLeft = 136
    end
    object TrackBar1: TTrackBar
      Left = 8
      Top = 20
      Width = 335
      Height = 37
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitWidth = 189
    end
  end
  object Memo1: TMemo
    Left = 247
    Top = 190
    Width = 351
    Height = 192
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 4
    ExplicitWidth = 206
    ExplicitHeight = 89
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg)|*.jpg;*.jpeg|JPEG Image File (*.jpg)|*.jpg|JP' +
      'EG Image File (*.jpeg)|*.jpeg'
    Left = 96
    Top = 80
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 128
    Top = 80
  end
end
