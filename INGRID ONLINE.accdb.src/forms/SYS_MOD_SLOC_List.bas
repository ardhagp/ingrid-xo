Version =20
VersionRequired =20
Begin Form
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =2
    ViewsAllowed =2
    RecordLocks =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6994
    DatasheetFontHeight =11
    ItemSuffix =7
    Left =7455
    Top =3120
    Right =13905
    Bottom =7095
    RecSrcDt = Begin
        0x8e60f7b56946e640
    End
    RecordSource ="q_wsp_employee_workingarea"
    DatasheetFontName ="Aptos"
    AllowFormView =0
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
                    IMESentenceMode =3
                    Left =1530
                    Top =283
                    Width =3681
                    Height =300
                    ColumnWidth =840
                    ForeColor =0
                    Name ="WORKINGAREA_ROWID"
                    ControlSource ="WORKINGAREA_ROWID"

                    LayoutCachedLeft =1530
                    LayoutCachedTop =283
                    LayoutCachedWidth =5211
                    LayoutCachedHeight =583
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =170
                            Top =283
                            Width =4620
                            Height =300
                            ForeColor =0
                            Name ="Label0"
                            Caption ="WORKINGAREA_ROWID"
                            LayoutCachedLeft =170
                            LayoutCachedTop =283
                            LayoutCachedWidth =4790
                            LayoutCachedHeight =583
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =1530
                    Top =680
                    Width =3681
                    Height =300
                    ColumnWidth =3270
                    TabIndex =1
                    ForeColor =0
                    Name ="PLANT_CODE"
                    ControlSource ="WORKING AREA"

                    LayoutCachedLeft =1530
                    LayoutCachedTop =680
                    LayoutCachedWidth =5211
                    LayoutCachedHeight =980
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =170
                            Top =680
                            Width =1800
                            Height =330
                            ForeColor =0
                            Name ="Label1"
                            Caption ="WORKING AREA"
                            LayoutCachedLeft =170
                            LayoutCachedTop =680
                            LayoutCachedWidth =1970
                            LayoutCachedHeight =1010
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
                            Left =230
                            Top =1870
                            Width =990
                            Height =330
                            ForeColor =0
                            Name ="Label6"
                            Caption ="ACCESS"
                            LayoutCachedLeft =230
                            LayoutCachedTop =1870
                            LayoutCachedWidth =1220
                            LayoutCachedHeight =2200
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
    End
End
