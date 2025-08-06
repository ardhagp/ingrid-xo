Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    RecordLocks =2
    TabularFamily =0
    BorderStyle =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =20352
    DatasheetFontHeight =11
    ItemSuffix =5
    Left =20
    Top =290
    Right =19120
    Bottom =6570
    RecSrcDt = Begin
        0x75e33fc9cb65e640
    End
    RecordSource ="t_material_movement"
    DatasheetFontName ="Aptos"
    AllowDatasheetView =0
    FilterOnLoad =255
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
            Height =6292
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Subform
                    OverlapFlags =85
                    Top =694
                    Width =20235
                    Height =5550
                    TabIndex =1
                    Name ="MAT_MOVEMENT_EDITOR_Sub_DETAIL"
                    SourceObject ="Form.MAT_MOVEMENT_EDITOR_Sub_ITEM"
                    LinkChildFields ="D_MTXID"
                    LinkMasterFields ="TX_ID"

                    LayoutCachedTop =694
                    LayoutCachedWidth =20235
                    LayoutCachedHeight =6244
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    PictureType =2
                    Left =113
                    Top =113
                    Width =501
                    Height =502
                    Name ="btnSave"
                    FontName ="Segoe UI"
                    ControlTipText ="Save"
                    Picture ="btnSave"

                    CursorOnHover =1
                    LayoutCachedLeft =113
                    LayoutCachedTop =113
                    LayoutCachedWidth =614
                    LayoutCachedHeight =615
                    ThemeFontIndex =-1
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2551
                    Top =170
                    Width =3461
                    Height =290
                    TabIndex =2
                    Name ="Text3"
                    ControlSource ="TX_ID"

                    LayoutCachedLeft =2551
                    LayoutCachedTop =170
                    LayoutCachedWidth =6012
                    LayoutCachedHeight =460
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =850
                            Top =170
                            Width =590
                            Height =290
                            Name ="Label4"
                            Caption ="Text3"
                            LayoutCachedLeft =850
                            LayoutCachedTop =170
                            LayoutCachedWidth =1440
                            LayoutCachedHeight =460
                        End
                    End
                End
            End
        End
    End
End
