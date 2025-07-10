Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    RecordLocks =2
    TabularFamily =0
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6860
    DatasheetFontHeight =11
    ItemSuffix =56
    Left =4420
    Top =2690
    Right =11540
    Bottom =10160
    TimerInterval =100
    Filter ="EMPLOYEE_ROWID=5"
    RecSrcDt = Begin
        0x6c575ed62d46e640
    End
    RecordSource ="t_employee"
    Caption ="USER ACCESS - EDITOR"
    DatasheetFontName ="Aptos"
    OnLoad ="[Event Procedure]"
    OnError ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
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
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
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
        Begin Tab
            TextFontFamily =0
            Width =5103
            Height =3402
            FontSize =11
            FontName ="Aptos Display"
            ThemeFontIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =3
            BackThemeColorIndex =1
            BackShade =85.0
            BorderLineStyle =0
            BorderThemeColorIndex =2
            BorderTint =60.0
            HoverThemeColorIndex =1
            PressedThemeColorIndex =1
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
            ForeThemeColorIndex =0
            ForeTint =75.0
        End
        Begin Page
            Width =1701
            Height =1701
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            CanGrow = NotDefault
            Height =7440
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Tab
                    OverlapFlags =85
                    Left =60
                    Top =60
                    Width =2600
                    Height =1920
                    FontWeight =700
                    Name ="TabCtl0"

                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =2660
                    LayoutCachedHeight =1980
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =110
                            Top =470
                            Width =2500
                            Height =1460
                            Name ="tbRecord"
                            Caption ="RECORD"
                            LayoutCachedLeft =110
                            LayoutCachedTop =470
                            LayoutCachedWidth =2610
                            LayoutCachedHeight =1930
                            Begin
                                Begin CommandButton
                                    OverlapFlags =215
                                    AccessKey =83
                                    TextFontFamily =34
                                    PictureType =2
                                    Left =170
                                    Top =566
                                    Width =966
                                    Height =1243
                                    Name ="btnSave"
                                    Caption ="&Save"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="btnSave"
                                    UnicodeAccessKey =83

                                    CursorOnHover =1
                                    LayoutCachedLeft =170
                                    LayoutCachedTop =566
                                    LayoutCachedWidth =1136
                                    LayoutCachedHeight =1809
                                    PictureCaptionArrangement =3
                                    ThemeFontIndex =-1
                                    Overlaps =1
                                End
                                Begin Line
                                    OverlapFlags =87
                                    Left =1305
                                    Top =623
                                    Width =0
                                    Height =1134
                                    Name ="Line26"
                                    LayoutCachedLeft =1305
                                    LayoutCachedTop =623
                                    LayoutCachedWidth =1305
                                    LayoutCachedHeight =1757
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    AccessKey =85
                                    TextFontFamily =34
                                    PictureType =2
                                    Left =1474
                                    Top =566
                                    Width =966
                                    Height =1243
                                    TabIndex =1
                                    Name ="btnCancel"
                                    Caption ="&Undo"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="btnCancel"
                                    UnicodeAccessKey =85

                                    CursorOnHover =1
                                    LayoutCachedLeft =1474
                                    LayoutCachedTop =566
                                    LayoutCachedWidth =2440
                                    LayoutCachedHeight =1809
                                    PictureCaptionArrangement =3
                                    ThemeFontIndex =-1
                                    Overlaps =1
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =110
                            Top =470
                            Width =2500
                            Height =1460
                            Name ="Page38"
                            Caption ="DISCARD"
                            LayoutCachedLeft =110
                            LayoutCachedTop =470
                            LayoutCachedWidth =2610
                            LayoutCachedHeight =1930
                            Begin
                                Begin CommandButton
                                    OverlapFlags =215
                                    AccessKey =68
                                    TextFontFamily =34
                                    PictureType =2
                                    Left =170
                                    Top =566
                                    Width =966
                                    Height =1243
                                    Name ="btnDelete"
                                    Caption ="&Delete"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="btnDelete"
                                    UnicodeAccessKey =68

                                    CursorOnHover =1
                                    LayoutCachedLeft =170
                                    LayoutCachedTop =566
                                    LayoutCachedWidth =1136
                                    LayoutCachedHeight =1809
                                    PictureCaptionArrangement =3
                                    ThemeFontIndex =-1
                                    Overlaps =1
                                End
                            End
                        End
                    End
                End
                Begin Tab
                    OverlapFlags =85
                    Left =5440
                    Top =60
                    Width =1314
                    Height =1922
                    FontWeight =700
                    TabIndex =1
                    Name ="tpForm"

                    LayoutCachedLeft =5440
                    LayoutCachedTop =60
                    LayoutCachedWidth =6754
                    LayoutCachedHeight =1982
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =5490
                            Top =470
                            Width =1210
                            Height =1460
                            Name ="tbWindow"
                            Caption ="WINDOW"
                            LayoutCachedLeft =5490
                            LayoutCachedTop =470
                            LayoutCachedWidth =6700
                            LayoutCachedHeight =1930
                            Begin
                                Begin CommandButton
                                    OverlapFlags =215
                                    AccessKey =67
                                    TextFontFamily =34
                                    PictureType =2
                                    Left =5614
                                    Top =580
                                    Width =966
                                    Height =1243
                                    Name ="btnClose"
                                    Caption ="&Close"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="btnClose"
                                    UnicodeAccessKey =67

                                    CursorOnHover =1
                                    LayoutCachedLeft =5614
                                    LayoutCachedTop =580
                                    LayoutCachedWidth =6580
                                    LayoutCachedHeight =1823
                                    PictureCaptionArrangement =3
                                    ThemeFontIndex =-1
                                    Overlaps =1
                                End
                            End
                        End
                    End
                End
                Begin Tab
                    OverlapFlags =85
                    Left =60
                    Top =2265
                    Width =6690
                    Height =5175
                    FontWeight =700
                    TabIndex =2
                    Name ="tpDetail"

                    LayoutCachedLeft =60
                    LayoutCachedTop =2265
                    LayoutCachedWidth =6750
                    LayoutCachedHeight =7440
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =110
                            Top =2680
                            Width =6590
                            Height =4710
                            Name ="tbDetail"
                            Caption ="DETAIL"
                            LayoutCachedLeft =110
                            LayoutCachedTop =2680
                            LayoutCachedWidth =6700
                            LayoutCachedHeight =7390
                            Begin
                                Begin TextBox
                                    OverlapFlags =215
                                    TextFontFamily =34
                                    IMESentenceMode =3
                                    Left =1927
                                    Top =2891
                                    Width =2556
                                    Height =315
                                    Name ="txtEmployeeID"
                                    ControlSource ="EMPLOYEE_CODE"
                                    FontName ="Segoe UI"
                                    OnLostFocus ="[Event Procedure]"
                                    OnChange ="[Event Procedure]"

                                    LayoutCachedLeft =1927
                                    LayoutCachedTop =2891
                                    LayoutCachedWidth =4483
                                    LayoutCachedHeight =3206
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    ThemeFontIndex =-1
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =226
                                            Top =2891
                                            Width =1290
                                            Height =315
                                            ForeColor =0
                                            Name ="Label13"
                                            Caption ="Employee ID"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =226
                                            LayoutCachedTop =2891
                                            LayoutCachedWidth =1516
                                            LayoutCachedHeight =3206
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
                                    Left =1927
                                    Top =3345
                                    Width =4326
                                    Height =315
                                    TabIndex =1
                                    Name ="txtJobTitle"
                                    ControlSource ="EMPLOYEE_TITLE"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT t_employee.EMPLOYEE_TITLE FROM t_employee GROUP BY t_employee.EMPLOYEE_TI"
                                        "TLE ORDER BY t_employee.EMPLOYEE_TITLE; "
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =1927
                                    LayoutCachedTop =3345
                                    LayoutCachedWidth =6253
                                    LayoutCachedHeight =3660
                                    ThemeFontIndex =-1
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeTint =75.0
                                    ForeShade =100.0
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =226
                                            Top =3345
                                            Width =855
                                            Height =315
                                            ForeColor =0
                                            Name ="Label15"
                                            Caption ="Job Title"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =226
                                            LayoutCachedTop =3345
                                            LayoutCachedWidth =1081
                                            LayoutCachedHeight =3660
                                            ThemeFontIndex =-1
                                            ForeThemeColorIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin TextBox
                                    OverlapFlags =215
                                    TextFontFamily =34
                                    IMESentenceMode =3
                                    Left =1926
                                    Top =3799
                                    Width =4311
                                    Height =315
                                    TabIndex =2
                                    Name ="txtFullName"
                                    ControlSource ="EMPLOYEE_FULLNAME"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =1926
                                    LayoutCachedTop =3799
                                    LayoutCachedWidth =6237
                                    LayoutCachedHeight =4114
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    ThemeFontIndex =-1
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =225
                                            Top =3799
                                            Width =1080
                                            Height =315
                                            ForeColor =0
                                            Name ="Label17"
                                            Caption ="Full Name"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =225
                                            LayoutCachedTop =3799
                                            LayoutCachedWidth =1305
                                            LayoutCachedHeight =4114
                                            ThemeFontIndex =-1
                                            ForeThemeColorIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin ComboBox
                                    RowSourceTypeInt =1
                                    OverlapFlags =215
                                    TextAlign =2
                                    TextFontFamily =34
                                    IMESentenceMode =3
                                    Left =1926
                                    Top =4725
                                    Height =315
                                    TabIndex =3
                                    Name ="Text22"
                                    ControlSource ="EMPLOYEE_SPONSOR"
                                    RowSourceType ="Value List"
                                    RowSource ="\"I01\";\"I04\""
                                    DefaultValue ="\"I01\""
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =1926
                                    LayoutCachedTop =4725
                                    LayoutCachedWidth =3627
                                    LayoutCachedHeight =5040
                                    ThemeFontIndex =-1
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeTint =75.0
                                    ForeShade =100.0
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =225
                                            Top =4725
                                            Width =870
                                            Height =315
                                            ForeColor =0
                                            Name ="Label23"
                                            Caption ="Sponsor"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =225
                                            LayoutCachedTop =4725
                                            LayoutCachedWidth =1095
                                            LayoutCachedHeight =5040
                                            ThemeFontIndex =-1
                                            ForeThemeColorIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin Image
                                    Left =4590
                                    Top =2895
                                    Width =317
                                    Height =317
                                    Name ="imgNoDuplicate"
                                    Picture ="check.ico"
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x00000000000000000000000000000000000034b1580036b2570036b2570036b2 ,
                                        0x570036b2570236b2572836b2576a36b257ab36b257d836b257f236b257fd36b2 ,
                                        0x57fd36b257f336b257da36b257ae36b2576e36b2572b36b2570336b2570036b2 ,
                                        0x570036b2570039b4570000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000036b2570036b2570036b2570036b2570136b2 ,
                                        0x573536b2579436b257de36b257fb36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257fc36b257e036b2579a36b2573a36b2 ,
                                        0x570236b2570036b2570036b25700000000000000000000000000000000000000 ,
                                        0x0000000000000000000036b2570036b2570036b2570036b2571736b2578636b2 ,
                                        0x57e936b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ec36b2 ,
                                        0x578d36b2571b36b2570036b2570036b2570007190c0000000000000000000000 ,
                                        0x00000000000036b2570036b2570036b2570036b2573236b257be36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257c536b2573836b2570036b2570036b2570000000000000000000000 ,
                                        0x000036b2570036b2570036b2570036b2573d36b257d636b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257dc36b2574536b2570036b2570036b257000000000035b2 ,
                                        0x570036b2570036b2570036b2573136b257d636b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257dc36b2573936b2570036b2570037b3570037b2 ,
                                        0x580036b2570036b2571636b257bd36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff34b155ff33b154ff34b155ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257c636b2571c36b2570036b2570034b1 ,
                                        0x540013a1260137b2588338b359ff39b45cff3bb45dff3bb45eff3bb45eff3ab4 ,
                                        0x5dff39b35bff37b258ff39b359ff5ec178ff78cb8eff5dc178ff38b359ff35b2 ,
                                        0x56ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b2578e36b2570236b2570044b9 ,
                                        0x6b0044b96b3443b869e844b96bff46b96dff46ba6eff47ba6fff47ba6fff46ba ,
                                        0x6eff45b96cff48ba6eff9ad9adffeff9f2fffdfefeffeff9f1ff94d6a6ff3ab3 ,
                                        0x5aff35b256ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ed36b2573c36b2570041b7 ,
                                        0x660147ba6f9447ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff46ba ,
                                        0x6eff4abb72ffa0dbb4fffbfdfcfffffffffffffffffffffffffff9fdfaff92d5 ,
                                        0xa4ff38b359ff35b256ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2579d36b2570346ba ,
                                        0x6e2747ba6fdd47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff46ba6fff49bb ,
                                        0x71ff9cdab1fff9fdfafffffffffffffffffffffffffffffffffffffffffff7fc ,
                                        0xf8ff8cd39fff37b258ff35b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257e236b2572e47ba ,
                                        0x6e6847ba6ffb47ba6fff47ba6fff47ba6fff47ba6fff46ba6fff49bb70ff98d8 ,
                                        0xaefff8fcf9ffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xfffff4fbf6ff85d099ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257fd36b2577347ba ,
                                        0x6fa947ba6fff47ba6fff47ba6fff47ba6fff47ba6fff48ba70ff94d7abfff7fc ,
                                        0xf8ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xfffffffffffff2faf4ff7fce94ff35b256ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257b347ba ,
                                        0x6fd647ba6fff47ba6fff47ba6fff47ba6fff48ba6fff90d5a8fff5fbf7ffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xffffffffffffffffffffeff9f1ff79cb8fff35b156ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257df47ba ,
                                        0x6ff047ba6fff47ba6fff47ba6fff45b96dff6dc88dffeef9f2ffffffffffffff ,
                                        0xfffffffffffffffffffffffffffffafdfbffdaf1e2fffcfefcffffffffffffff ,
                                        0xffffffffffffffffffffffffffffebf7efff72c98aff34b155ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257f847ba ,
                                        0x6ffb47ba6fff47ba6fff47ba6fff44b96dff96d8adffffffffffffffffffffff ,
                                        0xfffffffffffffffffffffdfefdffabdfbdff59c17dffb4e3c4ffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffe8f6ebff6dc785ff34b155ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff47ba ,
                                        0x6ffb47ba6fff47ba6fff47ba6fff44b96dff89d3a3fffefffeffffffffffffff ,
                                        0xfffffffffffffefffeffafe1c1ff4fbd75ff45b96dff52be78ffbae5c9ffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffe4f5e8ff67c580ff34b1 ,
                                        0x55ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff47ba ,
                                        0x6ff047ba6fff47ba6fff47ba6fff46ba6eff57c07cffccecd7ffffffffffffff ,
                                        0xfffffcfefdffb1e2c2ff50bd76ff46ba6eff47ba6fff45b96eff55bf7affc0e7 ,
                                        0xceffffffffffffffffffffffffffffffffffffffffffffffffffdff3e5ff62c3 ,
                                        0x7bff34b155ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257f847ba ,
                                        0x6fd647ba6fff47ba6fff47ba6fff47ba6fff46ba6eff5bc17fff99d9afffafe1 ,
                                        0xc1ff89d3a3ff4fbd75ff46ba6eff47ba6fff47ba6fff47ba6fff45b96eff58c0 ,
                                        0x7cffc6ead2ffffffffffffffffffffffffffffffffffffffffffffffffffdbf1 ,
                                        0xe0ff5ac075ff34b156ff36b257ff36b257ff36b257ff36b257ff36b257df47ba ,
                                        0x6fa947ba6fff47ba6fff47ba6fff47ba6fff47ba6fff46ba6eff45b96dff46b9 ,
                                        0x6eff45b96dff46ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff45b9 ,
                                        0x6eff5bc27fffcbecd6ffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xffffb7e4c3ff3ab35aff36b257ff36b257ff36b257ff36b257ff36b257b347ba ,
                                        0x6e6947ba6ffb47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff45b96dff5fc382ffd0eedbffffffffffffffffffffffffffffffffffffff ,
                                        0xffffdcf2e2ff45b864ff35b256ff36b257ff36b257ff36b257fd36b2577346ba ,
                                        0x6e2747ba6fdd47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff45b96dff63c485ffd5efdeffffffffffffffffffffffffffffff ,
                                        0xffffc4e8ceff3cb45cff36b257ff36b257ff36b257ff36b257e236b2572e42b7 ,
                                        0x670147ba6f9447ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff45b96dff67c688ffd3efddfffefffeffffffffffe2f4 ,
                                        0xe7ff6ac682ff34b155ff36b257ff36b257ff36b257ff36b2579d36b2570347ba ,
                                        0x6e0046ba6e3547ba6fe947ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff45b96eff59c17dff87d2a1ff8dd4a5ff58bf ,
                                        0x75ff35b256ff36b257ff36b257ff36b257ff36b257ed36b2573c36b2570045b9 ,
                                        0x6d0041b7660147ba6f8647ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff46ba6eff44b96dff44b96cff39b4 ,
                                        0x5dff36b257ff36b257ff36b257ff36b257ff36b2578f36b2570336b2570046b9 ,
                                        0x6d0046ba6e0046ba6e1847ba6fc047ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff3bb4 ,
                                        0x5eff36b257ff36b257ff36b257ff36b257c636b2571c36b2570036b257004aba ,
                                        0x720047ba700047ba6f0046ba6e3347ba6fd847ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff46ba6eff3ab4 ,
                                        0x5dff36b257ff36b257ff36b257dc36b2573936b2570036b2570036b258000000 ,
                                        0x000045b96b0043b8690047ba700047ba6e3f47ba6fd847ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff46b96dff39b3 ,
                                        0x5bff36b257ff36b257dc36b2574536b2570036b2570036b25700000000000000 ,
                                        0x00000000000045b96d0045b96c0047ba700046ba6e3447ba6fc147ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff44b96bff38b3 ,
                                        0x59ff36b257c536b2573836b2570036b2570036b2570000000000000000000000 ,
                                        0x0000000000000000000045b96c0043b8690047ba6f0046ba6e1847ba6f8847ba ,
                                        0x6fea47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff47ba6fff42b868ec37b2 ,
                                        0x588d36b2571b36b2570036b2570036b2570007190c0000000000000000000000 ,
                                        0x000000000000000000000000000045b96b0047ba700046ba6e0042b8680146ba ,
                                        0x6e3747ba6f9747ba6fdf47ba6ffc47ba6fff47ba6fff47ba6fff47ba6fff47ba ,
                                        0x6fff47ba6fff47ba6fff47ba6fff47ba6ffc47ba6fe247ba6f9c43b86a3b2cad ,
                                        0x480236b2570036b2570036b25700000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000004ab7740046b96d0045b96d0047ba ,
                                        0x6e0043b8690246ba6e2a47ba6e6d47ba6fae47ba6fdb47ba6ff447ba6ffe47ba ,
                                        0x6ffe47ba6ff547ba6fdd47ba6fb147ba6e7146ba6e2d43b86a0343b86a0035b1 ,
                                        0x550037b2580036b259000000000000000000000000000000000000000000f800 ,
                                        0x001ff000000fe0000003c0000003800000010000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000080000001c0000003e0000003f000000ff800001f
                                    End

                                    LayoutCachedLeft =4590
                                    LayoutCachedTop =2895
                                    LayoutCachedWidth =4907
                                    LayoutCachedHeight =3212
                                    TabIndex =4
                                End
                                Begin Image
                                    Visible = NotDefault
                                    Left =4590
                                    Top =2896
                                    Width =318
                                    Height =318
                                    Name ="imgIsDuplicate"
                                    Picture ="info.ico"
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x0000000000000000000000000000000000003b4ad8004742dd004742dd004742 ,
                                        0xdd004742dd024742dd2a4742dd6c4742ddad4742ddd94742ddf34742ddfd4742 ,
                                        0xddfd4742ddf34742ddd94742ddad4742dd6d4742dd2a4742dd024742dd004742 ,
                                        0xdd004742dd004a42e50000000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000004742dd004742dd004742dd004742dd024742 ,
                                        0xdd374742dd974742dddf4742ddfc4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddfc4742dddf4742dd974742dd374742 ,
                                        0xdd014742dd004742dd004742dd00000000000000000000000000000000000000 ,
                                        0x000000000000000000004742dd004742dd004742dd004742dd194742dd894742 ,
                                        0xddea4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddea4742 ,
                                        0xdd894742dd194742dd004742dd004742dd000000000000000000000000000000 ,
                                        0x0000000000004742dd004742dd004742dd004742dd354742ddc24742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddc24742dd354742dd004742dd004742dd0000000000000000000000 ,
                                        0x00004742dd004742dd004742dd004742dd414742ddd94742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4640ddff4d48deff4d48 ,
                                        0xdeff4540ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddd94742dd404742dd004742dd004742dd00000000004439 ,
                                        0xdc004742dd004742dd004742dd354742ddd94742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4a45deff8b88eaffceccf6ffcdcc ,
                                        0xf6ff8a87e9ff4a45deff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddd94742dd354742dd004742dd00463fd9005251 ,
                                        0xe4004944de004540dc194742ddc24742ddff4843ddff4843deff4844deff4843 ,
                                        0xdeff4843ddff4742ddff4742ddff453fdcff7e7be7fff6f6fdffffffffffffff ,
                                        0xfffff5f5fdff7d79e7ff4540ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddc24742dd194742dd004742dd00504f ,
                                        0xe3005759e8024c4ae18a4d4ae1ff4f4de2ff504fe3ff5150e4ff5151e4ff5150 ,
                                        0xe4ff504fe3ff4f4de2ff4d4ae1ff4945dfffafadf1ffffffffffffffffffffff ,
                                        0xffffffffffffacaaf0ff4540ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742dd894742dd014742dd005353 ,
                                        0xe5005252e5395353e5eb5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5150e4ffa4a3f1ffffffffffffffffffffff ,
                                        0xffffffffffff9b99edff4540ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddea4742dd374742dd00504f ,
                                        0xe3035353e59a5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5252e5ff6868e8ffd1d1f8fffcfcfffffcfc ,
                                        0xffffcdccf6ff5d58e1ff4641ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742dd974742dd025252 ,
                                        0xe52b5353e5e05353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5252e5ff6262e7ff8888edff8888 ,
                                        0xedff5e5de5ff4844deff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742dddf4742dd2a5353 ,
                                        0xe56f5353e5fc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5050e5ff4e4ee4ff4e4e ,
                                        0xe4ff5050e5ff5150e4ff4a47dfff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfb4742dd6c5353 ,
                                        0xe5af5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5555e5ff7e7eecffa5a5f1ffa6a6 ,
                                        0xf2ff8686edff5757e6ff5151e4ff4a47dfff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddad5353 ,
                                        0xe5dc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5151e5ff7a7aebffefeffdffffffffffffff ,
                                        0xfffff7f7feff8a8aedff5151e5ff5150e4ff4945dfff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddd95353 ,
                                        0xe5f55353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ff9a9af0ffffffffffffffffffffff ,
                                        0xffffffffffffaeaef3ff5151e5ff5353e5ff504ee3ff4843deff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddf35353 ,
                                        0xe5fe5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ff9f9ff0ffffffffffffffffffffff ,
                                        0xffffffffffffb2b2f3ff5151e5ff5353e5ff5353e5ff4c4ae1ff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfd5353 ,
                                        0xe5fe5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa1a1f1ffffffffffffffffffffff ,
                                        0xffffffffffffb5b5f4ff5252e5ff5353e5ff5353e5ff5151e4ff4944deff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfd5353 ,
                                        0xe5f55353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa3a3f1ffffffffffffffffffffff ,
                                        0xffffffffffffb7b7f4ff5252e5ff5353e5ff5353e5ff5353e5ff4d4ae1ff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddf35353 ,
                                        0xe5dc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa4a4f1ffffffffffffffffffffff ,
                                        0xffffffffffffb8b8f4ff5252e5ff5353e5ff5353e5ff5353e5ff514fe3ff4843 ,
                                        0xdeff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddd95353 ,
                                        0xe5b05353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa5a5f1ffffffffffffffffffffff ,
                                        0xffffffffffffb9b9f4ff5252e5ff5353e5ff5353e5ff5353e5ff5252e5ff4a46 ,
                                        0xdfff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddad5353 ,
                                        0xe56f5353e5fc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa5a5f1ffffffffffffffffffffff ,
                                        0xffffffffffffb8b8f4ff5252e5ff5353e5ff5353e5ff5353e5ff5353e5ff4d4a ,
                                        0xe1ff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfc4742dd6c5352 ,
                                        0xe52c5353e5e15353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa3a3f1ffffffffffffffffffffff ,
                                        0xffffffffffffb7b7f4ff5252e5ff5353e5ff5353e5ff5353e5ff5353e5ff4f4d ,
                                        0xe2ff4742ddff4742ddff4742ddff4742ddff4742ddff4742dddf4742dd2a5150 ,
                                        0xe3035353e59a5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa2a2f1ffffffffffffffffffffff ,
                                        0xffffffffffffb6b6f4ff5252e5ff5353e5ff5353e5ff5353e5ff5353e5ff504f ,
                                        0xe3ff4743ddff4742ddff4742ddff4742ddff4742ddff4742dd974742dd025353 ,
                                        0xe5005352e5395353e5ec5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ffa0a0f1ffffffffffffffffffffff ,
                                        0xffffffffffffb3b3f4ff5252e5ff5353e5ff5353e5ff5353e5ff5353e5ff5150 ,
                                        0xe4ff4843deff4742ddff4742ddff4742ddff4742ddea4742dd374742dd005252 ,
                                        0xe4005150e3025353e58c5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ff9d9df0ffffffffffffffffffffff ,
                                        0xffffffffffffb0b0f3ff5151e5ff5353e5ff5353e5ff5353e5ff5353e5ff5150 ,
                                        0xe4ff4843deff4742ddff4742ddff4742ddff4742dd894742dd024742dd005252 ,
                                        0xe4005352e5005252e51b5353e5c45353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5050e5ff8b8bedfffdfdffffffffffffffff ,
                                        0xffffffffffff9e9ef0ff5151e5ff5353e5ff5353e5ff5353e5ff5353e5ff5150 ,
                                        0xe3ff4843deff4742ddff4742ddff4742ddc24742dd194742dd004742dd004242 ,
                                        0xdb005454e6005353e5005352e5375353e5db5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5252e5ff5d5de7ffaeaef3ffd9d9f9ffdada ,
                                        0xf9ffb8b8f4ff6464e8ff5252e5ff5353e5ff5353e5ff5353e5ff5353e5ff504f ,
                                        0xe3ff4743ddff4742ddff4742ddd94742dd354742dd004742dd00463ae2000000 ,
                                        0x00005150e4005150e3005354e5005352e5435353e5db5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5252e5ff5454e5ff5b5be6ff5c5c ,
                                        0xe6ff5555e5ff5252e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff4f4d ,
                                        0xe2ff4742ddff4742ddd94742dd414742dd004742dd004742dd00000000000000 ,
                                        0x0000000000005251e4005151e4005454e5005352e5375353e5c45353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252e5ff5252 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff4c4a ,
                                        0xe1ff4742ddc24742dd354742dd004742dd004742dd0000000000000000000000 ,
                                        0x000000000000000000005251e4005150e3005353e5005252e51a5353e58c5353 ,
                                        0xe5eb5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5352e5eb4c49 ,
                                        0xe08a4640dc194742dd004742dd004742dd000000000000000000000000000000 ,
                                        0x00000000000000000000000000005150e4005454e5005352e500514fe3025352 ,
                                        0xe5395353e5995353e5e15353e5fc5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5fc5353e5e15353e59a5352e5395658 ,
                                        0xe7024844de004742dd004742dd00000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000004439e2005252e4005251e4005353 ,
                                        0xe5005050e4035352e52c5353e56f5353e5af5353e5dc5353e5f55353e5fe5353 ,
                                        0xe5fe5353e5f55353e5dc5353e5b05353e56f5352e52c5150e3035353e500504f ,
                                        0xe3005151e4004e48e2000000000000000000000000000000000000000000f800 ,
                                        0x001ff000000fe0000007c0000003800000010000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000080000001c0000003e0000007f000000ff800001f
                                    End

                                    LayoutCachedLeft =4590
                                    LayoutCachedTop =2896
                                    LayoutCachedWidth =4908
                                    LayoutCachedHeight =3214
                                    TabIndex =5
                                End
                                Begin TextBox
                                    Visible = NotDefault
                                    OverlapFlags =215
                                    TextFontFamily =34
                                    IMESentenceMode =3
                                    Left =4761
                                    Top =4725
                                    Width =1476
                                    Height =315
                                    TabIndex =6
                                    Name ="txtUserID"
                                    ControlSource ="EMPLOYEE_ID"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =4761
                                    LayoutCachedTop =4725
                                    LayoutCachedWidth =6237
                                    LayoutCachedHeight =5040
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    ThemeFontIndex =-1
                                    Begin
                                        Begin Label
                                            Visible = NotDefault
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =3798
                                            Top =4725
                                            Width =900
                                            Height =315
                                            ForeColor =0
                                            Name ="Label34"
                                            Caption ="User ID"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =3798
                                            LayoutCachedTop =4725
                                            LayoutCachedWidth =4698
                                            LayoutCachedHeight =5040
                                            ThemeFontIndex =-1
                                            ForeThemeColorIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin TextBox
                                    Visible = NotDefault
                                    TabStop = NotDefault
                                    OverlapFlags =215
                                    TextFontFamily =34
                                    IMESentenceMode =3
                                    Left =3695
                                    Top =5950
                                    Width =2511
                                    Height =317
                                    TabIndex =7
                                    Name ="txtPassword"
                                    ControlSource ="EMPLOYEE_PASSWORD"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =3695
                                    LayoutCachedTop =5950
                                    LayoutCachedWidth =6206
                                    LayoutCachedHeight =6267
                                    ThemeFontIndex =-1
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    AccessKey =80
                                    TextFontFamily =34
                                    Left =1930
                                    Top =5950
                                    Height =343
                                    TabIndex =8
                                    Name ="btnChangePassword"
                                    Caption ="Set &Password"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    UnicodeAccessKey =80

                                    CursorOnHover =1
                                    LayoutCachedLeft =1930
                                    LayoutCachedTop =5950
                                    LayoutCachedWidth =3631
                                    LayoutCachedHeight =6293
                                    ThemeFontIndex =-1
                                    Overlaps =1
                                End
                                Begin ComboBox
                                    OverlapFlags =215
                                    TextAlign =2
                                    TextFontFamily =34
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    Left =1926
                                    Top =4260
                                    Width =4311
                                    Height =345
                                    TabIndex =9
                                    Name ="cboSloc"
                                    ControlSource ="EMPLOYEE_SLOCID"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT s.SLOC_ID, (p.PLANT_CODE & ' - ' & s.SLOC_CODE & ' - ' & s.SLOC_NAME) AS "
                                        "SLOC_CODE FROM t_plant AS p INNER JOIN t_sloc AS s ON p.PLANT_ID = s.SLOC_PLANT "
                                        "ORDER BY p.PLANT_CODE, s.SLOC_CODE; "
                                    ColumnWidths ="0;2835"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =1926
                                    LayoutCachedTop =4260
                                    LayoutCachedWidth =6237
                                    LayoutCachedHeight =4605
                                    ThemeFontIndex =-1
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeTint =75.0
                                    ForeShade =100.0
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =225
                                            Top =4260
                                            Width =1320
                                            Height =345
                                            ForeColor =0
                                            Name ="Label21"
                                            Caption ="Working Loc"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =225
                                            LayoutCachedTop =4260
                                            LayoutCachedWidth =1545
                                            LayoutCachedHeight =4605
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
                                    Left =1931
                                    Top =5160
                                    Width =2786
                                    Height =317
                                    TabIndex =10
                                    Name ="Text54"
                                    ControlSource ="EMPLOYEE_SCOPEOFWORK"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT t_employee.EMPLOYEE_SCOPEOFWORK FROM t_employee GROUP BY t_employee.EMPLO"
                                        "YEE_SCOPEOFWORK ORDER BY t_employee.EMPLOYEE_SCOPEOFWORK; "
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =1931
                                    LayoutCachedTop =5160
                                    LayoutCachedWidth =4717
                                    LayoutCachedHeight =5477
                                    ThemeFontIndex =-1
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeTint =75.0
                                    ForeShade =100.0
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =230
                                            Top =5160
                                            Width =1640
                                            Height =345
                                            ForeColor =0
                                            Name ="Label55"
                                            Caption ="Scope of Work"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =230
                                            LayoutCachedTop =5160
                                            LayoutCachedWidth =1870
                                            LayoutCachedHeight =5505
                                            ThemeFontIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =110
                            Top =2680
                            Width =6590
                            Height =4710
                            Name ="Page46"
                            Caption ="WORKING LOCATION"
                            LayoutCachedLeft =110
                            LayoutCachedTop =2680
                            LayoutCachedWidth =6700
                            LayoutCachedHeight =7390
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    Left =170
                                    Top =3017
                                    Width =6457
                                    Height =4237
                                    Name ="SYS_MOD_ACCESS_Sub_SLOCLIST"
                                    SourceObject ="Form.SYS_MOD_ACCESS_Sub_SLOCLIST"
                                    LinkChildFields ="WORKINGAREA_EMPLOYEEID"
                                    LinkMasterFields ="EMPLOYEE_ID"

                                    LayoutCachedLeft =170
                                    LayoutCachedTop =3017
                                    LayoutCachedWidth =6627
                                    LayoutCachedHeight =7254
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =110
                            Top =2680
                            Width =6590
                            Height =4710
                            Name ="Page40"
                            Caption ="ACCESS LEVEL"
                            LayoutCachedLeft =110
                            LayoutCachedTop =2680
                            LayoutCachedWidth =6700
                            LayoutCachedHeight =7390
                            Begin
                                Begin CheckBox
                                    OverlapFlags =247
                                    Left =1584
                                    Top =3091
                                    Name ="chkIsLocked"
                                    ControlSource ="EMPLOYEE_ISLOCKED"

                                    LayoutCachedLeft =1584
                                    LayoutCachedTop =3091
                                    LayoutCachedWidth =1844
                                    LayoutCachedHeight =3331
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextFontFamily =34
                                            Left =453
                                            Top =3061
                                            Width =980
                                            Height =300
                                            ForeColor =0
                                            Name ="Label50"
                                            Caption ="Is Locked"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =453
                                            LayoutCachedTop =3061
                                            LayoutCachedWidth =1433
                                            LayoutCachedHeight =3361
                                            ThemeFontIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin Rectangle
                                    SpecialEffect =0
                                    BackStyle =1
                                    OverlapFlags =255
                                    Left =4535
                                    Top =2891
                                    Width =2086
                                    Height =567
                                    BackColor =2366701
                                    Name ="Box51"
                                    LayoutCachedLeft =4535
                                    LayoutCachedTop =2891
                                    LayoutCachedWidth =6621
                                    LayoutCachedHeight =3458
                                    BackThemeColorIndex =-1
                                End
                                Begin Subform
                                    OverlapFlags =247
                                    Left =170
                                    Top =3627
                                    Width =6456
                                    Height =3626
                                    TabIndex =1
                                    Name ="SYS_MOD_ACCESS_Sub_AUTHORIZATION"
                                    SourceObject ="Form.SYS_MOD_ACCESS_Sub_AUTHORIZATION"
                                    LinkChildFields ="MODULEACCESS_EMPLOYEEID"
                                    LinkMasterFields ="EMPLOYEE_ID"

                                    LayoutCachedLeft =170
                                    LayoutCachedTop =3627
                                    LayoutCachedWidth =6626
                                    LayoutCachedHeight =7253
                                End
                                Begin CheckBox
                                    OverlapFlags =247
                                    Left =6062
                                    Top =3061
                                    TabIndex =2
                                    Name ="chkIsAdmin"
                                    ControlSource ="EMPLOYEE_ISADMIN"

                                    LayoutCachedLeft =6062
                                    LayoutCachedTop =3061
                                    LayoutCachedWidth =6322
                                    LayoutCachedHeight =3301
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextFontFamily =34
                                            Left =4875
                                            Top =3061
                                            Width =1080
                                            Height =290
                                            Name ="Label53"
                                            Caption ="Is Admin"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =4875
                                            LayoutCachedTop =3061
                                            LayoutCachedWidth =5955
                                            LayoutCachedHeight =3351
                                            ThemeFontIndex =-1
                                            ForeThemeColorIndex =1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                            End
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "SYS_MOD_ACCESS_EDITOR.cls"
