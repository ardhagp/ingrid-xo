Version =20
VersionRequired =20
Begin Form
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    FilterOn = NotDefault
    DefaultView =2
    ViewsAllowed =2
    RecordLocks =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6994
    RowHeight =345
    DatasheetFontHeight =11
    ItemSuffix =7
    Left =5570
    Top =1750
    Right =12020
    Bottom =5710
    RecSrcDt = Begin
        0x66180151415ce640
    End
    RecordSource ="t_workingarea"
    DatasheetFontName ="Aptos"
    AllowFormView =0
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
        Begin ListBox
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontSize =11
            FontName ="Aptos"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Aptos"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =5952
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =215
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1530
                    Top =283
                    Width =3681
                    Height =300
                    ColumnWidth =1180
                    ColumnOrder =0
                    ForeColor =0
                    Name ="WORKINGAREA_ROWID"
                    ControlSource ="WORKINGAREA_ROWID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1530
                    LayoutCachedTop =283
                    LayoutCachedWidth =5211
                    LayoutCachedHeight =583
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontFamily =34
                            Left =170
                            Top =283
                            Width =4620
                            Height =300
                            ForeColor =0
                            Name ="Label0"
                            Caption ="ROW.ID"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =170
                            LayoutCachedTop =283
                            LayoutCachedWidth =4790
                            LayoutCachedHeight =583
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =1587
                    Top =1927
                    ColumnWidth =1335
                    TabIndex =2
                    Name ="Check5"
                    ControlSource ="WORKINGAREA_ACCESS"

                    LayoutCachedLeft =1587
                    LayoutCachedTop =1927
                    LayoutCachedWidth =1847
                    LayoutCachedHeight =2167
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =230
                            Top =1870
                            Width =990
                            Height =330
                            ForeColor =0
                            Name ="Label6"
                            Caption ="ACCESS"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =230
                            LayoutCachedTop =1870
                            LayoutCachedWidth =1220
                            LayoutCachedHeight =2200
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin ComboBox
                    Locked = NotDefault
                    OverlapFlags =215
                    TextFontFamily =34
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =1530
                    Top =680
                    Width =3681
                    Height =330
                    ColumnWidth =3540
                    TabIndex =1
                    Name ="PLANT_CODE"
                    ControlSource ="WORKINGAREA_SLOCID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT t_sloc.SLOC_ID, (t_plant.PLANT_CODE & ' - ' & t_sloc.SLOC_CODE & ' - ' & "
                        "t_sloc.SLOC_NAME) AS SLOC_NAME FROM t_plant INNER JOIN t_sloc ON t_plant.PLANT_I"
                        "D = t_sloc.SLOC_PLANT; "
                    ColumnWidths ="0;1134"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1530
                    LayoutCachedTop =680
                    LayoutCachedWidth =5211
                    LayoutCachedHeight =1010
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =0
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontFamily =34
                            Left =170
                            Top =680
                            Width =1800
                            Height =330
                            ForeColor =0
                            Name ="Label1"
                            Caption ="WORKING AREA"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =170
                            LayoutCachedTop =680
                            LayoutCachedWidth =1970
                            LayoutCachedHeight =1010
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
    End
End
