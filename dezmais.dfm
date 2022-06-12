object r_dezmais: Tr_dezmais
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Os 15 mais'
  ClientHeight = 671
  ClientWidth = 1018
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 62
    Top = 125
    Width = 220
    Height = 390
    Brush.Color = 92615
    Pen.Color = clWhite
  end
  object Shape3: TShape
    Left = 72
    Top = 133
    Width = 200
    Height = 370
    Pen.Color = clWhite
  end
  object ImgFotoJogador: TImage
    Left = 83
    Top = 140
    Width = 176
    Height = 264
    Stretch = True
  end
  object Shape1: TShape
    Left = 376
    Top = 125
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape4: TShape
    Left = 376
    Top = 87
    Width = 40
    Height = 27
    Brush.Color = clWindowFrame
    Pen.Color = clWhite
    Shape = stRoundRect
  end
  object Label2: TLabel
    Left = 376
    Top = 90
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape5: TShape
    Left = 420
    Top = 87
    Width = 274
    Height = 27
    Brush.Color = clWindowFrame
    Pen.Color = clWhite
    Shape = stRoundRect
  end
  object Label3: TLabel
    Left = 422
    Top = 90
    Width = 57
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape6: TShape
    Left = 698
    Top = 87
    Width = 103
    Height = 27
    Brush.Color = clWindowFrame
    Pen.Color = clWhite
    Shape = stRoundRect
  end
  object Label4: TLabel
    Left = 699
    Top = 90
    Width = 99
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape7: TShape
    Left = 805
    Top = 87
    Width = 171
    Height = 27
    Brush.Color = clWindowFrame
    Pen.Color = clWhite
    Shape = stRoundRect
  end
  object LblTitEst: TLabel
    Left = 805
    Top = 90
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'CART'#213'ES A/V/T'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPos2: TLabel
    Left = 376
    Top = 136
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '2'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome2: TLabel
    Left = 470
    Top = 136
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'ORLANDO PINGO DE OURO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome2Click
  end
  object LblPeriodo2: TLabel
    Left = 696
    Top = 136
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '2010 - 2015'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica2: TLabel
    Left = 805
    Top = 136
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '40A / 5V / Total: 45'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo2: TLabel
    Left = 343
    Top = 142
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos3: TLabel
    Left = 376
    Top = 169
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '3'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome3: TLabel
    Left = 470
    Top = 169
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome3Click
  end
  object LblPeriodo3: TLabel
    Left = 696
    Top = 169
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica3: TLabel
    Left = 805
    Top = 169
    Width = 171
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo3: TLabel
    Left = 343
    Top = 175
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos4: TLabel
    Left = 376
    Top = 202
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '4'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome4: TLabel
    Left = 470
    Top = 202
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome4Click
  end
  object LblPeriodo4: TLabel
    Left = 696
    Top = 202
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica4: TLabel
    Left = 805
    Top = 202
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo4: TLabel
    Left = 343
    Top = 208
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos5: TLabel
    Left = 376
    Top = 235
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '5'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome5: TLabel
    Left = 470
    Top = 235
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome5Click
  end
  object LblPeriodo5: TLabel
    Left = 696
    Top = 235
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica5: TLabel
    Left = 805
    Top = 235
    Width = 171
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo5: TLabel
    Left = 343
    Top = 241
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos6: TLabel
    Left = 376
    Top = 268
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '6'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome6: TLabel
    Left = 470
    Top = 268
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome6Click
  end
  object LblPeriodo6: TLabel
    Left = 696
    Top = 268
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica6: TLabel
    Left = 805
    Top = 268
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo6: TLabel
    Left = 343
    Top = 274
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos7: TLabel
    Left = 376
    Top = 301
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '7'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome7: TLabel
    Left = 470
    Top = 301
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome7Click
  end
  object LblPeriodo7: TLabel
    Left = 696
    Top = 301
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica7: TLabel
    Left = 805
    Top = 301
    Width = 171
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo7: TLabel
    Left = 343
    Top = 307
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos8: TLabel
    Left = 376
    Top = 334
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '8'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome8: TLabel
    Left = 470
    Top = 334
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome8Click
  end
  object LblPeriodo8: TLabel
    Left = 696
    Top = 334
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica8: TLabel
    Left = 805
    Top = 334
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo8: TLabel
    Left = 343
    Top = 340
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos9: TLabel
    Left = 376
    Top = 367
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '9'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome9: TLabel
    Left = 470
    Top = 367
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome9Click
  end
  object LblPeriodo9: TLabel
    Left = 696
    Top = 367
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica9: TLabel
    Left = 805
    Top = 367
    Width = 171
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblCodigo9: TLabel
    Left = 343
    Top = 373
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object lblPos10: TLabel
    Left = 376
    Top = 400
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '10'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome10: TLabel
    Left = 470
    Top = 400
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome10Click
  end
  object LblPeriodo10: TLabel
    Left = 696
    Top = 398
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica10: TLabel
    Left = 805
    Top = 400
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label51: TLabel
    Left = 75
    Top = 529
    Width = 210
    Height = 22
    AutoSize = False
    Caption = 'Estat'#237'sticas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblEstatistica1: TLabel
    Left = 72
    Top = 566
    Width = 210
    Height = 95
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Shape44: TShape
    Left = 72
    Top = 557
    Width = 210
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape8: TShape
    Left = 376
    Top = 163
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape9: TShape
    Left = 376
    Top = 195
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape10: TShape
    Left = 376
    Top = 229
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape11: TShape
    Left = 376
    Top = 261
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape12: TShape
    Left = 376
    Top = 292
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape13: TShape
    Left = 376
    Top = 324
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape14: TShape
    Left = 376
    Top = 359
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape15: TShape
    Left = 376
    Top = 391
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape16: TShape
    Left = 376
    Top = 428
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object ImgBandNac2: TImage
    Left = 420
    Top = 136
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac3: TImage
    Left = 420
    Top = 169
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac4: TImage
    Left = 420
    Top = 202
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac5: TImage
    Left = 420
    Top = 235
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac6: TImage
    Left = 420
    Top = 268
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac7: TImage
    Left = 420
    Top = 301
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac8: TImage
    Left = 420
    Top = 334
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac9: TImage
    Left = 420
    Top = 367
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgBandNac10: TImage
    Left = 420
    Top = 400
    Width = 37
    Height = 22
    Stretch = True
  end
  object ImgNacionalidade: TImage
    Left = 83
    Top = 459
    Width = 53
    Height = 33
    Stretch = True
  end
  object LblNomeCompleto: TLabel
    Left = 83
    Top = 413
    Width = 176
    Height = 38
    Alignment = taCenter
    AutoSize = False
    Caption = 'Wellington Monteiro de Oliveira Bastos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object LblPeriodo: TLabel
    Left = 144
    Top = 476
    Width = 115
    Height = 16
    AutoSize = False
    Caption = '2013-2015'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object LblPosicao: TLabel
    Left = 144
    Top = 457
    Width = 115
    Height = 16
    AutoSize = False
    Caption = 'Lateral Esquerdo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Shape17: TShape
    Left = 76
    Top = 370
    Width = 190
    Height = 26
    Brush.Color = clWindowFrame
    Pen.Color = clWhite
  end
  object LblApelido: TLabel
    Left = 83
    Top = 375
    Width = 176
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'WELLINGTON MONTEIRO'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object LblTitulos: TLabel
    Left = 62
    Top = 13
    Width = 914
    Height = 60
    AutoSize = False
    Caption = 'MAIORES ARTILHEIROS ANUAIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object lblPos11: TLabel
    Left = 376
    Top = 437
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '11'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPeriodo11: TLabel
    Left = 696
    Top = 435
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica11: TLabel
    Left = 805
    Top = 437
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ImgBandNac11: TImage
    Left = 420
    Top = 437
    Width = 37
    Height = 22
    Stretch = True
  end
  object Shape19: TShape
    Left = 376
    Top = 428
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object lblPos12: TLabel
    Left = 376
    Top = 472
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '12'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPeriodo12: TLabel
    Left = 696
    Top = 472
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica12: TLabel
    Left = 805
    Top = 472
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ImgBandNac12: TImage
    Left = 420
    Top = 472
    Width = 37
    Height = 22
    Stretch = True
  end
  object Shape20: TShape
    Left = 376
    Top = 463
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object lblPos13: TLabel
    Left = 376
    Top = 511
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '13'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPeriodo13: TLabel
    Left = 696
    Top = 511
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica13: TLabel
    Left = 805
    Top = 511
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ImgBandNac13: TImage
    Left = 420
    Top = 511
    Width = 37
    Height = 22
    Stretch = True
  end
  object Shape21: TShape
    Left = 376
    Top = 502
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object Shape22: TShape
    Left = 376
    Top = 539
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object lblPos14: TLabel
    Left = 376
    Top = 548
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '14'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPeriodo14: TLabel
    Left = 696
    Top = 546
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica14: TLabel
    Left = 805
    Top = 548
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ImgBandNac14: TImage
    Left = 420
    Top = 548
    Width = 37
    Height = 22
    Stretch = True
  end
  object lblPos15: TLabel
    Left = 376
    Top = 583
    Width = 40
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '15'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPeriodo15: TLabel
    Left = 696
    Top = 581
    Width = 103
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblEstatistica15: TLabel
    Left = 805
    Top = 583
    Width = 169
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Estat'#237'stica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ImgBandNac15: TImage
    Left = 420
    Top = 583
    Width = 37
    Height = 22
    Stretch = True
  end
  object Shape24: TShape
    Left = 376
    Top = 574
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object LblCodigo10: TLabel
    Left = 343
    Top = 406
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object LblCodigo11: TLabel
    Left = 343
    Top = 439
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object LblCodigo12: TLabel
    Left = 343
    Top = 476
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object LblCodigo13: TLabel
    Left = 343
    Top = 515
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object LblCodigo14: TLabel
    Left = 343
    Top = 554
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object LblCodigo15: TLabel
    Left = 343
    Top = 587
    Width = 31
    Height = 13
    Caption = 'Label6'
    Visible = False
  end
  object Shape23: TShape
    Left = 376
    Top = 611
    Width = 600
    Height = 3
    Brush.Color = clGrayText
    Pen.Color = clWhite
  end
  object LblNome11: TLabel
    Left = 470
    Top = 435
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome11Click
  end
  object LblNome12: TLabel
    Left = 470
    Top = 472
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome12Click
  end
  object LblNome13: TLabel
    Left = 470
    Top = 511
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome13Click
  end
  object LblNome14: TLabel
    Left = 470
    Top = 546
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome14Click
  end
  object LblNome15: TLabel
    Left = 470
    Top = 583
    Width = 218
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = LblNome15Click
  end
  object Shape18: TShape
    Left = 62
    Top = 87
    Width = 220
    Height = 27
    Brush.Color = 92615
    Pen.Color = clWhite
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 72
    Top = 90
    Width = 200
    Height = 22
    AutoSize = False
    Caption = 'Primeiro Lugar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnExcel: TBitBtn
    Left = 929
    Top = 8
    Width = 45
    Height = 45
    Hint = 'Exportar para Excel - Dados Completos'
    Glyph.Data = {
      0E220000424D0E2200000000000036000000280000004C000000260000000100
      180000000000D8210000232E0000232E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFF2F6F0D2DDC9B7C9A8ACC09BE5ECE0FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8E7E6E6D8D7D7
      D2D1D0F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF8DBE4D3BACBAD
      99B28577995C57803644721F44721F44721F44721FC2D1B5FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFCFCFCECEBEBDAD9D9C8C7C6B6B4B3A4A3A19A98969A98
      969A98969A9896DEDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE8EEE3C5D3B9A5BB9382A1696087404674214472
      1F44721F44721F44721F44721F44721F44721F44721F44721FC2D1B5FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3
      F2E0DFDECFCECDBCBAB9A9A8A69B99979A98969A98969A98969A98969A98969A
      98969A98969A98969A9896DEDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B9C6144721F44721F44721F44721F44
      721F44721F44721F44721F44721F44721F44721F44721F44721F44721F598238
      648A45648A45648A45648A45648A45638944608740608740709354BACBACFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB8B7B59A98969A98969A98969A98969A98969A98969A98969A98969A9896
      9A98969A98969A98969A98969A9896A6A4A2ACAAA8ACAAA8ACAAA8ACAAA8ACAA
      A8ABA9A7A9A8A6A9A8A6B2B0AFDAD9D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77995C44721F44721F44721F
      44721F44721F44721F44721F44721F44721F44721F44721F44721F44721F4472
      1FBDCEB0FAFBF8FAFBF8FAFBF8FAFBF8FAFBF8FAFBF8FAFBF8FAFBF8E2E9DC7A
      9A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB6B4B39A98969A98969A98969A98969A98969A98969A98969A98
      969A98969A98969A98969A98969A98969A9896DCDBDAFCFCFCFCFCFCFCFCFCFC
      FCFCFCFCFCFCFCFCFCFCFCFCFCFCF0EFEFB7B6B4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77995C44721F4472
      1F44721F44721F44721F44721F44721F44721F44721F44721F44721F44721F44
      721F44721FA3BA91D5DFCCE5ECE0F8FAF7D8E2D0D6E0CED5DFCCDBE4D3FFFFFF
      E7EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB6B4B39A98969A98969A98969A98969A98969A98969A
      98969A98969A98969A98969A98969A98969A98969A9896CECDCCE8E8E8F1F1F1
      FBFBFBEAEAE9E9E9E8E8E8E8ECEBEBFFFFFFF2F2F2B6B4B3FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A9B6044
      721F44721F44721F44721F44721F44721F44721F44721F44721F44721F44721F
      44721F44721F44721F44721F44721F87A570DAE3D344721F44721F44721F6088
      41FFFFFFE7EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B6B59A98969A98969A98969A98969A9896
      9A98969A98969A98969A98969A98969A98969A98969A98969A98969A98969A98
      96BFBEBDEBEAEA9A98969A98969A9896AAA8A7FFFFFFF2F2F2B6B4B3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      7C9D6344721F44721F44721F44721F44721F44721F44721F44721F44721F4472
      1F44721F44721F44721F44721F5E853D6A8F4CA1B88EE1E9DB6A8F4C6C904E6D
      915083A26AFFFFFFE7EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B7B69A98969A98969A98969A98
      969A98969A98969A98969A98969A98969A98969A98969A98969A98969A9896A8
      A6A5AFADACCCCBCAEFEFEFAFADACB0AEACB0AFADBCBBBAFFFFFFF2F2F2B6B4B3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7D9D6344721F44721F44721F7093547E9E6445732044721F618842B0
      C4A099B28544721F44721F44721F44721FB7C9A9F4F7F1F8FAF7FDFEFDF4F7F1
      F4F7F1F4F7F1F5F8F3FFFFFFE7EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8B69A98969A98969A
      9896B2B0AFBAB8B79B99979A9896AAA8A7D5D4D3C8C7C69A98969A98969A9896
      9A9896D9D8D7F9F9F9FCFBFBFEFEFEF9F9F9F9F9F9F9F9F9FAFAFAFFFFFFF2F2
      F2B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF7D9D6344721F44721F44721FA6BC94FFFFFF7E9E6444721F
      B5C7A6FFFFFF7F9E6544721F44721F44721F44721F44721F44721F86A46ED8E2
      D044721F44721F44721F608740FFFFFFE7EDE277985BFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B7B69A9896
      9A98969A9896CFCECDFFFFFFBAB8B79A9896D8D7D6FFFFFFBAB9B79A98969A98
      969A98969A98969A98969A9896BEBDBBEAEAE99A98969A98969A9896A9A8A6FF
      FFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF7C9D6344721F44721F44721F527C2FF6F8F4CFDB
      C5507B2EF8FAF7DDE5D645732044721F44721F44721F44721F46742147742287
      A570D8E2D04774224875244A7626658B46FFFFFFE7EDE277985BFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B7
      B69A98969A98969A9896A2A09EFAFAFAE5E5E4A19F9DFCFBFBEDECEC9B99979A
      98969A98969A98969A98969B99979C9A98BFBDBCEAEAE99C9A989C9B999D9B99
      ACAAA9FFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C9C6244721F44721F44721F44721FA4
      BB92FFFFFFAFC39FFFFFFF7F9F6644721F44721F44721F44721F44721FC1D0B5
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7EDE277985BFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB8B7B69A98969A98969A98969A9896CECDCCFFFFFFD4D3D2FFFFFFBAB9B8
      9A98969A98969A98969A98969A9896DEDDDCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B9C6144721F44721F44721F
      44721F507B2DF4F7F2FFFFFFDFE7D945732044721F44721F44721F44721F4472
      1F557F346087409BB387DFE7D96188426087405E863E78995DFFFFFFE7EDE277
      985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB8B7B59A98969A98969A98969A9896A09F9DFAF9F9FFFFFFEEEE
      ED9B99979A98969A98969A98969A98969A9896A4A2A0A9A8A6C9C8C7EEEEEDAA
      A8A7A9A8A6A8A7A5B6B5B3FFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A9A5F44721F4472
      1F44721F44721F467421EBF0E7FFFFFFC6D4BB44721F44721F44721F44721F44
      721F44721F44721F44721F88A671DAE3D344721F44721F44721F618842FFFFFF
      E7EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB7B6B49A98969A98969A98969A98969B9997F4F4F4FF
      FFFFE0E0DF9A98969A98969A98969A98969A98969A98969A98969A9896BFBEBD
      EBEBEA9A98969A98969A9896AAA8A7FFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF799A5E44
      721F44721F44721F44721F7F9F66FFFFFFDBE4D4FDFEFD60874044721F44721F
      44721F44721F44721FADC19DE2E9DCEDF2E9FAFBF8E2E9DCE4EADEE5ECE0E9EF
      E5FFFFFFE7EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B5B49A98969A98969A98969A9896BAB9B8
      FFFFFFECECEBFEFEFEA9A8A69A98969A98969A98969A98969A9896D3D2D1F0EF
      EFF6F5F5FCFCFCF0EFEFF0F0F0F1F1F1F4F3F3FFFFFFF2F2F1B6B4B3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      78995D44721F44721F44721F44721FD7E1CFF4F7F2608740FDFDFCBBCCAD4472
      1F44721F44721F44721F44721F6A8F4C7F9E65ACC19CE4EBDF7C9C627D9D637F
      9E6592AD7CFFFFFFE6EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B5B39A98969A98969A98969A98
      96EAE9E9FAF9F9A9A8A6FEFEFEDBDAD99A98969A98969A98969A98969A9896AF
      ADACBAB9B7D3D2D1F1F0F0B8B7B6B9B8B6BAB9B7C4C3C2FFFFFFF2F2F1B6B4B3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF78995D44721F44721F44721F719455FFFFFFB4C6A544721FC3D2B7FD
      FEFD60884144721F44721F44721F44721F44721F44721F86A46EDBE4D344721F
      44721F44721F608841FFFFFFE6EDE277985BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B4B39A98969A98969A
      9896B3B2B0FFFFFFD7D6D59A9896DFDEDEFEFEFEAAA8A69A98969A98969A9896
      9A98969A98969A9896BEBDBBECEBEB9A98969A98969A9896AAA8A6FFFFFFF2F2
      F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF77995C44721F44721F44721F82A169B1C5A2658B4644721F
      719455E2E9DCA8BD9744721F44721F44721F44721F95B081BFCFB2D6E0CDF4F7
      F1C2D1B5C2D1B5C2D1B5CBD8C1FFFFFFE6EDE277985BFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B4B39A9896
      9A98969A9896BCBAB9D5D5D4ACAAA99A9896B3B1B0F0EFEFD0CFCE9A98969A98
      969A98969A9896C6C5C4DDDCDBE9E8E8F9F9F9DEDDDDDEDDDDDEDDDDE3E3E2FF
      FFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF77995C44721F44721F44721F44721F44721F4472
      1F44721F44721F44721F44721F44721F44721F44721F44721F82A16AA3BA90C5
      D4BAEDF2E9A4BB92A3BA90A1B88FB1C4A1FFFFFFE6EDE277985BFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B4
      B39A98969A98969A98969A98969A98969A98969A98969A98969A98969A98969A
      98969A98969A98969A9896BCBBB9CDCCCBE0DFDFF6F5F5CECDCCCDCCCBCDCCCB
      D5D5D4FFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77995C44721F44721F44721F44721F44
      721F44721F44721F44721F44721F44721F44721F44721F44721F44721F44721F
      44721F88A671D9E3D244721F44721F44721F628943FFFFFFE6EDE277985BFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB6B4B39A98969A98969A98969A98969A98969A98969A98969A98969A9896
      9A98969A98969A98969A98969A98969A98969A9896BFBEBDEBEAEA9A98969A98
      969A9896AAA9A7FFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A9A5F44721F44721F44721F
      44721F44721F44721F44721F44721F44721F44721F44721F44721F44721F4472
      1F809F679FB78CC2D1B5ECF1E89FB78CA1B88EA1B88FB0C4A0FFFFFFE6EDE277
      985BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB7B5B49A98969A98969A98969A98969A98969A98969A98969A98
      969A98969A98969A98969A98969A98969A9896BBBAB8CBCAC9DEDDDDF5F5F4CB
      CAC9CCCBCACDCCCBD5D4D3FFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B9C6144721F4472
      1F44721F44721F44721F44721F44721F44721F44721F44721F44721F44721F44
      721F44721FC1D0B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E6EDE277995CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB8B7B59A98969A98969A98969A98969A98969A98969A
      98969A98969A98969A98969A98969A98969A98969A9896DEDDDCFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F1B6B4B3FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C9D6344
      721F44721F44721F44721F44721F44721F44721F44721F44721F44721F44721F
      44721F44721F44721F6389447395577395577395577395577395577395577395
      577395576C904F94AE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B7B69A98969A98969A98969A98969A9896
      9A98969A98969A98969A98969A98969A98969A98969A98969A9896ABAAA8B4B2
      B1B4B2B1B4B2B1B4B2B1B4B2B1B4B2B1B4B2B1B4B2B1B0AEADC5C4C3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E8EEE3C5D3B9A5BB9382A16960874046742144721F44721F44721F44721F4472
      1F44721F44721F44721F44721FB1C4A1E8EEE3E8EEE3E8EEE3E8EEE3E8EEE3E8
      EEE3E6EDE2E6EDE2F5F8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F2E0DFDECFCECDBCBAB9A9A8
      A69B99979A98969A98969A98969A98969A98969A98969A98969A98969A9896D5
      D4D3F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F3F3F2F2F2F1F2F2F1FAFAFAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF8DBE4D3BACBAD9BB3877A
      9B605A833945732044721F44721F44721FC1D0B5FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFCFCFCECEBEBDAD9D9C9C8C7B8B6B5A6A4A29B99979A98969A9896
      9A9896DEDDDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF3F6F1D1DDC8B7C9A9ACC19CE5ECE0FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F8E6E6
      E5D9D8D7D3D2D1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BtnExcelClick
  end
end
