Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    DividingLines = NotDefault
    FilterOn = NotDefault
    DefaultView =2
    ViewsAllowed =2
    RecordLocks =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11520
    DatasheetFontHeight =11
    ItemSuffix =62
    Left =4970
    Top =2310
    Right =24940
    Bottom =7590
    RecSrcDt = Begin
        0xcd05b8b46962e640
    End
    RecordSource ="t_material_movement_detail"
    Caption ="MAT_MOVEMENT_EDITOR_Sub_ITEM"
    OnCurrent ="[Event Procedure]"
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
        Begin FormHeader
            Height =0
            Name ="FormHeader"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
        End
        Begin Section
            Height =8538
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =342
                    Width =1515
                    Height =330
                    ColumnWidth =1515
                    ForeColor =0
                    Name ="D_ROWID"
                    ControlSource ="D_ROWID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =342
                    LayoutCachedWidth =2916
                    LayoutCachedHeight =672
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =342
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_ROWID_Label"
                            Caption ="D_ROWID"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =342
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =672
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =741
                    Width =1515
                    Height =330
                    ColumnWidth =1515
                    TabIndex =1
                    ForeColor =0
                    Name ="D_TXID_OLD"
                    ControlSource ="D_TXID_OLD"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =741
                    LayoutCachedWidth =2916
                    LayoutCachedHeight =1071
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =741
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_TXID_OLD_Label"
                            Caption ="D_TXID_OLD"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =741
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =1071
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =1140
                    Width =2760
                    Height =330
                    ColumnWidth =3960
                    TabIndex =2
                    ForeColor =0
                    Name ="D_MTXID"
                    ControlSource ="D_MTXID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =1140
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =1470
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =1140
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_MTXID_Label"
                            Caption ="D_MTXID"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =1140
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =1470
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =1539
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =3
                    ForeColor =0
                    Name ="D_NO"
                    ControlSource ="D_NO"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =1539
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =2139
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =1539
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_NO_Label"
                            Caption ="D_NO"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =1539
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =1869
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =2223
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =4
                    ForeColor =0
                    Name ="D_MIAP"
                    ControlSource ="D_MIAP"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =2223
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =2823
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =2223
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_MIAP_Label"
                            Caption ="D_MIAP"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =2223
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =2553
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =2907
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =5
                    ForeColor =0
                    Name ="D_DCDCODE"
                    ControlSource ="D_DCDCODE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =2907
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =3507
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =2907
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_DCDCODE_Label"
                            Caption ="D_DCDCODE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =2907
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =3237
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =3591
                    Width =2760
                    Height =1140
                    ColumnWidth =3000
                    TabIndex =6
                    ForeColor =0
                    Name ="D_MATERIALNAME"
                    ControlSource ="D_MATERIALNAME"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =3591
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =4731
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =3591
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_MATERIALNAME_Label"
                            Caption ="D_MATERIALNAME"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =3591
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =3921
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =4845
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =9
                    ForeColor =0
                    Name ="D_MATERIALCATEGORY"
                    ControlSource ="D_MATERIALCATEGORY"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =4845
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =5445
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =4845
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_MATERIALCATEGORY_Label"
                            Caption ="D_MATERIALCATEGORY"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =4845
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =5175
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =5529
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =10
                    ForeColor =0
                    Name ="D_PARTNUMBER"
                    ControlSource ="D_PARTNUMBER"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =5529
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =6129
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =5529
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_PARTNUMBER_Label"
                            Caption ="D_PARTNUMBER"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =5529
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =5859
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =6213
                    Width =1515
                    Height =330
                    ColumnWidth =1515
                    TabIndex =11
                    ForeColor =0
                    Name ="D_UOM"
                    ControlSource ="D_UOM"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =6213
                    LayoutCachedWidth =2916
                    LayoutCachedHeight =6543
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =6213
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_UOM_Label"
                            Caption ="D_UOM"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =6213
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =6543
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =6612
                    Width =1515
                    Height =330
                    ColumnWidth =1515
                    TabIndex =12
                    ForeColor =0
                    Name ="D_VALTYPE"
                    ControlSource ="D_VALTYPE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =6612
                    LayoutCachedWidth =2916
                    LayoutCachedHeight =6942
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =6612
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_VALTYPE_Label"
                            Caption ="D_VALTYPE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =6612
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =6942
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =7011
                    Width =2760
                    Height =330
                    ColumnWidth =3000
                    TabIndex =13
                    ForeColor =0
                    Name ="D_QTY"
                    ControlSource ="D_QTY"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =7011
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =7341
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =7011
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_QTY_Label"
                            Caption ="D_QTY"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =7011
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =7341
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =7410
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =14
                    ForeColor =0
                    Name ="D_PO"
                    ControlSource ="D_PO"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =7410
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =8010
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =7410
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_PO_Label"
                            Caption ="D_PO"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =7410
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =7740
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1401
                    Top =8094
                    Width =2760
                    Height =330
                    ColumnWidth =3000
                    TabIndex =15
                    ForeColor =0
                    Name ="D_AVGPRICE"
                    ControlSource ="D_AVGPRICE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =1401
                    LayoutCachedTop =8094
                    LayoutCachedWidth =4161
                    LayoutCachedHeight =8424
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =342
                            Top =8094
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_AVGPRICE_Label"
                            Caption ="D_AVGPRICE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =342
                            LayoutCachedTop =8094
                            LayoutCachedWidth =1311
                            LayoutCachedHeight =8424
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =342
                    Width =2760
                    Height =330
                    ColumnWidth =3000
                    TabIndex =16
                    ForeColor =0
                    Name ="D_TOTALVALUE"
                    ControlSource ="D_TOTALVALUE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =342
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =672
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =342
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_TOTALVALUE_Label"
                            Caption ="D_TOTALVALUE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =342
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =672
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =741
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =17
                    ForeColor =0
                    Name ="D_BINLOC"
                    ControlSource ="D_BINLOC"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =741
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =1341
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =741
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_BINLOC_Label"
                            Caption ="D_BINLOC"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =741
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =1071
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =1425
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =18
                    ForeColor =0
                    Name ="D_BINLOCNEW"
                    ControlSource ="D_BINLOCNEW"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =1425
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =2025
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =1425
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_BINLOCNEW_Label"
                            Caption ="D_BINLOCNEW"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =1425
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =1755
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =93
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =2109
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =19
                    ForeColor =0
                    Name ="D_DESTINATION"
                    ControlSource ="D_DESTINATION"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =2109
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =2709
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =2109
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_DESTINATION_Label"
                            Caption ="D_DESTINATION"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =2109
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =2439
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =93
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =2793
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =20
                    ForeColor =0
                    Name ="D_REFERENCE"
                    ControlSource ="D_REFERENCE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =2793
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =3393
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =2793
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_REFERENCE_Label"
                            Caption ="D_REFERENCE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =2793
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =3123
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =3477
                    Width =2760
                    Height =1140
                    ColumnWidth =3000
                    TabIndex =21
                    ForeColor =0
                    Name ="D_REMARKS"
                    ControlSource ="D_REMARKS"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =3477
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =4617
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =3477
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_REMARKS_Label"
                            Caption ="D_REMARKS"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =3477
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =3807
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =4731
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =22
                    ForeColor =0
                    Name ="D_MATERIALTYPE"
                    ControlSource ="D_MATERIALTYPE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =4731
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =5331
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =4731
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_MATERIALTYPE_Label"
                            Caption ="D_MATERIALTYPE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =4731
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =5061
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =5415
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =23
                    ForeColor =0
                    Name ="D_OWNERSHIP"
                    ControlSource ="D_OWNERSHIP"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =5415
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =6015
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =5415
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_OWNERSHIP_Label"
                            Caption ="D_OWNERSHIP"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =5415
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =5745
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =6099
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =24
                    ForeColor =0
                    Name ="D_DOCSAP"
                    ControlSource ="D_DOCSAP"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =6099
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =6699
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =6099
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_DOCSAP_Label"
                            Caption ="D_DOCSAP"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =6099
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =6429
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =6783
                    Width =1620
                    Height =330
                    ColumnWidth =1620
                    TabIndex =25
                    ForeColor =0
                    Name ="D_DATEDOCSAP"
                    ControlSource ="D_DATEDOCSAP"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =6783
                    LayoutCachedWidth =7020
                    LayoutCachedHeight =7113
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =6783
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_DATEDOCSAP_Label"
                            Caption ="D_DATEDOCSAP"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =6783
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =7113
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =7182
                    Width =2760
                    Height =330
                    ColumnWidth =3000
                    TabIndex =26
                    ForeColor =0
                    Name ="D_CATEGORY"
                    ControlSource ="D_CATEGORY"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =7182
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =7512
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =7182
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_CATEGORY_Label"
                            Caption ="D_CATEGORY"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =7182
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =7512
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =5400
                    Top =7581
                    Width =2760
                    Height =600
                    ColumnWidth =3000
                    TabIndex =27
                    ForeColor =0
                    Name ="D_SLOC"
                    ControlSource ="D_SLOC"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =5400
                    LayoutCachedTop =7581
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =8181
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =4341
                            Top =7581
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_SLOC_Label"
                            Caption ="D_SLOC"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =4341
                            LayoutCachedTop =7581
                            LayoutCachedWidth =5310
                            LayoutCachedHeight =7911
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9399
                    Top =342
                    Width =2064
                    Height =600
                    ColumnWidth =3000
                    TabIndex =28
                    ForeColor =0
                    Name ="D_PACKAGING"
                    ControlSource ="D_PACKAGING"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =9399
                    LayoutCachedTop =342
                    LayoutCachedWidth =11463
                    LayoutCachedHeight =942
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =8340
                            Top =342
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_PACKAGING_Label"
                            Caption ="D_PACKAGING"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =8340
                            LayoutCachedTop =342
                            LayoutCachedWidth =9309
                            LayoutCachedHeight =672
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9399
                    Top =1026
                    Width =1035
                    Height =330
                    ColumnWidth =1035
                    TabIndex =29
                    ForeColor =0
                    Name ="D_FINALCHECK"
                    ControlSource ="D_FINALCHECK"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =9399
                    LayoutCachedTop =1026
                    LayoutCachedWidth =10434
                    LayoutCachedHeight =1356
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =8340
                            Top =1026
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_FINALCHECK_Label"
                            Caption ="D_FINALCHECK"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =8340
                            LayoutCachedTop =1026
                            LayoutCachedWidth =9309
                            LayoutCachedHeight =1356
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9399
                    Top =1425
                    Width =2064
                    Height =330
                    ColumnWidth =3000
                    TabIndex =30
                    ForeColor =0
                    Name ="D_ROFINALCHECK"
                    ControlSource ="D_ROFINALCHECK"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =9399
                    LayoutCachedTop =1425
                    LayoutCachedWidth =11463
                    LayoutCachedHeight =1755
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =8340
                            Top =1425
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_ROFINALCHECK_Label"
                            Caption ="D_ROFINALCHECK"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =8340
                            LayoutCachedTop =1425
                            LayoutCachedWidth =9309
                            LayoutCachedHeight =1755
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9399
                    Top =1824
                    Width =2064
                    Height =330
                    ColumnWidth =3000
                    TabIndex =31
                    ForeColor =0
                    Name ="D_ROPLANT"
                    ControlSource ="D_ROPLANT"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =9399
                    LayoutCachedTop =1824
                    LayoutCachedWidth =11463
                    LayoutCachedHeight =2154
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =8340
                            Top =1824
                            Width =969
                            Height =330
                            ForeColor =0
                            Name ="D_ROPLANT_Label"
                            Caption ="D_ROPLANT"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =8340
                            LayoutCachedTop =1824
                            LayoutCachedWidth =9309
                            LayoutCachedHeight =2154
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9581
                    Top =2437
                    Height =300
                    ColumnWidth =1725
                    TabIndex =7
                    ForeColor =0
                    Name ="D_MIAPNEW"
                    ControlSource ="D_MIAPNEW"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =9581
                    LayoutCachedTop =2437
                    LayoutCachedWidth =11282
                    LayoutCachedHeight =2737
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =247
                            TextFontFamily =34
                            Left =7880
                            Top =2437
                            Width =1380
                            Height =300
                            ForeColor =0
                            Name ="Label60"
                            Caption ="D_MIAPNEW"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =7880
                            LayoutCachedTop =2437
                            LayoutCachedWidth =9260
                            LayoutCachedHeight =2737
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =247
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =9581
                    Top =3004
                    Height =300
                    ColumnWidth =2385
                    TabIndex =8
                    ForeColor =0
                    Name ="D_DCDCODENEW"
                    ControlSource ="D_DCDCODENEW"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =9581
                    LayoutCachedTop =3004
                    LayoutCachedWidth =11282
                    LayoutCachedHeight =3304
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextFontFamily =34
                            Left =7880
                            Top =3004
                            Width =2040
                            Height =300
                            ForeColor =0
                            Name ="Label61"
                            Caption ="D_DCDCODENEW"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =7880
                            LayoutCachedTop =3004
                            LayoutCachedWidth =9920
                            LayoutCachedHeight =3304
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
CodeBehindForm
' See "MAT_MOVEMENT_EDITOR_Sub_ITEM.cls"
