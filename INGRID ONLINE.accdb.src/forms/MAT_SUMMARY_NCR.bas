Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    RecordLocks =2
    TabularFamily =0
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =27270
    DatasheetFontHeight =11
    ItemSuffix =26
    Left =225
    Right =27750
    Bottom =15090
    RecSrcDt = Begin
        0x72017cff3551e640
    End
    RecordSource ="q_mat_sum_ncr_dashboard1"
    Caption ="INGRID ONLINE - SUMMARY NCR"
    DatasheetFontName ="Aptos"
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
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackThemeColorIndex =1
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
        Begin ModernChart
            OldBorderStyle =0
            BorderLineStyle =0
            Width =4536
            Height =2835
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BackThemeColorIndex =1
            ChartTitle ="Chart Title"
            ChartTitleFontName ="Aptos"
            ThemeFontIndex =1
            ChartSubtitle ="Subtitle"
        End
        Begin Section
            CanGrow = NotDefault
            Height =15105
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Tab
                    OverlapFlags =85
                    Left =60
                    Top =60
                    Width =2492
                    Height =1922
                    FontWeight =700
                    Name ="TabCtl0"

                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =2552
                    LayoutCachedHeight =1982
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =135
                            Top =540
                            Width =2340
                            Height =1365
                            Name ="Page1"
                            Caption ="EDITOR"
                            LayoutCachedLeft =135
                            LayoutCachedTop =540
                            LayoutCachedWidth =2475
                            LayoutCachedHeight =1905
                            Begin
                                Begin CommandButton
                                    Enabled = NotDefault
                                    OverlapFlags =215
                                    AccessKey =65
                                    Left =172
                                    Top =568
                                    Width =966
                                    Height =1243
                                    Name ="btnAdd"
                                    Caption ="&Add"
                                    Picture ="plus.ico"
                                    UnicodeAccessKey =65
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x0000000000000000000000000000000000003e98f3003e97f9003e97f9003e97 ,
                                        0xf9003e97f9023e97f9293e97f96c3e97f9ad3e97f9d93e97f9f33e97f9fd3e97 ,
                                        0xf9fd3e97f9f33e97f9d93e97f9ad3e97f96d3e97f92a3e97f9023e97f9003e97 ,
                                        0xf9003e97f9003e93fc0000000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000003e97f9003e97f9003e97f9003e97f9013e97 ,
                                        0xf9373e97f9973e97f9df3e97f9fb3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fc3e97f9df3e97f9983e97f9373e97 ,
                                        0xf9013e97f9003e97f9003e97f900000000000000000000000000000000000000 ,
                                        0x000000000000000000003e97f9003e97f9003e97f9003e97f9193e97f9893e97 ,
                                        0xf9ea3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ea3e97 ,
                                        0xf9893e97f9193e97f9003e97f9003e97f9000000000000000000000000000000 ,
                                        0x0000000000003e97f9003e97f9003e97f9003e97f9353e97f9c23e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9c23e97f9353e97f9003e97f9003e97f90000000000000000000000 ,
                                        0x00003e97f9003e97f9003e97f9003e97f9403e97f9d93e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9d93e97f9413e97f9003e97f9003e97f900000000004599 ,
                                        0xf9003e97f9003e97f9003e97f9353e97f9d93e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3b95f9ff3b95 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9d93e97f9353e97f9003e97f9003f8ffa004ba7 ,
                                        0xfc004099f9003c95f9193e97f9c23e98f9ff3f98f9ff4099f9ff409af9ff4099 ,
                                        0xf9ff3f99f9ff3f98f9ff3e97f9ff3e97f9ff3d97f9ff459bf9ff72b3fbff72b3 ,
                                        0xfbff459bf9ff3d97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9c23e97f9193e97f9003e97f9004aa6 ,
                                        0xfc0054b1fe0245a0fb8a46a1fbff48a3fbff4aa5fcff4aa6fcff4ba6fcff4aa6 ,
                                        0xfcff4aa5fcff48a4fbff46a1fbff439dfaff3f99f9ff96c6fcfff9fcfffff9fc ,
                                        0xffff95c6fcff3d97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9893e97f9013e97f9004ca8 ,
                                        0xfc004ba7fc394ca8fceb4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4fa8fcffcce5feffffffffffffff ,
                                        0xffffc9e2fdff439af9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ea3e97f9373e97f90049a4 ,
                                        0xfb034ca8fc9a4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff51abfcffcfe8feffffffffffffff ,
                                        0xffffcbe3fdff449af9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9973e97f9024ba7 ,
                                        0xfc2b4ca8fce04ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff51abfcffcfe7feffffffffffffff ,
                                        0xffffcde5feff479efaff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9df3e97f92a4ca8 ,
                                        0xfc6f4ca8fcfc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff51abfcffcfe7feffffffffffffff ,
                                        0xffffcfe8feff50a9fcff429dfaff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fc3e97f96c4ca8 ,
                                        0xfcaf4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ba8fcff51aafcffcee7feffffffffffffff ,
                                        0xffffcee7feff51abfcff4aa6fcff429dfaff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ad4ca8 ,
                                        0xfcdc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ba8fcff50aa ,
                                        0xfcff51abfcff51abfcff51abfcff51aafcff56adfcffd0e8feffffffffffffff ,
                                        0xffffd0e8feff56adfcff51abfcff50a9fcff479efaff449af9ff439af9ff3d97 ,
                                        0xf9ff3d97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9d94ca8 ,
                                        0xfcf54ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff52abfcff9dcffdffcde7 ,
                                        0xfeffcee7feffcee7feffcee7feffcee7feffd0e8fefff2f9ffffffffffffffff ,
                                        0xfffff2f9ffffd0e8feffcee7feffcee7feffcde5feffcbe3fdffc9e2fdff96c6 ,
                                        0xfcff459bf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9f34ca8 ,
                                        0xfcfe4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a7fcff7dc0fdfff9fcffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9fc ,
                                        0xffff72b3fbff3b95f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fd4ca8 ,
                                        0xfcfe4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a7fcff7dc0fdfff9fcffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9fc ,
                                        0xffff72b3fbff3b95f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fd4ca8 ,
                                        0xfcf54ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff52abfcff9dcffdffcde7 ,
                                        0xfeffcee7feffcee7feffcee7feffcee7feffd0e8fefff2f9ffffffffffffffff ,
                                        0xfffff2f9ffffd0e8feffcee7feffcee7feffcee7feffcfe8feffcce5feff96c6 ,
                                        0xfcff459bf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9f34ca8 ,
                                        0xfcdc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ba8fcff4ba8fcff50aa ,
                                        0xfcff51abfcff51abfcff51abfcff51aafcff56adfcffd0e8feffffffffffffff ,
                                        0xffffd0e8feff56adfcff51aafcff51abfcff51abfcff51abfcff4ea7fcff3f98 ,
                                        0xf9ff3d97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9d94ca8 ,
                                        0xfcb04ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ba8fcff51aafcffcee7feffffffffffffff ,
                                        0xffffcee7feff51aafcff4ba8fcff4ca8fcff4ca8fcff4ca8fcff4ba7fcff429c ,
                                        0xfaff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ad4ca8 ,
                                        0xfc6f4ca8fcfc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff51abfcffcfe7feffffffffffffff ,
                                        0xffffcfe7feff51abfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff459f ,
                                        0xfaff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fc3e97f96c4ba7 ,
                                        0xfc2c4ca8fce14ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff51abfcffcfe7feffffffffffffff ,
                                        0xffffcfe7feff51abfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff47a2 ,
                                        0xfbff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9df3e97f92a49a5 ,
                                        0xfc034ca8fc9a4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff51abfcffcfe8feffffffffffffff ,
                                        0xffffcfe8feff51abfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a4 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9973e97f9024ca8 ,
                                        0xfc004ca7fc394ca8fcec4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff51aafcffcde7feffffffffffffff ,
                                        0xffffcde7feff51aafcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ea3e97f9373e97f9004ba7 ,
                                        0xfc0049a4fc024ca8fc8c4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ba8fcff9dcffdfff9fcfffff9fc ,
                                        0xffff9dcffdff4ba8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4aa5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f98a3e97f9023e97f9004ba7 ,
                                        0xfc004ba7fc004ba7fc1a4ca8fcc44ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff52abfcff7dc0fdff7dc0 ,
                                        0xfdff52abfcff4ba8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9c23e97f9193e97f9003e97f9003094 ,
                                        0xf7004da9fc004ca8fc004ba7fc374ca8fcdb4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a7fcff49a7 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff48a3 ,
                                        0xfbff3e98f9ff3e97f9ff3e97f9d93e97f9353e97f9003e97f9002e94ff000000 ,
                                        0x00004aa6fc0049a5fb004da9fc004ca7fc434ca8fcdb4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff47a1 ,
                                        0xfbff3e97f9ff3e97f9d93e97f9413e97f9003e97f9003e97f900000000000000 ,
                                        0x0000000000004aa6fc004aa6fc004da9fc004ba7fc374ca8fcc44ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff449e ,
                                        0xfaff3e97f9c23e97f9353e97f9003e97f9003e97f90000000000000000000000 ,
                                        0x000000000000000000004ba6fc0049a5fb004ca8fc004ba7fc1a4ca8fc8c4ca8 ,
                                        0xfceb4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ba7fceb439d ,
                                        0xfa8a3c95f9193e97f9003e97f9003e97f9000000000000000000000000000000 ,
                                        0x00000000000000000000000000004aa6fc004da9fc004ba7fc0049a4fb024ca7 ,
                                        0xfc394ca8fc9a4ca8fce14ca8fcfc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcfc4ca8fce14ca8fc9a4ba7fc394eaa ,
                                        0xfc024099f9003e97f9003e97f900000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000002d89f4004ba7fc004ba7fc004ca8 ,
                                        0xfc0049a5fb034ba7fc2b4ca8fc6f4ca8fcaf4ca8fcdc4ca8fcf54ca8fcfe4ca8 ,
                                        0xfcfe4ca8fcf54ca8fcdc4ca8fcb04ca8fc6f4ba7fc2c49a4fc034ca7fc0048a3 ,
                                        0xfb0049a5fb00288ff9000000000000000000000000000000000000000000f800 ,
                                        0x001ff000000fe0000007c0000003800000010000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000080000001c0000003e0000007f000000ff800001f
                                    End

                                    CursorOnHover =1
                                    LayoutCachedLeft =172
                                    LayoutCachedTop =568
                                    LayoutCachedWidth =1138
                                    LayoutCachedHeight =1811
                                    PictureCaptionArrangement =3
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    AccessKey =69
                                    Left =1487
                                    Top =572
                                    Width =966
                                    Height =1243
                                    Name ="btnEdit"
                                    Caption ="&Edit"
                                    Picture ="pencil.ico"
                                    UnicodeAccessKey =69
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e00000000000000000000035c ,
                                        0xbd84035cbdf1035cbdfb035cbded035cbddd035cbdcb035cbdb8035cbda4045d ,
                                        0xbe8f045dbe7a045dbe68045dbe56055ebf3c0054b50c338cee00439cfe003e97 ,
                                        0xf900000000000000000000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000025b ,
                                        0xbcf1025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025b ,
                                        0xbcff025bbcfe025bbcfc025bbcf8025bbcee166fd1a6429bfd1e3d96f8003e97 ,
                                        0xf9003e97f9000000000000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000025b ,
                                        0xbcfb025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025b ,
                                        0xbcff025bbcff025bbcff015abbff0a63c4ff328bedff3f98fabd3e97f9273e97 ,
                                        0xf9003e97f9003e97f90000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000025b ,
                                        0xbced025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025b ,
                                        0xbcff025bbcff025bbcff045dbeff267fe1ff3e97f9ff3e97f9ff3e97f9c83e97 ,
                                        0xf9303e97f9003e97f9003e97f900000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000025b ,
                                        0xbcdd025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025b ,
                                        0xbcff025bbcff025bbcff1b74d5ff3c95f7ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9d03e97f9373e97f9003e97f9003e97f9000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000035c ,
                                        0xbdcb025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025b ,
                                        0xbcff015abbff126bcdff3992f4ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9d73e97f93d3e97f9003e97f9003e97f90002060b00000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000035c ,
                                        0xbdb8025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff015a ,
                                        0xbbff0e67c8ff358eefff3f98faff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9db3e97f9423e97f9003e97f9003e97f90004090f000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000035c ,
                                        0xbda3025bbcff025bbcff025bbcff025bbcff025bbcff025bbcff015abbff0e67 ,
                                        0xc6ff3b96eeff49a4fcff46a1fbff439dfaff4099f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9de3e97f9443e97f9003e97f9003e97f9000001 ,
                                        0x020000000000000000000000000000000000000000000000000000000000035c ,
                                        0xbd8f025bbcff025bbcff025bbcff025bbcff025bbcff015abbff0e67c6ff3b96 ,
                                        0xedff4da9fdff4ca8fcff4ca8fcff4ca8fcff4aa6fcff46a1fbff419bfaff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9df3e97f9453e97f9003e97f9003e97 ,
                                        0xf90000000000000000000000000000000000000000000000000000000000045d ,
                                        0xbe7b025bbcff025bbcff025bbcff025bbcff015abbff106ac8ff3c97eeff4da9 ,
                                        0xfdff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ba7fcff46a0 ,
                                        0xfbff4099f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9de3e97f9433e97f9003e97 ,
                                        0xf9003e97f900000000000000000000000000000000000000000000000000045d ,
                                        0xbe68025bbcfc025bbcff025bbcff025bbcff1670ceff409cf2ff4da9fdff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff49a4fbff429bfaff3e97f9ff3e97f9ff3e97f9ff3e97f9dc3e97f9403e97 ,
                                        0xf9003e97f9003e97f9000000000000000000000000000000000000000000045d ,
                                        0xbe57025bbcf8015abbff045dbeff217bd6ff45a1f6ff4da9fdff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ba6fcff439dfaff3e97f9ff3e97f9ff3e97f9ff3e97f9d93e97 ,
                                        0xf93b3e97f9003e97f9003e97f90000000000000000000000000000000000055e ,
                                        0xbe3d025bbcee0b65c4ff2f8ae3ff4aa6faff4da9fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ba7fcff439dfaff3e97f9ff3e97f9ff3e97f9ff3e97 ,
                                        0xf9d43e97f9344b85fa00ff00ff00685cfb000000000000000000000000000050 ,
                                        0xb30c1b75d1a63e99f0ff4da9fdff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4aa6fcff419bfaff3e97f9ff3e97f9ff3e97 ,
                                        0xf9ff3e97f9cd4b85fa2c527bfa007e3efc006660fb0000000000000000003e9a ,
                                        0xf0004facff1e4da9fdbd4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a4fbff3f99f9ff3e97f9ff3d98 ,
                                        0xf9ff4d82faff6d56fcc4734efc23724efc007649fc006364fb000000000053b0 ,
                                        0xff004ba7fb004ba7fc274ca8fcc84ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff45a0fbff3d98f9ff4a87 ,
                                        0xfaff6c57fcff754bfcff734dfcb7744cfc1a5b6ffb003b9bf9003d98f9004aa5 ,
                                        0xfc0051aefd004ca8fc004ba7fc304ca8fcd14ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4aa7fcff4a8dfaff6a5a ,
                                        0xfbff754bfcff744cfcff744cfcff685dfba83c9af9114193f9003e97f9000000 ,
                                        0x00004aa6fc0046a1fb004ca8fc004ca7fc374ca8fcd74ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca9fcff529bfcff6a60fcff754b ,
                                        0xfcff744cfcff754bfcff6c57fcff4987faff3d98f9953e97f90a3e97f9000000 ,
                                        0x0000000000004aa6fc0049a5fc004ca8fc004ca7fc3e4ca8fcdb4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca9fcff519cfcff6a64fcff744bfcff744c ,
                                        0xfcff744bfcff6f53fcff4e81faff3d98f9ff3e97f9fc3e97f97a3e97f9020000 ,
                                        0x000000000000000000004aa6fc004aa6fc004ca8fc004ca7fc424ca8fcde4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca9fcff519dfcff6966fcff744bfcff744cfcff744b ,
                                        0xfcff7150fcff527bfaff3e97f9ff3e97f9ff3e97f9ff3e97f9e83e97f93d0000 ,
                                        0x00000000000000000000000000004ba6fc004aa6fc004da9fc004ba7fc454ca8 ,
                                        0xfcdf4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca9fcff519dfcff6966fcff744bfcff744cfcff744cfcff724f ,
                                        0xfcff5577faff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f99c0000 ,
                                        0x0000000000000000000000000000000000004aa6fc004aa6fb004da8fc004ba8 ,
                                        0xfc454ca8fcdf4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca9fcff519cfcff6966fcff744bfcff744cfcff744cfcff734ffcff5b77 ,
                                        0xfbff3f96f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9dd0000 ,
                                        0x000000000000000000000000000000000000000202004aa7fb004aa6fb004da9 ,
                                        0xfc004ba7fc444ca8fcdd4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca9 ,
                                        0xfcff529bfcff6a64fcff744bfcff744cfcff744cfcff734efcff607afcff4aa2 ,
                                        0xfbff3e98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fa0000 ,
                                        0x00000000000000000000000000000000000000000000000202004aa7fc004aa6 ,
                                        0xfc004ca9fc004ca7fc404ca8fcd94ca8fcff4ca8fcff4ca8fcff4ca9fcff5398 ,
                                        0xfcff6b61fcff744bfcff744cfcff744bfcff734efcff607afcff4da6fcff49a5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fe0000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000004ba6 ,
                                        0xfc004aa6fc004ca8fc004ba7fc3b4ca8fcd44ca8fcff4ca9fcff5594fcff6c5e ,
                                        0xfcff744bfcff744cfcff744bfcff734ffcff5f7cfcff4da6fcff4ca9fcff4aa5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9e90000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x00004aa6fc004aa5fc004ca8fc004ba8fc344ca7fccd578efcff6e59fcff744b ,
                                        0xfcff744cfcff744bfcff7251fcff5d80fcff4da7fcff4ca8fcff4ca8fcff49a5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9a70000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000004aa6fc0048a4fb005691fc005591fc2c6f58fcc4744bfcff744c ,
                                        0xfcff744bfcff7054fcff5b86fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff48a4 ,
                                        0xfbff3e98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9dd3e97f9350000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000004aa6fc00ff00f8005b86fc00744cfc23734dfcb8744b ,
                                        0xfcff6e5afcff588dfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff47a1 ,
                                        0xfbff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9f33e97f95b3e97f9000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000006d58fc007942fc00734efc00754afc1a6b60 ,
                                        0xfca95495fcff4ca9fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff449e ,
                                        0xfaff3e97f9ff3e97f9ff3e97f9ff3e97f9f83e97f9763e97f9023e97f9000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000006c5bfc007549fc006176fc004aaa ,
                                        0xfc114ba9fc954ca8fcfc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ba7fcff419b ,
                                        0xfaff3e97f9ff3e97f9ff3e97f9f33e97f9763e97f9053e97f9003e97f9000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000006960fb0049adfc004ea2 ,
                                        0xfc004ba7fc0a4ca8fc7a4ca8fce84ca8fcff4ca8fcff4ca8fcff48a3fbff3f98 ,
                                        0xf9ff3e97f9ff3e97f9dc3e97f95b3e97f9023e97f9003e97f9003d95f9000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000047a1fa004ba7 ,
                                        0xfc004ba7fc0048a3fb024ba7fc3e4ca8fc9d4ca8fcde4ca8fcfa449efafd3e97 ,
                                        0xf9e93e97f9a63e97f9353e97f9003e97f9003e97f9003e97fa00000000000000 ,
                                        0x7fff00003fff00001fff00000fff000007ff000001ff000000ff0000007f0000 ,
                                        0x007f0000003f0000001f0000000f000000070000000300000001000000000000 ,
                                        0x000080000000c0000000e0000000f0000000f8000000f8000000fc000000ff00 ,
                                        0x0000ff800000ffc00000ffe00000fff00000fff80000fffc0000fffe0001
                                    End

                                    CursorOnHover =1
                                    LayoutCachedLeft =1487
                                    LayoutCachedTop =572
                                    LayoutCachedWidth =2453
                                    LayoutCachedHeight =1815
                                    PictureCaptionArrangement =3
                                End
                                Begin Line
                                    OverlapFlags =87
                                    Left =1307
                                    Top =632
                                    Width =0
                                    Height =1134
                                    Name ="Line26"
                                    LayoutCachedLeft =1307
                                    LayoutCachedTop =632
                                    LayoutCachedWidth =1307
                                    LayoutCachedHeight =1766
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                End
                            End
                        End
                    End
                End
                Begin Tab
                    OverlapFlags =85
                    Left =2655
                    Top =60
                    Width =3195
                    Height =1921
                    FontWeight =700
                    TabIndex =1
                    Name ="TabCtl28"

                    LayoutCachedLeft =2655
                    LayoutCachedTop =60
                    LayoutCachedWidth =5850
                    LayoutCachedHeight =1981
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =2730
                            Top =540
                            Width =3045
                            Height =1365
                            Name ="Page29"
                            Caption ="DATA"
                            LayoutCachedLeft =2730
                            LayoutCachedTop =540
                            LayoutCachedWidth =5775
                            LayoutCachedHeight =1905
                            Begin
                                Begin CommandButton
                                    OverlapFlags =215
                                    AccessKey =82
                                    Left =2760
                                    Top =568
                                    Width =966
                                    Height =1243
                                    Name ="btnRefresh"
                                    Caption ="&Refresh"
                                    Picture ="repost.ico"
                                    UnicodeAccessKey =82
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x00000000000000000000000000002882400036b2570037b1570036b2570036b2 ,
                                        0x570036b2570136b2570836b2570936b2570936b2570936b2570936b2570538b1 ,
                                        0x5a0036b25600000000000000000036b2570036b2570036b2570036b2570336b2 ,
                                        0x570336b2570036b2570036b25700000000000000000000000000000000000000 ,
                                        0x00000000000000000000298d440036b2570036b2570036b2570036b2571936b2 ,
                                        0x576336b2579f36b257b636b257b936b257b936b257ba36b257bd36b2577436b2 ,
                                        0x570236b257000000000035b1570036b2570036b2570036b2573136b257a336b2 ,
                                        0x579f36b2572b36b2570036b2570036b157000000000000000000000000000000 ,
                                        0x0000000000000000000036b2570036b2570036b2570036b2574936b257cc36b2 ,
                                        0x57fe36b257ff36b257ff36b257ff36b257ff36b257fe36b257a536b2572d36b1 ,
                                        0x570036b257000000000036b2570036b2570036b2571436b257c036b257ff36b2 ,
                                        0x57ff36b257b636b2570f36b2570036b257000000000000000000000000000000 ,
                                        0x00000000000037b1570035b1590036b2570036b2574a36b257e736b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257fc36b2578736b2570936b2570035b3 ,
                                        0x560036b2570036b2570036b2570036b2570036b2577b36b257fe36b257ff36b2 ,
                                        0x57ff36b257fc36b2577036b2570036b2570036b2570000000000000000000000 ,
                                        0x00000000000036b2570036b2570036b2571a36b257cd36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257b636b2570e36b2570036b2570036b2 ,
                                        0x570035b2570036b2570036b2570036b2573936b257e736b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257e136b2573136b2570036b2570038b35900000000000000 ,
                                        0x00000000000026a9490036b2570036b2576636b257fe36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257f836b2575136b2570036b2570035b257000000 ,
                                        0x000036b2570036b2570036b2570f36b257b536b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ab36b2570a36b2570036b25700000000000000 ,
                                        0x00000000000038b3590037b3580238b359a439b45aff3ab55bff3bb55cff3bb5 ,
                                        0x5bff39b45aff37b358ff36b257dd36b2571d36b2570036b257000000000036b2 ,
                                        0x570036b2570036b2570036b2577036b257fc36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257fa36b2576536b2570036b2570036b257000000 ,
                                        0x0000000000004ec06e004dbf6d0950c170bd52c373ff54c474ff55c475ff54c4 ,
                                        0x74ff53c373ff4fc16fff4abe6bcb45bb650f46bb6600123d200034b35a0036b2 ,
                                        0x570036b2570036b2572f36b257e036b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257d936b2572736b2570036b257000000 ,
                                        0x00000000000055c4750055c4750a58c678c158c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff59c679ff58c678ca55c4750f55c475000000000052c2720038b3 ,
                                        0x590034b1550836b257a536b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b2579a36b2570536b257000000 ,
                                        0x00000000000054c4750054c3750a57c678c158c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ca55c4750f54c4740050c0700063cc820036b2 ,
                                        0x570038b3595636b257f636b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257f236b2574a36b257000000 ,
                                        0x00000000000054c4750054c3750a57c678c158c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ca55c4750f54c4740054c4740056c5760059c6 ,
                                        0x791750c170c93fb760ff36b257ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257bc36b257130000 ,
                                        0x00000000000054c4750054c3750a57c678c158c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ca55c4750f54c4740053c373005bc87b0057c6 ,
                                        0x777258c678fe54c475ff42b962ff36b257ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257f936b257710000 ,
                                        0x00000000000054c4750054c3750a57c678c158c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ca55c4750f54c4740056c5760056c5761758c6 ,
                                        0x78d158c678ff58c678ff55c475ff41b962ff36b257ff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257e00000 ,
                                        0x00000000000054c4750054c3750a57c678c158c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ca55c4750f54c4740056c5760056c5761c58c6 ,
                                        0x78db58c678ff58c678ff58c678ff54c474ff3eb75fff36b257ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ff36b257ed0000 ,
                                        0x00000000000054c4750054c3750a57c678c158c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ca55c4750f54c4740055c475004fc16f0157c6 ,
                                        0x776458c678da58c678ea58c678eb58c678fb50c170ff39b45aff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257f936b257ea36b257e936b257d436b2576555c4 ,
                                        0x740057c5770057c5770053c3740757c678c058c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678c954c4740c56c5770057c5770055c475004bbf ,
                                        0x6c0157c5771c57c6772a57c5773758c678d358c678ff47bc67ff36b257ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257c936b2573136b2572936b2571938b45600006d ,
                                        0x000057c5771a57c6772a57c5773358c678cb58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678d357c5773757c6772a57c5771c4cbf6b0155c4 ,
                                        0x750057c5770057c5770055c4740c58c678ca58c678ff54c474ff3cb55cff36b2 ,
                                        0x57ff36b257ff36b257ff36b257bd36b2570736b2570036b2570036b2570057c5 ,
                                        0x776758c678d558c678ea58c678eb58c678fa58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678fb58c678eb58c678ea58c678da57c677644fc0 ,
                                        0x6f0155c4750055c4750055c4750f58c678ca58c678ff58c678ff47bc68ff36b2 ,
                                        0x57ff36b257ff36b257ff36b257be36b2570936b25700000000000000000058c6 ,
                                        0x78ef58c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678db56c5 ,
                                        0x761c56c5760055c4750055c4750f58c678ca58c678ff58c678ff52c272ff39b4 ,
                                        0x5aff36b257ff36b257ff36b257be36b2570936b25700000000000000000058c6 ,
                                        0x78e358c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678d056c5 ,
                                        0x761756c5760055c4750055c4750f58c678ca58c678ff58c678ff57c577ff3fb7 ,
                                        0x60ff36b257ff36b257ff36b257be36b2570936b25700000000000000000057c6 ,
                                        0x777458c678fa58c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678fe57c677725bc8 ,
                                        0x7b0052c3730055c4750055c4750f58c678ca58c678ff58c678ff58c678ff47bc ,
                                        0x67ff36b257ff36b257ff36b257be36b2570936b25700000000000000000056c5 ,
                                        0x761458c678be58c678ff58c678ff58c678ff58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ff58c678ff58c678ff58c678c956c5761756c5 ,
                                        0x760054c4740055c4750055c4750f58c678ca58c678ff58c678ff59c679ff4cbf ,
                                        0x6dff36b257ff36b257ff36b257be36b2570936b25700000000000000000058c6 ,
                                        0x780057c5774d58c678f358c678ff58c678ff58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ff58c678ff58c678f757c5775858c6780060cb ,
                                        0x80004ec16f0055c4750055c4750f58c678ca58c678ff58c678ff58c678ff50c1 ,
                                        0x70ff37b358ff36b257ff36b257be36b2570936b25700000000000000000056c5 ,
                                        0x760054c4740557c6779c58c678ff58c678ff58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ff58c678ff58c678a755c4750856c5760053c3 ,
                                        0x73000000000055c4750055c4750f58c678ca58c678ff58c678ff58c678ff52c2 ,
                                        0x72ff38b359ff36b257ff36b257be36b2570936b25700000000000000000056c5 ,
                                        0x760057c5770057c5772858c678db58c678ff58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678ff58c678e257c5773157c6770057c5770056c8 ,
                                        0x72002b753e0055c5750056c5761058c678cc58c678ff58c678ff58c678ff52c3 ,
                                        0x72ff39b45aff36b257ff36b257bb36b2570836b2570000000000000000004ec0 ,
                                        0x6f0051c271005ac77a0057c6776758c678fa58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678fd57c677725dc97d0053c3730051c270000000 ,
                                        0x000052c2720056c5770056c5771f58c678de58c678ff58c678ff58c678ff51c2 ,
                                        0x72ff38b359ff36b257ff36b257a336b2570236b2570000000000000000000000 ,
                                        0x000055c4750056c5760055c4750b58c678ad58c678ff58c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678ff58c678b756c5761056c5760055c475000000000058c6 ,
                                        0x790058c6780058c6780057c5775358c678f958c678ff58c678ff59c678ff4fc1 ,
                                        0x6fff37b358ff36b257fe36b2576636b2570035b3550000000000000000000000 ,
                                        0x00004abd6b0057c5770057c6770057c5773258c678e258c678ff58c678ff58c6 ,
                                        0x78ff58c678ff58c678e857c5773b58c6780058c678004fc170004fc16f0057c5 ,
                                        0x770056c5760056c5760f58c678b858c678ff58c678ff58c678ff59c679ff4bbe ,
                                        0x6bff36b257ff36b257cd36b2571a36b2570036b2570000000000000000000000 ,
                                        0x00000000000051c2710053c373005dc97d0057c6777358c678fd58c678ff58c6 ,
                                        0x78ff58c678ff57c6777e8fe5ad0054c4740052c3720054c4740044bb650057c5 ,
                                        0x770055c4750957c6778a58c678fd58c678ff58c678ff58c678ff58c678ff44ba ,
                                        0x65ff35b256e736b2574a36b2570036b2580036b3570000000000000000000000 ,
                                        0x0000000000000000000055c4750056c5760056c5761058c678b858c678ff58c6 ,
                                        0x78ff58c678c256c5761556c5760055c475000000000054c4740068cf870057c5 ,
                                        0x772f58c678a758c678fe58c678ff58c678ff58c678ff58c678ff56c576fe3fb7 ,
                                        0x5fcc35b1564936b2570036b2570036b257000000000000000000000000000000 ,
                                        0x000000000000000000004fc26f0058c6780058c6780057c5772d57c678a158c6 ,
                                        0x78a557c5773358c678005ac77a0051c272000000000054c4740053c3730257c5 ,
                                        0x777757c677c057c678bc57c678bc57c678bc58c678b958c678a155c475643fb7 ,
                                        0x60193db65e0036b2570036b257002c9147000000000000000000000000000000 ,
                                        0x000000000000000000000000000053c373005dc97d0058c6780052c3720353c3 ,
                                        0x720458c6780076d9970053c37300000000000000000053c3730052c4740054c4 ,
                                        0x750654c4740a54c4740a54c4740a54c4740a54c474094dc06e0255c4750040b8 ,
                                        0x6100d1ffee0036b257002e95490000000000000000000000000000000000f000 ,
                                        0x300fe0002007e0002007c0000003c0000001c0008001c0010000c0000000c002 ,
                                        0x0000c0000000c0000000c0000000c0000000c0000000c0000000000000000000 ,
                                        0x0000000000030000000300000003000000030000000300000003000040030000 ,
                                        0x0003000080038001000380000003c0000003e0040007e0040007f00c000f
                                    End

                                    CursorOnHover =1
                                    LayoutCachedLeft =2760
                                    LayoutCachedTop =568
                                    LayoutCachedWidth =3726
                                    LayoutCachedHeight =1811
                                    PictureCaptionArrangement =3
                                End
                                Begin Line
                                    OverlapFlags =87
                                    Left =3894
                                    Top =625
                                    Width =0
                                    Height =1134
                                    Name ="Line32"
                                    LayoutCachedLeft =3894
                                    LayoutCachedTop =625
                                    LayoutCachedWidth =3894
                                    LayoutCachedHeight =1759
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                End
                                Begin TextBox
                                    OverlapFlags =215
                                    IMESentenceMode =3
                                    Left =3985
                                    Top =972
                                    Height =300
                                    FontSize =9
                                    LeftMargin =57
                                    RightMargin =58
                                    ForeColor =0
                                    Name ="txtFind"

                                    LayoutCachedLeft =3985
                                    LayoutCachedTop =972
                                    LayoutCachedWidth =5686
                                    LayoutCachedHeight =1272
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            Left =3985
                                            Top =631
                                            Width =735
                                            Height =300
                                            ForeColor =0
                                            Name ="Label34"
                                            Caption ="Find"
                                            LayoutCachedLeft =3985
                                            LayoutCachedTop =631
                                            LayoutCachedWidth =4720
                                            LayoutCachedHeight =931
                                            ForeThemeColorIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    Left =3986
                                    Top =1362
                                    Width =1326
                                    FontSize =9
                                    Name ="btnFind"
                                    Caption ="Find"

                                    CursorOnHover =1
                                    LayoutCachedLeft =3986
                                    LayoutCachedTop =1362
                                    LayoutCachedWidth =5312
                                    LayoutCachedHeight =1645
                                End
                                Begin CommandButton
                                    OverlapFlags =215
                                    Left =5368
                                    Top =1362
                                    Width =336
                                    Name ="btnFindClear"
                                    Picture ="tag32.ico"
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000030ff00181ee500181fe500171d ,
                                        0xe4001218e1021419e12a1217e16c1116e0ad1014dfd90e13def30d11ddfd0c10 ,
                                        0xdcfd0b0edbf30a0ddad9080bd8ad070ad46d0709d52a0508d7020608d6000507 ,
                                        0xd7000507d6000903d10000000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000001b23e7001a20e6001a21e600161ce302171d ,
                                        0xe437161ce397141ae2df1318e1fb1217e0ff1115dfff0f14dfff0e13deff0d11 ,
                                        0xddff0c10dcff0a0ed9ff090cd4ff070ad4fc0709d5df0609d6980508d6370305 ,
                                        0xd8010507d6000608d7000406d600000000000000000000000000000000000000 ,
                                        0x000000000000000000001e26e9001e26ea001c24e8001a21e7191920e689181e ,
                                        0xe5ea171de4ff151be3ff141ae2ff1318e1ff1217e0ff1115dfff0f14dfff0e13 ,
                                        0xdeff0c11daff0a0ed2ff090dd1ff080cd3ff070ad4ff0709d5ff0608d6ea0507 ,
                                        0xd6890507d6190507d6000305d5000406d6000000000000000000000000000000 ,
                                        0x0000000000002028eb001f27ea001e26e9001d24e8351b23e7c21a21e6ff1920 ,
                                        0xe6ff181ee5ff171de4ff151be3ff141ae2ff1318e1ff1217e0ff1116e0ff0f13 ,
                                        0xdaff0b10d0ff0a0fcfff0a0ed0ff090dd1ff080cd3ff070ad4ff0709d5ff0608 ,
                                        0xd6ff0507d6c20406d6350507d6000406d6000406d60000000000000000000000 ,
                                        0x0000222bed002028ea002028eb001f27ea401e26e9d91d24e8ff1b23e7ff1a21 ,
                                        0xe6ff1920e6ff181ee5ff171de4ff151be3ff141ae2ff1319e1ff1116dbff0d11 ,
                                        0xceff0b10ccff0b0fcdff0a0fcfff0a0ed0ff090dd1ff080cd3ff070ad4ff0709 ,
                                        0xd5ff0608d6ff0507d6d90406d6410507d6000305d6000406d600000000002a1d ,
                                        0xf600242eee00222aec00212aec352028ebd91f27eaff1e26e9ff1d24e8ff1b23 ,
                                        0xe7ff1a21e6ff1920e6ff181ee5ff171de4ff161be3ff1218dcff0d12cbff0c10 ,
                                        0xc9ff0c10caff0b10ccff0b0fcdff0a0fcfff0a0ed0ff090dd1ff080cd3ff070a ,
                                        0xd4ff0709d5ff0608d6ff0507d6d90406d6350507d6000508d7000b05d5002630 ,
                                        0xef00242dee00242ded19232bedc2212aecff2028ebff1f27eaff1e26e9ff1d24 ,
                                        0xe8ff1b23e7ff1a21e6ff1920e6ff181ee5ff141adcff0e13c9ff0c12c5ff0c11 ,
                                        0xc7ff0c10c9ff0c10caff0b10ccff0b0fcdff0a0fcfff0a0ed0ff090dd1ff080c ,
                                        0xd3ff070ad4ff0709d5ff0608d6ff0507d6c20507d6190507d6000507d600262f ,
                                        0xef002832f101252eee89242deeff232bedff212aecff2028ebff1f27eaff1e26 ,
                                        0xe9ff1d24e8ff1b23e7ff1a21e7ff161dddff0e14c6ff0c12c2ff0d12c4ff0c12 ,
                                        0xc6ff0c11c7ff0c10c9ff0c10caff0b10ccff0b0fcdff0a0fcfff0a0ed0ff090d ,
                                        0xd1ff080cd3ff070ad4ff0709d5ff0608d6ff0507d6890305d8010507d7002731 ,
                                        0xf0002731f0372630efea252eeeff242deeff232bedff212aecff2028ebff1f27 ,
                                        0xeaff1e26e9ff1c24e9ff171eddff0d13c3ff0b11beff0c11c0ff0c11c2ff0c11 ,
                                        0xc4ff0c11c5ff0b10c7ff0b10c9ff0b0fcaff0a0fccff0a0ecdff0a0ecfff0a0e ,
                                        0xd0ff090dd1ff080cd3ff070ad4ff0709d5ff0608d6ea0508d6370608d6002b36 ,
                                        0xf3022832f1972731f0ff2630efff252eeeff242deeff232bedff212aecff2028 ,
                                        0xebff1d25eaff2027dfff1c21c4ff1a1ebeff1a1fc1ff1a1fc3ff1a20c4ff1a20 ,
                                        0xc6ff1a20c8ff1a1fc9ff1a1fcbff1a1eccff1a1eceff191ecfff171bd0ff0b0f ,
                                        0xcfff0a0ed0ff090dd1ff080cd3ff070ad4ff0709d5ff0609d6970508d7022b35 ,
                                        0xf32a2a34f2df2933f1ff2731f0ff2630efff252eeeff242deeff232bedff1f28 ,
                                        0xecff5056eeffb7b9f1ffcdcef0ffcccdf1ffcccdf1ffcccef1ffcccef2ffccce ,
                                        0xf2ffcccef3ffcccef3ffcccdf3ffcccdf4ffcccdf4ffcdcef4ffc8c9f4ff5a5d ,
                                        0xdeff080dceff0a0ed0ff090dd1ff080cd3ff070ad4ff0709d5df0709d52a2c37 ,
                                        0xf36d2b36f3fc2a34f2ff2933f1ff2731f0ff2630efff252eeeff212aedff4c53 ,
                                        0xf0ffd8d9fbffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9fa1 ,
                                        0xebff0a0ecdff0a0ecfff0a0ed0ff090dd1ff080cd3ff070ad4fc070ad46d2d38 ,
                                        0xf4ad2c37f4ff2b36f3ff2a34f2ff2933f1ff2731f0ff242defff454df0ffced0 ,
                                        0xfbffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xebff0b0fccff0b0fcdff0a0fcfff0a0ed0ff090dd1ff080cd3ff080bd3ad2e3a ,
                                        0xf5d92d39f5ff2c37f4ff2b36f3ff2a34f2ff2631f1ff3f48f1ffc4c7faffffff ,
                                        0xffffffffffffffffffffffffffffffffffffa6a8e4ffaaace6ffffffffffffff ,
                                        0xffffb9bbecff9a9de4fffdfdffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xeaff0b10caff0b10ccff0b0fcdff0a0fcfff0a0ed0ff090dd1ff090cd2d9303b ,
                                        0xf6f32f3af5ff2d39f5ff2c37f4ff2a35f3ff3b45f3ffb9bdfaffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffbabceaff3a3fc3ffa7a9e4ffb7b8 ,
                                        0xeaff3b3fc8ffa8aae7ffffffffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xeaff0c10c9ff0c10caff0b10ccff0b0fcdff0a0fcfff0a0ed1ff0a0ed7f3313d ,
                                        0xf7fd303bf6ff2f3af5ff2d38f5ff2c37f4ff9ea3f9ffffffffffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffb8b9e9ff2f34c0ff2a2f ,
                                        0xc0ffa6a7e5ffffffffffffffffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xe9ff0c11c7ff0c10c9ff0c10caff0b10ccff0b0fceff0c10d7ff0c10dcfd323e ,
                                        0xf8fd313df7ff303bf6ff2e3af5ff2e39f5ff9ea3faffffffffffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffb7b9e8ff2f34beff2a2f ,
                                        0xbeffa6a8e4ffffffffffffffffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xe8ff0c11c6ff0c11c7ff0c10c9ff0c10ccff0e12d7ff0e13deff0d11ddfd3340 ,
                                        0xf9f3323ef8ff313df7ff303bf6ff2d39f5ff3e49f5ffbabefbffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffbabbe8ff383dbeffa6a8e2ffb6b8 ,
                                        0xe9ff3a3fc3ffa8abe5ffffffffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xe8ff0c12c4ff0c12c5ff0d11c9ff0f14d7ff1115dfff0f14dfff0e13def33441 ,
                                        0xfad93340f9ff323ef8ff313df7ff303bf6ff2c38f5ff444ef5ffc6c9fbffffff ,
                                        0xffffffffffffffffffffffffffffffffffffa5a7e0ffaaabe2ffffffffffffff ,
                                        0xffffb8bae9ff9a9ce0fffdfdffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xe7ff0c12c2ff0d12c6ff1117d7ff1318e1ff1217e0ff1115dfff1014dfd93542 ,
                                        0xfbad3541faff3340f9ff323ef8ff313df7ff303bf6ff2c38f5ff4c55f6ffd0d3 ,
                                        0xfcffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa0a2 ,
                                        0xe6ff0d12c2ff1218d6ff151be3ff141ae2ff1318e1ff1217e0ff1116e0ad3644 ,
                                        0xfb6d3643fbfc3441faff3340f9ff323ef8ff313df7ff303bf6ff2c38f5ff555e ,
                                        0xf6ffdadcfdffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa1a3 ,
                                        0xe8ff1319d6ff181ee5ff171de4ff151be3ff141ae2ff1318e1fc1217e16c3745 ,
                                        0xfc2a3744fcdf3643fbff3441faff3340f9ff323ef8ff313df7ff303bf6ff2c38 ,
                                        0xf5ff5b63f6ffbec1fbffd3d5fcffd2d4fcffd2d4fcffd2d4fbffd2d4fbffd1d3 ,
                                        0xfbffd1d3fbffd1d3fbffd1d3fbffd0d2faffd0d2faffd0d2faffcccefaff6469 ,
                                        0xecff181fe6ff1920e6ff181ee5ff171de4ff151be3ff141ae2df1419e12a3947 ,
                                        0xfd023845fc983744fcff3643fbff3441faff3340f9ff323ef8ff313df7ff303b ,
                                        0xf6ff2d39f5ff333ef5ff3842f4ff3741f3ff3640f2ff353ef2ff343df1ff333c ,
                                        0xf0ff313aefff3039eeff2f37edff2e36edff2d35ecff2c33ebff2930eaff1d25 ,
                                        0xe8ff1b23e7ff1a21e6ff1920e6ff181ee5ff171de4ff161ce3971218e1023846 ,
                                        0xfd003946fd373846fdea3744fcff3643fbff3441faff3340f9ff323ef8ff313d ,
                                        0xf7ff303bf6ff2e3af5ff2d38f5ff2b36f4ff2a35f3ff2933f2ff2832f1ff2730 ,
                                        0xf0ff252fefff242eeeff232cedff222bedff2129ecff1f28ebff1e26eaff1e25 ,
                                        0xe9ff1d24e8ff1b23e7ff1a21e6ff1920e6ff181ee5ea171de437171de4003947 ,
                                        0xfd003b49fe023947fd893846fdff3744fcff3643fbff3441faff3340f9ff323e ,
                                        0xf8ff313df7ff303bf6ff2f3af5ff2d39f5ff2c37f4ff2b36f3ff2a34f2ff2933 ,
                                        0xf1ff2731f0ff2630efff252eeeff242deeff232bedff212aecff2028ebff1f27 ,
                                        0xeaff1e26e9ff1d24e8ff1b23e7ff1a21e6ff1920e68a161ce302181fe5003947 ,
                                        0xfd003947fd003947fe193947fdc23846fdff3744fcff3643fbff3441faff3340 ,
                                        0xf9ff323ef8ff313df7ff303bf6ff2f3af5ff2d39f5ff2c37f4ff2b36f3ff2a34 ,
                                        0xf2ff2933f1ff2731f0ff2630efff252eeeff242deeff232bedff212aecff2028 ,
                                        0xebff1f27eaff1e26e9ff1d24e8ff1b23e7c21a21e7191a21e600181ee5003444 ,
                                        0xf9003946fd003947fe003a48fe353947fdd93846fdff3744fcff3643fbff3441 ,
                                        0xfaff3340f9ff323ef8ff313df7ff303bf6ff2f3af5ff2d39f5ff2c37f4ff2b36 ,
                                        0xf3ff2a34f2ff2933f1ff2731f0ff2630efff252eeeff242deeff232bedff212a ,
                                        0xecff2028ebff1f27eaff1e26e9d91d24e8351c23e8001a20e6001b24e3000000 ,
                                        0x00003a48fe003b49ff003947fd003a48fe413947fdd93846fdff3744fcff3643 ,
                                        0xfbff3441faff3340f9ff323ef8ff313df7ff303bf6ff2f3af5ff2d39f5ff2c37 ,
                                        0xf4ff2b36f3ff2a34f2ff2933f1ff2731f0ff2630efff252eeeff242deeff232b ,
                                        0xedff212aecff2028ebd91f27ea411e26e9001e26e9001b23e700000000000000 ,
                                        0x0000000000003a48fe003a48fe003947fd003a48fe353947fdc23846fdff3744 ,
                                        0xfcff3643fbff3441faff3340f9ff323ef8ff313df7ff303bf6ff2f3af5ff2d39 ,
                                        0xf5ff2c37f4ff2b36f3ff2a34f2ff2933f1ff2731f0ff2630efff252eeeff242d ,
                                        0xeeff232bedc2212aec352028eb001f27ea001e26e90000000000000000000000 ,
                                        0x000000000000000000003a48fe003b49ff003947fe003947fe193947fd893846 ,
                                        0xfdea3744fcff3643fbff3441faff3340f9ff323ef8ff313df7ff303bf6ff2f3a ,
                                        0xf5ff2d39f5ff2c37f4ff2b36f3ff2a34f2ff2933f1ff2731f0ff2630efea252e ,
                                        0xee89242ded19222aec002028eb002028eb000000000000000000000000000000 ,
                                        0x00000000000000000000000000003a48fe003946fd003947fd003b49fd023946 ,
                                        0xfd373845fc973744fcdf3643fbfc3541faff3340f9ff323ef8ff313df7ff303b ,
                                        0xf6ff2f3af5ff2d39f5ff2c37f4ff2b36f3fc2a34f2df2832f1982731f0372832 ,
                                        0xf101242dee00242eee00232bed00000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000343cf9003947fd003947fd003846 ,
                                        0xfd003947fd023745fc2a3644fb6d3542fbad3441fad93340f9f3323ef8fd313d ,
                                        0xf7fd303bf6f32e3af5da2d38f4ad2c37f36d2b35f32a2b36f4022731f000262f ,
                                        0xef002630ef001334ff000000000000000000000000000000000000000000f800 ,
                                        0x001ff000000fe0000007c0000003800000010000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000080000001c0000003e0000007f000000ff800001f
                                    End

                                    CursorOnHover =1
                                    LayoutCachedLeft =5368
                                    LayoutCachedTop =1362
                                    LayoutCachedWidth =5704
                                    LayoutCachedHeight =1645
                                    Gradient =0
                                    BackColor =2366701
                                    BackThemeColorIndex =-1
                                    BackTint =100.0
                                    BorderColor =2366701
                                    BorderThemeColorIndex =-1
                                    BorderTint =100.0
                                    HoverColor =2366701
                                    HoverThemeColorIndex =-1
                                    HoverTint =100.0
                                    PressedColor =2366701
                                    PressedThemeColorIndex =-1
                                    PressedShade =100.0
                                    HoverForeColor =16777215
                                    HoverForeThemeColorIndex =-1
                                    HoverForeTint =100.0
                                    PressedForeColor =16777215
                                    PressedForeThemeColorIndex =-1
                                    PressedForeTint =100.0
                                End
                            End
                        End
                    End
                End
                Begin Tab
                    OverlapFlags =85
                    Left =45
                    Top =2175
                    Width =27045
                    Height =12930
                    FontWeight =700
                    TabIndex =2
                    Name ="TabCtl21"

                    LayoutCachedLeft =45
                    LayoutCachedTop =2175
                    LayoutCachedWidth =27090
                    LayoutCachedHeight =15105
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =120
                            Top =2655
                            Width =26895
                            Height =12371
                            Name ="Page22"
                            Caption ="DASHBOARD"
                            LayoutCachedLeft =120
                            LayoutCachedTop =2655
                            LayoutCachedWidth =27015
                            LayoutCachedHeight =15026
                            Begin
                                Begin Rectangle
                                    SpecialEffect =0
                                    BackStyle =1
                                    BorderWidth =3
                                    OverlapFlags =223
                                    Left =456
                                    Top =3231
                                    Width =3625
                                    Height =2214
                                    BackColor =4710653
                                    BorderColor =0
                                    Name ="Box0"
                                    LayoutCachedLeft =456
                                    LayoutCachedTop =3231
                                    LayoutCachedWidth =4081
                                    LayoutCachedHeight =5445
                                    BackThemeColorIndex =-1
                                    BorderThemeColorIndex =-1
                                    BorderShade =100.0
                                End
                                Begin Rectangle
                                    SpecialEffect =0
                                    BackStyle =1
                                    BorderWidth =3
                                    OverlapFlags =223
                                    Left =4311
                                    Top =3231
                                    Width =3625
                                    Height =2214
                                    BackColor =2366701
                                    BorderColor =0
                                    Name ="Box1"
                                    LayoutCachedLeft =4311
                                    LayoutCachedTop =3231
                                    LayoutCachedWidth =7936
                                    LayoutCachedHeight =5445
                                    BackThemeColorIndex =-1
                                    BorderThemeColorIndex =-1
                                    BorderShade =100.0
                                End
                                Begin Rectangle
                                    SpecialEffect =0
                                    BackStyle =1
                                    BorderWidth =3
                                    OverlapFlags =223
                                    Left =8166
                                    Top =3231
                                    Width =3625
                                    Height =2214
                                    BackColor =5167783
                                    BorderColor =0
                                    Name ="Box2"
                                    LayoutCachedLeft =8166
                                    LayoutCachedTop =3231
                                    LayoutCachedWidth =11791
                                    LayoutCachedHeight =5445
                                    BackThemeColorIndex =-1
                                    BorderThemeColorIndex =-1
                                    BorderShade =100.0
                                End
                                Begin Rectangle
                                    SpecialEffect =0
                                    BackStyle =1
                                    BorderWidth =3
                                    OverlapFlags =223
                                    Left =12021
                                    Top =3231
                                    Width =3625
                                    Height =2214
                                    BackColor =16631187
                                    BorderColor =0
                                    Name ="Box3"
                                    LayoutCachedLeft =12021
                                    LayoutCachedTop =3231
                                    LayoutCachedWidth =15646
                                    LayoutCachedHeight =5445
                                    BackThemeColorIndex =-1
                                    BorderThemeColorIndex =-1
                                    BorderShade =100.0
                                End
                                Begin TextBox
                                    Enabled = NotDefault
                                    Locked = NotDefault
                                    OldBorderStyle =0
                                    OverlapFlags =223
                                    TextAlign =2
                                    TextFontFamily =34
                                    BackStyle =0
                                    IMESentenceMode =3
                                    Left =453
                                    Top =3516
                                    Width =3631
                                    Height =1240
                                    FontSize =42
                                    FontWeight =700
                                    ForeColor =2105123
                                    Name ="txtNCRCreated"
                                    ControlSource ="NCR_TOTAL"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =453
                                    LayoutCachedTop =3516
                                    LayoutCachedWidth =4084
                                    LayoutCachedHeight =4756
                                    ThemeFontIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin Label
                                    OverlapFlags =255
                                    TextAlign =2
                                    TextFontFamily =34
                                    Left =453
                                    Top =4586
                                    Width =3630
                                    Height =520
                                    FontSize =14
                                    FontWeight =700
                                    BackColor =0
                                    ForeColor =2105123
                                    Name ="Label6"
                                    Caption ="Created"
                                    FontName ="Segoe UI"
                                    LayoutCachedLeft =453
                                    LayoutCachedTop =4586
                                    LayoutCachedWidth =4083
                                    LayoutCachedHeight =5106
                                    ThemeFontIndex =-1
                                    BackThemeColorIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin TextBox
                                    Enabled = NotDefault
                                    Locked = NotDefault
                                    OldBorderStyle =0
                                    OverlapFlags =223
                                    TextAlign =2
                                    TextFontFamily =34
                                    BackStyle =0
                                    IMESentenceMode =3
                                    Left =4316
                                    Top =3516
                                    Width =3631
                                    Height =1240
                                    FontSize =42
                                    FontWeight =700
                                    TabIndex =1
                                    ForeColor =16777215
                                    Name ="txtNCROpen"
                                    ControlSource ="NCR_OPEN"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =4316
                                    LayoutCachedTop =3516
                                    LayoutCachedWidth =7947
                                    LayoutCachedHeight =4756
                                    ThemeFontIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin Label
                                    OverlapFlags =255
                                    TextAlign =2
                                    TextFontFamily =34
                                    Left =4311
                                    Top =4587
                                    Width =3630
                                    Height =520
                                    FontSize =14
                                    FontWeight =700
                                    BackColor =0
                                    ForeColor =16777215
                                    Name ="Label8"
                                    Caption ="Open"
                                    FontName ="Segoe UI"
                                    LayoutCachedLeft =4311
                                    LayoutCachedTop =4587
                                    LayoutCachedWidth =7941
                                    LayoutCachedHeight =5107
                                    ThemeFontIndex =-1
                                    BackThemeColorIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin TextBox
                                    Enabled = NotDefault
                                    Locked = NotDefault
                                    OldBorderStyle =0
                                    OverlapFlags =223
                                    TextAlign =2
                                    TextFontFamily =34
                                    BackStyle =0
                                    IMESentenceMode =3
                                    Left =8171
                                    Top =3516
                                    Width =3631
                                    Height =1240
                                    FontSize =42
                                    FontWeight =700
                                    TabIndex =2
                                    ForeColor =2105123
                                    Name ="Text9"
                                    ControlSource ="NCR_CLOSED"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =8171
                                    LayoutCachedTop =3516
                                    LayoutCachedWidth =11802
                                    LayoutCachedHeight =4756
                                    ThemeFontIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin Label
                                    OverlapFlags =255
                                    TextAlign =2
                                    TextFontFamily =34
                                    Left =8166
                                    Top =4587
                                    Width =3630
                                    Height =520
                                    FontSize =14
                                    FontWeight =700
                                    BackColor =0
                                    ForeColor =2105123
                                    Name ="Label10"
                                    Caption ="Closed"
                                    FontName ="Segoe UI"
                                    LayoutCachedLeft =8166
                                    LayoutCachedTop =4587
                                    LayoutCachedWidth =11796
                                    LayoutCachedHeight =5107
                                    ThemeFontIndex =-1
                                    BackThemeColorIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin TextBox
                                    Enabled = NotDefault
                                    Locked = NotDefault
                                    OldBorderStyle =0
                                    OverlapFlags =223
                                    TextAlign =2
                                    TextFontFamily =34
                                    BackStyle =0
                                    IMESentenceMode =3
                                    Left =12026
                                    Top =3516
                                    Width =3631
                                    Height =1240
                                    FontSize =42
                                    FontWeight =700
                                    TabIndex =3
                                    ForeColor =2105123
                                    Name ="Text11"
                                    ControlSource ="NCR_AVG"
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =12026
                                    LayoutCachedTop =3516
                                    LayoutCachedWidth =15657
                                    LayoutCachedHeight =4756
                                    ThemeFontIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin Label
                                    OverlapFlags =255
                                    TextAlign =2
                                    TextFontFamily =34
                                    Left =12021
                                    Top =4587
                                    Width =3630
                                    Height =520
                                    FontSize =14
                                    FontWeight =700
                                    BackColor =0
                                    ForeColor =2105123
                                    Name ="Label12"
                                    Caption ="Avg Day(s)"
                                    FontName ="Segoe UI"
                                    LayoutCachedLeft =12021
                                    LayoutCachedTop =4587
                                    LayoutCachedWidth =15651
                                    LayoutCachedHeight =5107
                                    ThemeFontIndex =-1
                                    BackThemeColorIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeTint =100.0
                                End
                                Begin OptionGroup
                                    SpecialEffect =0
                                    OverlapFlags =247
                                    Left =283
                                    Top =2841
                                    Width =15586
                                    Height =2771
                                    TabIndex =4
                                    Name ="Frame56"

                                    LayoutCachedLeft =283
                                    LayoutCachedTop =2841
                                    LayoutCachedWidth =15869
                                    LayoutCachedHeight =5612
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OldBorderStyle =1
                                            OverlapFlags =247
                                            TextFontFamily =34
                                            Left =403
                                            Top =2721
                                            Width =2400
                                            Height =345
                                            Name ="Label57"
                                            Caption ="All Time Counter Board"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =403
                                            LayoutCachedTop =2721
                                            LayoutCachedWidth =2803
                                            LayoutCachedHeight =3066
                                            ThemeFontIndex =-1
                                            BackThemeColorIndex =2
                                            BackTint =75.0
                                            BorderThemeColorIndex =2
                                            BorderTint =75.0
                                            ForeThemeColorIndex =1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin ModernChart
                                    Top =6349
                                    Left =634
                                    Width =7816
                                    Height =4085
                                    Name ="Chart15"
                                    RowSource ="q_mat_sum_ncr_dashboard2"
                                    OverlapFlags =247
                                    ChartAxis ="[YEAR_CREATED]"
                                    ChartLegend ="YEAR_CREATED"
                                    ChartValues ="[TOTAL_NCR_CREATED]"
                                    ChartType =1
                                    HasLegend =0
                                    HasTitle =0
                                    ChartTitle =""
                                    HasAxisTitles =0
                                    TabIndex =5
                                    ChartAxisData = Begin
                                        0x01000000080000000000000003000000
                                    End
                                    ChartLegendData = Begin
                                        0x0d0000005e00000001000000340000000000005b9bd5005b9bd5000000000000 ,
                                        0x00000000000000000000009f6f00000100000034000100000000000000000100 ,
                                        0x000000000000000000000000000000000000000000000000000000000000a5a5 ,
                                        0xa500ed7d31006200000002000000320038000000000000ed7d3100ed7d310000 ,
                                        0x0000000000000000000000000000009f6f000002000000320038000100000000 ,
                                        0x0000000001000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000a5a5a500ed7d31006200000002000000370037000000000000a5a5a5 ,
                                        0x00a5a5a500000000000000000000000000000000009f6f000002000000370037 ,
                                        0x0001000000000000000001000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000a5a5a500ed7d31006600000003000000310030003600 ,
                                        0x0000000000ffc00000ffc00000000000000000000000000000000000009f6f00 ,
                                        0x0003000000310030003600010000000000000000010000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000a5a5a500ed7d310066000000 ,
                                        0x0300000031003400390000000000004470c3004470c300000000000000000006 ,
                                        0x000000000000009f6f0000030000003100340039000100000000000000000100 ,
                                        0x000000000000000000000000000000000000000000000000000000000000a5a5 ,
                                        0xa500ed7d310062000000020000003c003e0000000000005b9bd5005b9bd50000 ,
                                        0x0000000000000000000000000000009f6f0000020000003c003e000100000000 ,
                                        0x0000000001000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000a5a5a500ed7d31006a00000004000000320030003200300000000000 ,
                                        0x01ed7d3100ed7d3100000000000000000000000000000000009f6f0000040000 ,
                                        0x0032003000320030000100000000000000000100000000000000000000000000 ,
                                        0x000000000000000000000000000000000000a5a5a500ed7d31006a0000000400 ,
                                        0x000032003000320031000000000001a5a5a500a5a5a500000000000000000000 ,
                                        0x000000000000009f6f0000040000003200300032003100010000000000000000 ,
                                        0x0100000000000000000000000000000000000000000000000000000000000000 ,
                                        0xa5a5a500ed7d31006a0000000400000032003000320032000000000001ffc000 ,
                                        0x00ffc00000000000000000000000000000000000009f6f000004000000320030 ,
                                        0x0032003200010000000000000000010000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000a5a5a500ed7d31006a000000040000003200 ,
                                        0x30003200330000000000014470c3004470c30000000000000000000000000000 ,
                                        0x0000009f6f000004000000320030003200330001000000000000000001000000 ,
                                        0x00000000000000000000000000000000000000000000000000000000a5a5a500 ,
                                        0xed7d31006a000000040000003200300032003400000000000170ad470070ad47 ,
                                        0x00000000000000000006000000000000009f6f00000400000032003000320034 ,
                                        0x0001000000000000000001000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000a5a5a500ed7d31006200000002000000390038000000 ,
                                        0x000000ffc00000ffc00000000000000000000000000000000000009f6f000002 ,
                                        0x0000003900380001000000000000000001000000000000000000000000000000 ,
                                        0x00000000000000000000000000000000a5a5a500ed7d31006600000003000000 ,
                                        0x31003300360000000000004470c3004470c30000000000000000000600000000 ,
                                        0x0000009f6f000003000000310033003600010000000000000000010000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000a5a5a500ed7d ,
                                        0x3100
                                    End
                                    ChartValueData = Begin
                                        0x01000000080000000000000000000000
                                    End
                                    LegendPosition =3
                                    PrimaryValuesAxisFontColor =0
                                    PrimaryValuesAxisThemeColorIndex =-1
                                    PrimaryValuesAxisFontTint =100.0
                                    SecondaryValuesAxisFontColor =0
                                    SecondaryValuesAxisThemeColorIndex =-1
                                    SecondaryValuesAxisFontTint =100.0
                                    CategoryAxisFontColor =0
                                    CategoryAxisThemeColorIndex =-1
                                    CategoryAxisFontTint =100.0
                                    ChartTitleFontColor =0
                                    ChartTitleThemeColorIndex =-1
                                    ChartTitleFontTint =100.0
                                    ChartTitleFontSize =14
                                    ChartTitleFontName ="Segoe UI"
                                    ThemeFontIndex =-1
                                    LegendTextFontColor =0
                                    LegendTextThemeColorIndex =-1
                                    LegendTextFontTint =100.0
                                    ChartSubtitle =""
                                    ChartSubtitleFontColor =0
                                    ChartSubtitleThemeColorIndex =-1
                                    ChartSubtitleFontTint =100.0
                                End
                                Begin OptionGroup
                                    SpecialEffect =0
                                    OverlapFlags =223
                                    Left =283
                                    Top =5959
                                    Width =8726
                                    Height =4641
                                    TabIndex =6
                                    Name ="Frame16"

                                    LayoutCachedLeft =283
                                    LayoutCachedTop =5959
                                    LayoutCachedWidth =9009
                                    LayoutCachedHeight =10600
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OldBorderStyle =1
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =403
                                            Top =5839
                                            Width =4351
                                            Height =330
                                            Name ="Label17"
                                            Caption ="NCR Created per Item Count (Year on Year)"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =403
                                            LayoutCachedTop =5839
                                            LayoutCachedWidth =4754
                                            LayoutCachedHeight =6169
                                            ThemeFontIndex =-1
                                            BackThemeColorIndex =2
                                            BackTint =75.0
                                            BorderThemeColorIndex =2
                                            BorderTint =75.0
                                            ForeThemeColorIndex =1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin ModernChart
                                    Top =6350
                                    Left =9637
                                    Width =7816
                                    Height =4085
                                    Name ="Chart18"
                                    RowSource ="q_mat_sum_ncr_dashboard3"
                                    OverlapFlags =247
                                    ChartAxis ="[YEAR_CLOSED]"
                                    ChartLegend ="YEAR_CLOSED"
                                    ChartValues ="[TOTAL_NCR_CLOSED]"
                                    ChartType =1
                                    HasLegend =0
                                    HasTitle =0
                                    ChartTitle =""
                                    HasAxisTitles =0
                                    TabIndex =7
                                    ChartAxisData = Begin
                                        0x01000000080000000000000003000000
                                    End
                                    ChartLegendData = Begin
                                        0x0d0000005e00000001000000340000000000005b9bd5005b9bd5000000000000 ,
                                        0x00000000000000000000009f6f00000100000034000100000000000000000100 ,
                                        0x000000000000000000000000000000000000000000000000000000000000a5a5 ,
                                        0xa500ed7d31006200000002000000320038000000000000ed7d3100ed7d310000 ,
                                        0x0000000000000000000000000000009f6f000002000000320038000100000000 ,
                                        0x0000000001000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000a5a5a500ed7d31006200000002000000370037000000000000a5a5a5 ,
                                        0x00a5a5a500000000000000000000000000000000009f6f000002000000370037 ,
                                        0x0001000000000000000001000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000a5a5a500ed7d31006600000003000000310030003600 ,
                                        0x0000000000ffc00000ffc00000000000000000000000000000000000009f6f00 ,
                                        0x0003000000310030003600010000000000000000010000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000a5a5a500ed7d310066000000 ,
                                        0x0300000031003400390000000000004470c3004470c300000000000000000006 ,
                                        0x000000000000009f6f0000030000003100340039000100000000000000000100 ,
                                        0x000000000000000000000000000000000000000000000000000000000000a5a5 ,
                                        0xa500ed7d310062000000020000003c003e0000000000005b9bd5005b9bd50000 ,
                                        0x0000000000000000000000000000009f6f0000020000003c003e000100000000 ,
                                        0x0000000001000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000a5a5a500ed7d31006a00000004000000320030003200300000000000 ,
                                        0x00ed7d3100ed7d3100000000000000000000000000000000009f6f0000040000 ,
                                        0x0032003000320030000100000000000000000100000000000000000000000000 ,
                                        0x000000000000000000000000000000000000a5a5a500ed7d31006a0000000400 ,
                                        0x000032003000320031000000000000a5a5a500a5a5a500000000000000000000 ,
                                        0x000000000000009f6f0000040000003200300032003100010000000000000000 ,
                                        0x0100000000000000000000000000000000000000000000000000000000000000 ,
                                        0xa5a5a500ed7d31006a0000000400000032003000320032000000000001ffc000 ,
                                        0x00ffc00000000000000000000000000000000000009f6f000004000000320030 ,
                                        0x0032003200010000000000000000010000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000a5a5a500ed7d31006a000000040000003200 ,
                                        0x30003200330000000000014470c3004470c30000000000000000000000000000 ,
                                        0x0000009f6f000004000000320030003200330001000000000000000001000000 ,
                                        0x00000000000000000000000000000000000000000000000000000000a5a5a500 ,
                                        0xed7d31006a000000040000003200300032003400000000000170ad470070ad47 ,
                                        0x00000000000000000006000000000000009f6f00000400000032003000320034 ,
                                        0x0001000000000000000001000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000a5a5a500ed7d31006200000002000000390038000000 ,
                                        0x000000ffc00000ffc00000000000000000000000000000000000009f6f000002 ,
                                        0x0000003900380001000000000000000001000000000000000000000000000000 ,
                                        0x00000000000000000000000000000000a5a5a500ed7d31006600000003000000 ,
                                        0x31003300360000000000004470c3004470c30000000000000000000600000000 ,
                                        0x0000009f6f000003000000310033003600010000000000000000010000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000a5a5a500ed7d ,
                                        0x3100
                                    End
                                    ChartValueData = Begin
                                        0x01000000080000000000000000000000
                                    End
                                    LegendPosition =3
                                    PrimaryValuesAxisFontColor =0
                                    PrimaryValuesAxisThemeColorIndex =-1
                                    PrimaryValuesAxisFontTint =100.0
                                    SecondaryValuesAxisFontColor =0
                                    SecondaryValuesAxisThemeColorIndex =-1
                                    SecondaryValuesAxisFontTint =100.0
                                    CategoryAxisFontColor =0
                                    CategoryAxisThemeColorIndex =-1
                                    CategoryAxisFontTint =100.0
                                    ChartTitleFontColor =0
                                    ChartTitleThemeColorIndex =-1
                                    ChartTitleFontTint =100.0
                                    ChartTitleFontSize =14
                                    ChartTitleFontName ="Segoe UI"
                                    ThemeFontIndex =-1
                                    LegendTextFontColor =0
                                    LegendTextThemeColorIndex =-1
                                    LegendTextFontTint =100.0
                                    ChartSubtitle =""
                                    ChartSubtitleFontColor =0
                                    ChartSubtitleThemeColorIndex =-1
                                    ChartSubtitleFontTint =100.0
                                End
                                Begin OptionGroup
                                    SpecialEffect =0
                                    OverlapFlags =223
                                    Left =9240
                                    Top =5959
                                    Width =8726
                                    Height =4641
                                    TabIndex =8
                                    Name ="Frame19"

                                    LayoutCachedLeft =9240
                                    LayoutCachedTop =5959
                                    LayoutCachedWidth =17966
                                    LayoutCachedHeight =10600
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OldBorderStyle =1
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =9360
                                            Top =5839
                                            Width =4260
                                            Height =330
                                            Name ="Label20"
                                            Caption ="NCR Closed per Item Count (Year on Year)"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =9360
                                            LayoutCachedTop =5839
                                            LayoutCachedWidth =13620
                                            LayoutCachedHeight =6169
                                            ThemeFontIndex =-1
                                            BackThemeColorIndex =2
                                            BackTint =75.0
                                            BorderThemeColorIndex =2
                                            BorderTint =75.0
                                            ForeThemeColorIndex =1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin OptionGroup
                                    SpecialEffect =0
                                    OverlapFlags =223
                                    Left =18198
                                    Top =5959
                                    Width =8726
                                    Height =4642
                                    TabIndex =9
                                    Name ="Frame21"

                                    LayoutCachedLeft =18198
                                    LayoutCachedTop =5959
                                    LayoutCachedWidth =26924
                                    LayoutCachedHeight =10601
                                    BorderThemeColorIndex =2
                                    BorderTint =75.0
                                    BorderShade =100.0
                                    Begin
                                        Begin Label
                                            BackStyle =1
                                            OldBorderStyle =1
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =18318
                                            Top =5839
                                            Width =4965
                                            Height =345
                                            Name ="Label22"
                                            Caption ="Top 5 Contractors With Most NCR Item (per Year)"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =18318
                                            LayoutCachedTop =5839
                                            LayoutCachedWidth =23283
                                            LayoutCachedHeight =6184
                                            ThemeFontIndex =-1
                                            BackThemeColorIndex =2
                                            BackTint =75.0
                                            BorderThemeColorIndex =2
                                            BorderTint =75.0
                                            ForeThemeColorIndex =1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                                Begin ModernChart
                                    Top =6994
                                    Left =18765
                                    Width =7816
                                    Height =3440
                                    Name ="Chart23"
                                    RowSource ="q_mat_sum_ncr_contractor"
                                    OverlapFlags =247
                                    ChartAxis ="[ORIGIN_NCR]"
                                    ChartLegend ="ORIGIN_NCR"
                                    ChartValues ="[TOTAL_NCR_ISSUED]"
                                    ChartType =4
                                    HasLegend =0
                                    HasTitle =0
                                    ChartTitle =""
                                    HasAxisTitles =0
                                    TabIndex =10
                                    ChartAxisData = Begin
                                        0x01000000080000000000000003000000
                                    End
                                    ChartLegendData = Begin
                                        0x140000005e00000001000000340000000000005b9bd5005b9bd5000000000000 ,
                                        0x00000000000000000000009f6f00000100000034000100000000000000000100 ,
                                        0x000000000000000000000000000000000000000000000000000000000000a5a5 ,
                                        0xa500ed7d31006200000002000000320038000000000000ed7d3100ed7d310000 ,
                                        0x0000000000000000000000000000009f6f000002000000320038000100000000 ,
                                        0x0000000001000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000a5a5a500ed7d31006200000002000000370037000000000000a5a5a5 ,
                                        0x00a5a5a500000000000000000000000000000000009f6f000002000000370037 ,
                                        0x0001000000000000000001000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000a5a5a500ed7d31006600000003000000310030003600 ,
                                        0x0000000000ffc00000ffc00000000000000000000000000000000000009f6f00 ,
                                        0x0003000000310030003600010000000000000000010000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000a5a5a500ed7d310066000000 ,
                                        0x0300000031003400390000000000004470c3004470c300000000000000000006 ,
                                        0x000000000000009f6f0000030000003100340039000100000000000000000100 ,
                                        0x000000000000000000000000000000000000000000000000000000000000a5a5 ,
                                        0xa500ed7d310062000000020000003c003e0000000000005b9bd5005b9bd50000 ,
                                        0x0000000000000000000000000000009f6f0000020000003c003e000100000000 ,
                                        0x0000000001000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000a5a5a500ed7d31006a00000004000000320030003200300000000000 ,
                                        0x00ed7d3100ed7d3100000000000000000000000000000000009f6f0000040000 ,
                                        0x0032003000320030000100000000000000000100000000000000000000000000 ,
                                        0x000000000000000000000000000000000000a5a5a500ed7d31006a0000000400 ,
                                        0x000032003000320031000000000000a5a5a500a5a5a500000000000000000000 ,
                                        0x000000000000009f6f0000040000003200300032003100010000000000000000 ,
                                        0x0100000000000000000000000000000000000000000000000000000000000000 ,
                                        0xa5a5a500ed7d31006a0000000400000032003000320032000000000001ffc000 ,
                                        0x00ffc00000000000000000000000000000000000009f6f000004000000320030 ,
                                        0x0032003200010000000000000000010000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000a5a5a500ed7d31006a000000040000003200 ,
                                        0x30003200330000000000014470c3004470c30000000000000000000000000000 ,
                                        0x0000009f6f000004000000320030003200330001000000000000000001000000 ,
                                        0x00000000000000000000000000000000000000000000000000000000a5a5a500 ,
                                        0xed7d31006a000000040000003200300032003400000000000170ad470070ad47 ,
                                        0x00000000000000000006000000000000009f6f00000400000032003000320034 ,
                                        0x0001000000000000000001000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000a5a5a500ed7d31006200000002000000390038000000 ,
                                        0x000000ffc00000ffc00000000000000000000000000000000000009f6f000002 ,
                                        0x0000003900380001000000000000000001000000000000000000000000000000 ,
                                        0x00000000000000000000000000000000a5a5a500ed7d31006600000003000000 ,
                                        0x31003300360000000000004470c3004470c30000000000000000000600000000 ,
                                        0x0000009f6f000003000000310033003600010000000000000000010000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000a5a5a500ed7d ,
                                        0x31006e0000000500000049004d00450043004f00000000000070ad470070ad47 ,
                                        0x00000000000000000000000000000000009f6f00000500000049004d00450043 ,
                                        0x004f000100000000000000000100000000000000000000000000000000000000 ,
                                        0x000000000000000000000000a5a5a500ed7d31006e0000000500000054004f00 ,
                                        0x540041004c0000000000005b9bd5005b9bd50000000000000000000000000000 ,
                                        0x0000009f6f00000500000054004f00540041004c000100000000000000000100 ,
                                        0x000000000000000000000000000000000000000000000000000000000000a5a5 ,
                                        0xa500ed7d3100ae000000150000004100540041004d004f005200410020005400 ,
                                        0x450048004e0049004b0020004d0041004b004d00550052000000000001ffc000 ,
                                        0x00ffc00000000000000000000000000000000000009f6f000015000000410054 ,
                                        0x0041004d004f005200410020005400450048004e0049004b0020004d0041004b ,
                                        0x004d005500520001000000000000000001000000000000000000000000000000 ,
                                        0x00000000000000000000000002000000a5a5a500ed7d3100b600000017000000 ,
                                        0x43004100480059004100440049002000470045004d0049004c0041004e004700 ,
                                        0x2000530055004b0053004500530000000000014470c3004470c3000000000000 ,
                                        0x00000000000000000000009f6f00001700000043004100480059004100440049 ,
                                        0x002000470045004d0049004c0041004e0047002000530055004b005300450053 ,
                                        0x0001000000000000000001000000000000000000000000000000000000000000 ,
                                        0x00000000000002000000a5a5a500ed7d31009e0000001100000049004d004500 ,
                                        0x43004f00200049004e0054004500520053004100520041004e00410000000000 ,
                                        0x0170ad470070ad4700000000000000000000000000000000009f6f0000110000 ,
                                        0x0049004d00450043004f00200049004e0054004500520053004100520041004e ,
                                        0x0041000100000000000000000100000000000000000000000000000000000000 ,
                                        0x000000000000000002000000a5a5a500ed7d31009e0000001100000049004e00 ,
                                        0x530041004e0020004d004100530020004d0041004e0044004900520049000000 ,
                                        0x0000015b9bd5005b9bd500000000000000000000000000000000009f6f000011 ,
                                        0x00000049004e00530041004e0020004d004100530020004d0041004e00440049 ,
                                        0x0052004900010000000000000000010000000000000000000000000000000000 ,
                                        0x0000000000000000000002000000a5a5a500ed7d3100020100002a0000005700 ,
                                        0x4900460047004100530049004e0044004f002000440049004e0041004d004900 ,
                                        0x4b004100200049004e0053005400520055004d0045004e005400200045004e00 ,
                                        0x470049004e0045004500520049004e0047000000000001ed7d3100ed7d310000 ,
                                        0x0000000000000000000000000000009f6f00002a000000570049004600470041 ,
                                        0x00530049004e0044004f002000440049004e0041004d0049004b004100200049 ,
                                        0x004e0053005400520055004d0045004e005400200045004e00470049004e0045 ,
                                        0x004500520049004e004700010000000000000000010000000000000000000000 ,
                                        0x0000000000000000000000000000000002000000a5a5a500ed7d3100
                                    End
                                    ChartValueData = Begin
                                        0x01000000080000000000000000000000
                                    End
                                    LegendPosition =3
                                    PrimaryValuesAxisFontColor =0
                                    PrimaryValuesAxisThemeColorIndex =-1
                                    PrimaryValuesAxisFontTint =100.0
                                    SecondaryValuesAxisFontColor =0
                                    SecondaryValuesAxisThemeColorIndex =-1
                                    SecondaryValuesAxisFontTint =100.0
                                    CategoryAxisFontColor =0
                                    CategoryAxisThemeColorIndex =-1
                                    CategoryAxisFontTint =100.0
                                    ChartTitleFontColor =0
                                    ChartTitleThemeColorIndex =-1
                                    ChartTitleFontTint =100.0
                                    ChartTitleFontSize =14
                                    ChartTitleFontName ="Segoe UI"
                                    ThemeFontIndex =-1
                                    LegendTextFontColor =0
                                    LegendTextThemeColorIndex =-1
                                    LegendTextFontTint =100.0
                                    ChartSubtitle =""
                                    ChartSubtitleFontColor =0
                                    ChartSubtitleThemeColorIndex =-1
                                    ChartSubtitleFontTint =100.0
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    AutoExpand = NotDefault
                                    OverlapFlags =215
                                    TextAlign =2
                                    TextFontFamily =34
                                    IMESentenceMode =3
                                    Left =19332
                                    Top =6462
                                    Height =345
                                    TabIndex =11
                                    ForeColor =0
                                    Name ="Text24"
                                    RowSourceType ="Table/Query"
                                    RowSource ="q_mat_sum_ncr_dashboard_year"
                                    ValidationRule ="<=Year(Now())"
                                    DefaultValue ="=Year(Now())"
                                    FontName ="Segoe UI"
                                    AllowValueListEdits =0

                                    LayoutCachedLeft =19332
                                    LayoutCachedTop =6462
                                    LayoutCachedWidth =21033
                                    LayoutCachedHeight =6807
                                    ThemeFontIndex =-1
                                    ForeThemeColorIndex =-1
                                    ForeShade =100.0
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =18538
                                            Top =6462
                                            Width =735
                                            Height =300
                                            FontWeight =700
                                            ForeColor =0
                                            Name ="Label25"
                                            Caption ="Year"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =18538
                                            LayoutCachedTop =6462
                                            LayoutCachedWidth =19273
                                            LayoutCachedHeight =6762
                                            ThemeFontIndex =-1
                                            ForeThemeColorIndex =-1
                                            ForeTint =100.0
                                        End
                                    End
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =120
                            Top =2655
                            Width =26895
                            Height =12375
                            Name ="Page13"
                            Caption ="OPEN"
                            LayoutCachedLeft =120
                            LayoutCachedTop =2655
                            LayoutCachedWidth =27015
                            LayoutCachedHeight =15030
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =120
                            Top =2655
                            Width =26895
                            Height =12375
                            Name ="Page14"
                            Caption ="CLOSED"
                            LayoutCachedLeft =120
                            LayoutCachedTop =2655
                            LayoutCachedWidth =27015
                            LayoutCachedHeight =15030
                        End
                    End
                End
            End
        End
    End
End
