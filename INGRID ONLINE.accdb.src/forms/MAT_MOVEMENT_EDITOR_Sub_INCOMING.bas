Version =20
VersionRequired =20
Begin Form
    DividingLines = NotDefault
    FilterOn = NotDefault
    DataEntry = NotDefault
    DefaultView =2
    RecordLocks =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6994
    DatasheetFontHeight =11
    ItemSuffix =4
    Left =6015
    Top =2505
    Right =12570
    Bottom =8025
    RecSrcDt = Begin
        0x1633d60e4b62e640
    End
    RecordSource ="t_material_movement_detail"
    OnCurrent ="[Event Procedure]"
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
                    Left =963
                    Top =283
                    Height =300
                    ColumnWidth =1485
                    Name ="D_ROWID"
                    ControlSource ="D_ROWID"

                    LayoutCachedLeft =963
                    LayoutCachedTop =283
                    LayoutCachedWidth =2664
                    LayoutCachedHeight =583
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Top =283
                            Width =1140
                            Height =300
                            Name ="Label0"
                            Caption ="D_ROWID"
                            LayoutCachedTop =283
                            LayoutCachedWidth =1140
                            LayoutCachedHeight =583
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =215
                    IMESentenceMode =3
                    Left =1247
                    Top =1077
                    Width =4320
                    Height =960
                    ColumnWidth =2355
                    TabIndex =1
                    Name ="D_MATERIALNAME"
                    ControlSource ="D_MATERIALNAME"

                    LayoutCachedLeft =1247
                    LayoutCachedTop =1077
                    LayoutCachedWidth =2948
                    LayoutCachedHeight =1377
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Top =1077
                            Width =2010
                            Height =300
                            Name ="Label1"
                            Caption ="D_MATERIALNAME"
                            LayoutCachedTop =1077
                            LayoutCachedWidth =2010
                            LayoutCachedHeight =1377
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1700
                    Top =2777
                    Height =300
                    ColumnWidth =1515
                    TabIndex =2
                    Name ="D_BINLOC"
                    ControlSource ="D_BINLOC"

                    LayoutCachedLeft =1700
                    LayoutCachedTop =2777
                    LayoutCachedWidth =3401
                    LayoutCachedHeight =3077
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =2777
                            Width =1170
                            Height =300
                            Name ="Label2"
                            Caption ="D_BINLOC"
                            LayoutCachedTop =2777
                            LayoutCachedWidth =1170
                            LayoutCachedHeight =3077
                        End
                    End
                End
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =2041
                    Top =3458
                    Height =300
                    ColumnWidth =2040
                    TabIndex =3
                    Name ="D_BINLOCNEW"
                    ControlSource ="D_BINLOCNEW"

                    LayoutCachedLeft =2041
                    LayoutCachedTop =3458
                    LayoutCachedWidth =3742
                    LayoutCachedHeight =3758
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =340
                            Top =3458
                            Width =1695
                            Height =300
                            Name ="Label3"
                            Caption ="D_BINLOCNEW"
                            LayoutCachedLeft =340
                            LayoutCachedTop =3458
                            LayoutCachedWidth =2035
                            LayoutCachedHeight =3758
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "MAT_MOVEMENT_EDITOR_Sub_INCOMING.cls"
