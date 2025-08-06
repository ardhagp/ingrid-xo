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
    Width =20466
    DatasheetFontHeight =11
    ItemSuffix =7
    Left =-6770
    Top =4930
    Right =14060
    Bottom =11010
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
            Height =4818
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =3912
                    Top =113
                    Height =290
                    ForeColor =0
                    Name ="Text0"
                    ControlSource ="TX_ID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =3912
                    LayoutCachedTop =113
                    LayoutCachedWidth =5613
                    LayoutCachedHeight =403
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =2211
                            Top =113
                            Width =1530
                            Height =290
                            ForeColor =0
                            Name ="Label1"
                            Caption ="Text0"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =2211
                            LayoutCachedTop =113
                            LayoutCachedWidth =3741
                            LayoutCachedHeight =403
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =56
                    Top =566
                    Width =20350
                    Height =4250
                    TabIndex =1
                    Name ="MAT_MOVEMENT_EDITOR_Sub_ITEM"
                    SourceObject ="Form.MAT_MOVEMENT_EDITOR_Sub_ITEM"
                    LinkChildFields ="D_MTXID"
                    LinkMasterFields ="TX_ID"

                    LayoutCachedLeft =56
                    LayoutCachedTop =566
                    LayoutCachedWidth =20406
                    LayoutCachedHeight =4816
                End
            End
        End
    End
End
CodeBehindForm
' See "MAT_MOVEMENT_EDITOR_Sub_DETAIL2.cls"
