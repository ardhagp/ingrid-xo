Version =20
VersionRequired =20
Begin Form
    AutoResize = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    TabularFamily =0
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =21321
    DatasheetFontHeight =11
    ItemSuffix =13
    Left =5805
    Top =4965
    Right =26775
    Bottom =11220
    RecSrcDt = Begin
        0xb8f523bccb65e640
    End
    RecordSource ="t_material_movement"
    DatasheetFontName ="Aptos"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =0
            FontSize =11
            FontName ="Aptos"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =60.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
            BorderThemeColorIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CommandButton
            TextFontFamily =0
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Aptos"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
        End
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Aptos"
            AsianLineBreak =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin Section
            CanGrow = NotDefault
            Height =6576
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =11565
                    Top =170
                    Height =290
                    ForeColor =0
                    Name ="Text0"
                    ControlSource ="TX_ID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =11565
                    LayoutCachedTop =170
                    LayoutCachedWidth =13266
                    LayoutCachedHeight =460
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Subform
                    OverlapFlags =85
                    Left =56
                    Top =736
                    Width =21265
                    Height =5790
                    TabIndex =1
                    Name ="MAT_MOVEMENT_EDITOR_Sub_ITEM"
                    SourceObject ="Form.MAT_MOVEMENT_EDITOR_Sub_ITEM"
                    LinkChildFields ="D_MTXID"
                    LinkMasterFields ="TX_ID"

                    LayoutCachedLeft =56
                    LayoutCachedTop =736
                    LayoutCachedWidth =21321
                    LayoutCachedHeight =6526
                    BorderThemeColorIndex =0
                    BorderShade =100.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =83
                    PictureType =2
                    Left =113
                    Top =57
                    Width =576
                    Height =576
                    TabIndex =2
                    Name ="btnSave"
                    Caption ="&Save"
                    ControlTipText ="Save Record"
                    Picture ="btnSave"
                    UnicodeAccessKey =83
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =10
                        Begin
                            Action ="OnError"
                            Argument ="0"
                        End
                        Begin
                            Action ="RunCommand"
                            Argument ="97"
                        End
                        Begin
                            Condition ="[MacroError]<>0"
                            Action ="MsgBox"
                            Argument ="=[MacroError].[Description]"
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"btnSave\" xmlns=\"http://schemas.microsoft.com/office/access"
                                "services/2009/11/application\"><Statements><Action Name=\"OnError\"/><Action Nam"
                                "e=\"SaveRecord\"/><ConditionalBlo"
                        End
                        Begin
                            Comment ="_AXL:ck><If><Condition>[MacroError]&lt;&gt;0</Condition><Statements><Action Name"
                                "=\"MessageBox\"><Argument Name=\"Message\">=[MacroError].[Description]</Argument"
                                "></Action></Statements></If></ConditionalBlock></Statements></UserInterfaceMacro"
                                ">"
                        End
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =113
                    LayoutCachedTop =57
                    LayoutCachedWidth =689
                    LayoutCachedHeight =633
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =80
                    PictureType =2
                    Left =907
                    Top =56
                    Width =577
                    Height =577
                    TabIndex =3
                    Name ="btnPrint"
                    Caption ="&Print"
                    ControlTipText ="Print"
                    Picture ="printer32"
                    UnicodeAccessKey =80

                    CursorOnHover =1
                    LayoutCachedLeft =907
                    LayoutCachedTop =56
                    LayoutCachedWidth =1484
                    LayoutCachedHeight =633
                End
                Begin Line
                    OverlapFlags =85
                    Left =794
                    Top =56
                    Width =0
                    Height =567
                    Name ="Line9"
                    LayoutCachedLeft =794
                    LayoutCachedTop =56
                    LayoutCachedWidth =794
                    LayoutCachedHeight =623
                    BorderThemeColorIndex =2
                    BorderTint =75.0
                End
                Begin Line
                    OverlapFlags =85
                    Left =1587
                    Top =56
                    Width =0
                    Height =567
                    Name ="Line10"
                    LayoutCachedLeft =1587
                    LayoutCachedTop =56
                    LayoutCachedWidth =1587
                    LayoutCachedHeight =623
                    BorderThemeColorIndex =2
                    BorderTint =75.0
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =77
                    PictureType =2
                    Left =1700
                    Top =56
                    Width =578
                    Height =578
                    TabIndex =4
                    Name ="btnMove"
                    Caption ="&Move"
                    ControlTipText ="Move selected item to other transaction"
                    Picture ="btnMove"
                    UnicodeAccessKey =77

                    CursorOnHover =1
                    LayoutCachedLeft =1700
                    LayoutCachedTop =56
                    LayoutCachedWidth =2278
                    LayoutCachedHeight =634
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =67
                    PictureType =2
                    Left =2381
                    Top =56
                    Width =578
                    Height =578
                    TabIndex =5
                    Name ="btnCopy"
                    Caption ="&Copy"
                    ControlTipText ="Copy selected item to other transaction"
                    Picture ="btnCopy"
                    UnicodeAccessKey =67

                    CursorOnHover =1
                    LayoutCachedLeft =2381
                    LayoutCachedTop =56
                    LayoutCachedWidth =2959
                    LayoutCachedHeight =634
                End
            End
        End
    End
End
CodeBehindForm
' See "MAT_MOVEMENT_EDITOR_Sub_DETAIL2.cls"
