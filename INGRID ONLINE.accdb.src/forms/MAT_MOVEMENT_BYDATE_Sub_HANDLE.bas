Version =20
VersionRequired =20
Begin Form
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    FilterOn = NotDefault
    AllowEdits = NotDefault
    DefaultView =2
    ViewsAllowed =2
    RecordLocks =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =3628
    RowHeight =375
    DatasheetFontHeight =11
    ItemSuffix =9
    Left =11400
    Top =3480
    Right =16230
    Bottom =8430
    RecSrcDt = Begin
        0xf7df71e4364ae640
    End
    RecordSource ="t_material_movement_handle"
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
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            SizeMode =3
            PictureAlignment =2
            Width =1701
            Height =1701
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =0
            Name ="FormHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
        End
        Begin Section
            Height =1814
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =215
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1417
                    Top =226
                    Height =300
                    ColumnWidth =1260
                    ForeColor =0
                    Name ="HANDLE_ROWID"
                    ControlSource ="HANDLE_ROWID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1417
                    LayoutCachedTop =226
                    LayoutCachedWidth =3118
                    LayoutCachedHeight =526
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontFamily =34
                            Top =226
                            Width =1845
                            Height =300
                            ForeColor =0
                            Name ="Label4"
                            Caption ="ROW.ID"
                            FontName ="Segoe UI"
                            LayoutCachedTop =226
                            LayoutCachedWidth =1845
                            LayoutCachedHeight =526
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin ComboBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =215
                    TextFontFamily =34
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =1417
                    Top =680
                    Height =300
                    ColumnWidth =2010
                    TabIndex =1
                    Name ="HANDLE_EMPLOYEEID"
                    ControlSource ="HANDLE_EMPLOYEEID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT t_employee.EMPLOYEE_ID, t_employee.EMPLOYEE_FULLNAME FROM t_employee; "
                    ColumnWidths ="0;1134"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1417
                    LayoutCachedTop =680
                    LayoutCachedWidth =3118
                    LayoutCachedHeight =980
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =0
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontFamily =34
                            Top =680
                            Width =2475
                            Height =300
                            ForeColor =0
                            Name ="Label5"
                            Caption ="EMPLOYEE"
                            FontName ="Segoe UI"
                            LayoutCachedTop =680
                            LayoutCachedWidth =2475
                            LayoutCachedHeight =980
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =1417
                    Top =1107
                    ColumnWidth =1140
                    TabIndex =2
                    Name ="Check7"
                    ControlSource ="HANDLE_CHECK"

                    LayoutCachedLeft =1417
                    LayoutCachedTop =1107
                    LayoutCachedWidth =1677
                    LayoutCachedHeight =1347
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextFontFamily =34
                            Left =1647
                            Top =1077
                            Width =825
                            Height =300
                            ForeColor =0
                            Name ="Label8"
                            Caption ="CHECK"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =1647
                            LayoutCachedTop =1077
                            LayoutCachedWidth =2472
                            LayoutCachedHeight =1377
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
