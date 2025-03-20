Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    NavigationButtons = NotDefault
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
    Width =4535
    RowHeight =345
    DatasheetFontHeight =11
    ItemSuffix =4
    Left =6360
    Top =4740
    Right =12555
    Bottom =8715
    RecSrcDt = Begin
        0xefeb993b5a46e640
    End
    RecordSource ="q_sys_employee_access"
    Caption ="USER ACCESS"
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
                    Left =1927
                    Top =170
                    Height =315
                    ColumnWidth =1185
                    ColumnOrder =0
                    ForeColor =0
                    Name ="MODULE_ROWID"
                    ControlSource ="MODULEACCESS_ROWID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1927
                    LayoutCachedTop =170
                    LayoutCachedWidth =3628
                    LayoutCachedHeight =485
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontFamily =34
                            Left =226
                            Top =170
                            Width =1755
                            Height =315
                            ForeColor =0
                            Name ="Label0"
                            Caption ="ROW.ID"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =226
                            LayoutCachedTop =170
                            LayoutCachedWidth =1981
                            LayoutCachedHeight =485
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1927
                    Top =963
                    Height =315
                    ColumnWidth =2355
                    ColumnOrder =1
                    TabIndex =1
                    ForeColor =0
                    Name ="MODULE_CODE"
                    ControlSource ="MODULE_CODE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1927
                    LayoutCachedTop =963
                    LayoutCachedWidth =3628
                    LayoutCachedHeight =1278
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =226
                            Top =963
                            Width =1635
                            Height =315
                            ForeColor =0
                            Name ="Label2"
                            Caption ="MODULE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =226
                            LayoutCachedTop =963
                            LayoutCachedWidth =1861
                            LayoutCachedHeight =1278
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =215
                    TextFontFamily =34
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =1927
                    Top =1360
                    Height =345
                    ColumnWidth =2025
                    TabIndex =2
                    BoundColumn =-1
                    ForeColor =0
                    ConditionalFormat = Begin
                        0x0100000072000000030000000000000002000000000000000200000001000000 ,
                        0xffffff00ed1c2400000000000200000003000000050000000100000000000000 ,
                        0xfff20000000000000200000006000000080000000100000000000000ffc20e00 ,
                        0x300000000000310000000000320000000000
                    End
                    Name ="MODULE_ACCESSLEVEL"
                    ControlSource ="MODULEACCESS_LEVEL"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT t_accesslevel.ACCESSLEVEL_ID, t_accesslevel.ACCESSLEVEL_NAME FROM t_acces"
                        "slevel; "
                    ColumnWidths ="0;1134"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1927
                    LayoutCachedTop =1360
                    LayoutCachedWidth =3628
                    LayoutCachedHeight =1705
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeShade =100.0
                    ConditionalFormat14 = Begin
                        0x010004000000000000000200000001000000ffffff00ed1c2400010000003000 ,
                        0x0000000000000000000000000000000000000000000000000002000000010000 ,
                        0x0000000000fff200000100000031000000000000000000000000000000000000 ,
                        0x0000000000000000020000000100000000000000ffc20e000100000032000000 ,
                        0x00000000000000000000000000000000000000000000000200000001000000ff ,
                        0xffff0022b14c0001000000330000000000000000000000000000000000000000 ,
                        0x0000
                    End
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontFamily =34
                            Left =226
                            Top =1360
                            Width =2430
                            Height =315
                            ForeColor =0
                            Name ="Label3"
                            Caption ="ACCESS"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =226
                            LayoutCachedTop =1360
                            LayoutCachedWidth =2656
                            LayoutCachedHeight =1675
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
            End
        End
    End
End
