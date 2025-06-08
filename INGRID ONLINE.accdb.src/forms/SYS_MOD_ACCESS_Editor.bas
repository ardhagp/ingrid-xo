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
    Left =4180
    Top =2690
    Right =11300
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
                                    Left =170
                                    Top =566
                                    Width =966
                                    Height =1243
                                    Name ="btnSave"
                                    Caption ="&Save"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="floppy-disk.ico"
                                    UnicodeAccessKey =83
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000003d96 ,
                                        0xfa003e97f9003e97f9003e97f9003493fb28a4c6e26cf6ebd096f6ebd0aff7eb ,
                                        0xd0c4f7ebcfd5f7ebcfe3f7ebcfeef8ebcff6f8ebcffcf8ebcffef9eccffff9ec ,
                                        0xcffff8ebcffef8ebcffcf8ebcff6f7ebcfeef7ebcfe3f7ebcfd5f7ebd0c4f6eb ,
                                        0xd0aff6ebd097a4c5e26c3493fb283e97f9003e97f9003e97f9003e98fa003e97 ,
                                        0xf9003e97f9003e97f90b3e97f9733b95fadb95bfe5fcfbedcffff9eccffff9ec ,
                                        0xcffff9eccffff9eccffff9eccffff9eccffff9eccffff9eccffff9eccffff9ec ,
                                        0xcffff9eccffff9eccffff9eccffff9eccffff9eccffff9eccffff9eccffff9ec ,
                                        0xcffffbedcfff95bfe5fc3b95fadb3e97f9733e97f90b3e97f9003e97f9003e97 ,
                                        0xf9003e97f90b3e97f9953e97f9fd3b96faff92bde6fffbedcffff9eccffff9ec ,
                                        0xcffff9eccffff9eccffff5e8ccfff5e8cbfff5e8cbfff5e8cbfff5e8cbfff5e8 ,
                                        0xcbfff5e8cbfff5e8cbfff5e8cbfff5e8ccfff9eccffff9eccffff9eccffff9ec ,
                                        0xcffffbedcfff92bde6ff3b96faff3e97f9fd3e97f9953e97f90b3e97f9003e97 ,
                                        0xf9003e97f9733e97f9fd3e97f9ff3b96faff90bce6fffbedcffff9eccffff9ec ,
                                        0xcffff9eccfffb7a493ff7e675fff7e675fff7f675fff7f675fff7f675fff7f67 ,
                                        0x5fff7f675fff7f675fff7e675fff7e675fffb7a492fff9eccffff9eccffff9ec ,
                                        0xcffffbedcfff90bce7ff3b96faff3e97f9ff3e97f9fd3e97f9733e97f9003e97 ,
                                        0xf9283e97f9db3e97f9ff3e97f9ff3b96faff8dbbe7fffaedcffff9eccffff9ec ,
                                        0xcffff9eccfffa18c7eff604643ff614744ff614744ff614744ff614744ff6147 ,
                                        0x44ff614744ff614744ff614744ff604643ffa08c7efff9eccffff9eccffff9ec ,
                                        0xcffffaedcfff8dbbe7ff3b96faff3e97f9ff3e97f9ff3e97f9db3e97f9283e97 ,
                                        0xf96b3e97f9fc3e97f9ff3e97f9ff3b96faff8ab9e8fffaeccffff9eccffff9ec ,
                                        0xcffff9eccffff2e5c9ffe5d7bdffe5d6bcffe5d6bcffe5d6bcffe5d6bcffe5d6 ,
                                        0xbcffe5d6bcffe5d6bcffe5d6bcffe5d7bdfff2e5c9fff9eccffff9eccffff9ec ,
                                        0xcffffaeccfff89b9e8ff3b96faff3e97f9ff3e97f9ff3e97f9fc3e97f96b3e97 ,
                                        0xf9933e97f9ff3e97f9ff3e97f9ff3b96faff86b8e9fff9eccffff9eccffff9ec ,
                                        0xcffff9eccffff9eccffff5e8cbfff5e7cbfff5e7cbfff5e7cbfff5e7cbfff5e7 ,
                                        0xcbfff5e7cbfff5e7cbfff5e7cbfff5e8cbfff9eccffff9eccffff9eccffff9ec ,
                                        0xcffff9eccfff85b7e9ff3b96faff3e97f9ff3e97f9ff3e97f9ff3e97f9943e97 ,
                                        0xf9ac4099f9ff439dfaff46a1fbff45a2fcff87beecfff8eccffff9eccffff9ec ,
                                        0xcffff9eccfffb3a08fff79615aff79625bff7a625bff7a625bff7a625bff7a62 ,
                                        0x5bff7a625bff7a625bff79625bff79615affb3a08ffff9eccffff9eccffff9ec ,
                                        0xcffff8ebcfff7fb5eaff3b96faff3e97f9ff3e97f9ff3e97f9ff3e97f9ac47a2 ,
                                        0xfbc34aa5fcff4ca8fcff4ca8fcff49a7fdff83beeefff6ebd0fff9eccffff9ec ,
                                        0xcffff9eccfffa49081ff634a47ff654b48ff654c48ff654c48ff654c48ff654c ,
                                        0x48ff654c48ff654c48ff654b48ff634a47ffa38f81fff9eccffff9eccffff9ec ,
                                        0xcffff6ebd0ff79b2ecff3b96faff3e97f9ff3e97f9ff3e97f9ff3e97f9c24ca8 ,
                                        0xfcd54ca8fcff4ca8fcff4ca8fcff49a7fdff7cbbf0fff7ebd0fffcedcffffbed ,
                                        0xcffffbedcffff5e7caffeadabfffe9dabfffe9dabfffe9dabfffe9dabfffe9da ,
                                        0xbfffe9dabfffe9dabfffe9dabfffe9dabffff5e7cafffbedcffffbedcffffced ,
                                        0xcffff6ebd0ff71aeeeff3b96faff3e97f9ff3e97f9ff3e97f9ff3e97f9d34ca8 ,
                                        0xfce34ca8fcff4ca8fcff4ca8fcff4aa7fdff69b2f3ffc6d2d7ffd2d8d4ffd8db ,
                                        0xd3ffdcddd3ffe0dfd2ffe4e2d3ffe6e3d3ffe8e4d2ffe9e4d2ffe9e4d2ffe9e4 ,
                                        0xd2ffe9e4d2ffe8e4d2ffe6e3d3ffe4e2d3ffe0dfd2ffdcddd3ffd8dbd3ffd3d8 ,
                                        0xd4ffc5d2d6ff5ea5f1ff3c96f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9e14ca8 ,
                                        0xfcee4ca8fcff4ca8fcff4ca8fcff4ca8fcff4aa4faff3288ebff2f83e8ff3486 ,
                                        0xe7ff3788e7ff3b8ae7ff3e8be6ff418de6ff438ee6ff448ee5ff458fe5ff458f ,
                                        0xe5ff448ee5ff438ee6ff418de6ff3e8be6ff3b8ae7ff3788e7ff3486e7ff2f83 ,
                                        0xe8ff3186eaff3e95f7ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ec4ca8 ,
                                        0xfcf64ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff3691f2ff1e7aeaff1e7a ,
                                        0xeaff1d7aeaff1d7aeaff1d7aeaff1d7aeaff1d7aeaff1d7aeaff1d7aeaff1d7a ,
                                        0xeaff1d7aeaff1d7aeaff1d7aeaff1d7aeaff1d7aeaff1d7aeaff1e7aeaff1e7a ,
                                        0xeaff2f89f1ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9f44ca8 ,
                                        0xfcfc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a5faff318cf0ff207c ,
                                        0xeaff1e7aeaff1e7aeaff1e7aeaff1e7beaff1f7beaff1f7beaff1f7beaff1f7b ,
                                        0xeaff1f7beaff1f7beaff1e7beaff1e7aeaff1e7aeaff1e7aeaff207ceaff2c86 ,
                                        0xefff3d95f8ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fa4ca8 ,
                                        0xfcfe4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4aa6fbff3c97 ,
                                        0xf5ff318cf0ff2c87eeff2985edff2782edff2681ecff2580ecff2580ecff2580 ,
                                        0xecff2580ecff2681ecff2782edff2985edff2c87eeff2d87efff348df3ff3d96 ,
                                        0xf8ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fd4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4da9 ,
                                        0xfcff4ca8fcff4ba7fbff4aa5fbff49a4faff47a3faff47a2f9ff47a2f9ff47a2 ,
                                        0xf9ff47a2f9ff48a3faff49a4faff4aa5fbff4ba7fbff459ffaff3e97f9ff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4aa6fcff409afaff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff4ca8 ,
                                        0xfcfe4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff45a0fbff3e97 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fd4ca8 ,
                                        0xfcfc4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a5fbff3f99 ,
                                        0xf9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9fa4ca8 ,
                                        0xfcf64ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca7fcff429c ,
                                        0xfaff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9f44ca8 ,
                                        0xfcee4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8 ,
                                        0xfcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff459f ,
                                        0xfaff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ec4ca8 ,
                                        0xfce34ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca9 ,
                                        0xfdff4ca9feff4caaffff4caaffff4caaffff4caaffff4caaffff4caaffff4caa ,
                                        0xffff4ca9feff4ca9fdff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff47a2 ,
                                        0xfbff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9e14ca8 ,
                                        0xfcd54ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fdff4c9e ,
                                        0xebff4d93d9ff4d8dcdff4d88c5ff4d85bfff4d83bdff4d84bfff4d88c4ff4d8d ,
                                        0xcdff4d93d7ff4c9de9ff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff49a4 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9c54ca8 ,
                                        0xfcc44ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca7faff4d7cb0ff4e49 ,
                                        0x58ff4f3d43ff4f393dff4f3739ff4f3638ff4f3637ff4f3638ff4f3739ff4f39 ,
                                        0x3dff4f3c42ff4f4755ff4d77a8ff4ca6f8ff4ca8fcff4ca8fcff4ca8fcff49a5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9f83e97f96b4ca8 ,
                                        0xfcaf4ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca9feff4d88c4ff4f3b40ff4f32 ,
                                        0x31ff4f3333ff4f3333ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x33ff4f3333ff4f3231ff4f393cff4d82bbff4ca9feff4ca8fcff4ca8fcff4aa5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9963e97f90a4ca8 ,
                                        0xfc964ca8fcff4ca8fcff4ca8fcff4ca8fcff4ca9fdff4e668aff4f3230ff4f34 ,
                                        0x34ff553b3bff563c3cff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3230ff4e5f7eff4ca8fbff4ca8fcff4ca8fcff49a5 ,
                                        0xfbff3f98f9ff3e97f9ff3e97f9ff3e97f9ff3e97f9ad3e97f9143e97f9004ca8 ,
                                        0xfc6e4ca8fcfc4ca8fcff4ca8fcff4ca8fcff4ca7faff4e5c79ff4f3230ff5237 ,
                                        0x37ffb0a4a4ffbcb2b2ff563c3cff4f3333ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3231ff4e566eff4ca5f7ff4ca8fcff4ca8fcff48a4 ,
                                        0xfbff3e98f9ff3e97f9ff3e97f9ff3e97f9b63e97f91c3e97f9003e97f9004ba7 ,
                                        0xfc2a4ca8fcdd4ca8fcff4ca8fcff4ca8fcff4ca6f8ff4e5770ff4f3230ff573d ,
                                        0x3dffd9d3d3ffe7e3e3ff5e4646ff4e3333ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3231ff4e5166ff4ca4f5ff4ca8fcff4ca8fcff47a1 ,
                                        0xfbff3e97f9ff3e97f9ff3e97f9b43e97f91e3e97f9003e97f9003e97f90053b1 ,
                                        0xfe004ca8fc754ca8fcfd4ca8fcff4ca8fcff4ca5f6ff4e546bff4f3230ff573d ,
                                        0x3dffd9d3d3ffe7e3e3ff5e4646ff4e3333ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3231ff4e4e61ff4ca2f2ff4ca8fdff4ca8fcff449e ,
                                        0xfaff3e97f9fe3e97f9a53e97f9193e97f9003e97f9003e97fa00000000004ba7 ,
                                        0xfc004ba7fc0c4ca8fc974ca8fcfd4ca8fcff4ca4f5ff4e5166ff4f3231ff5237 ,
                                        0x37ffb0a4a4ffbcb2b2ff563c3cff4f3333ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3331ff4e4c5dff4ca1f0ff4ca9fdff4ba7fcff419b ,
                                        0xfaf63e97f9893e97f90f3e97f9003e97f9003e97f90000000000000000004ca7 ,
                                        0xfc004ba7fc004ba7fc0c4ca8fc754ca8fddd4ca3f3fc4e4f63ff4f3231ff4f34 ,
                                        0x34ff553a3aff563c3cff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3332ff4e4a5aff4ca0eeff4ca9fdff49a5fbdd4099 ,
                                        0xf95f3c94f9043e97f9003e97f9003e97f90000000000000000000000000048a5 ,
                                        0xfd004ba7fc004ba7fc0053b1fe004ba8fe2a4ca1f06e4e4f62974f3637b04f36 ,
                                        0x38c54e3537d64e3537e44f3637ef4f3536f74f3537fd4f3536ff4f3435ff4f34 ,
                                        0x34ff4f3536ff4f3537fd4f3434f74e4a5aef4c9fede04ca8fda74ba6fc3647a2 ,
                                        0xfb003e97f9003e97f90000baff00000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000000000000100000003000000070000000f
                                    End

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
                                    Left =1474
                                    Top =566
                                    Width =966
                                    Height =1243
                                    TabIndex =1
                                    Name ="btnCancel"
                                    Caption ="&Undo"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="loop-arrow.ico"
                                    UnicodeAccessKey =85
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000006c4aef006d4cef006d51f2006d4df0006e4ef0006e50 ,
                                        0xf0006e51f0006f54f0007055f1007157f1007159f100715bf200725df200735f ,
                                        0xf2007360f3007362f3007464f3007466f3007568f400766af400766cf400776e ,
                                        0xf400776ff4007c5de6007770f5007872f6000000000000000000000000000000 ,
                                        0x00006c49ef006c49ef006c48ef006d4aef006d4bef006e4ef0006c45f0006c4a ,
                                        0xf0016c4bed016b4dee01704fef016f51ef017053ed016f54f3017257f4017158 ,
                                        0xf3017259f101705df301715df301715ff2017562f1017463f6017566f6017464 ,
                                        0xf3007872f6007872f5007874f5007976f5007975f5007977f600000000006c48 ,
                                        0xef006c49ef006c49ef006f4def006d4aef226d4bef616d4df08f6e4ef0a06e50 ,
                                        0xf0a16f52f0a16f54f1a17056f1a17058f1a1715af1a1715bf2a1725df2a1735f ,
                                        0xf2a17361f3a17463f3a17465f3a17567f3a17568f4a1766af4a1766cf4a1776e ,
                                        0xf4a07770f5907872f5627874f5237a7ef9007a78f6007a79f6007a7bf6006c49 ,
                                        0xef006c49ef006c48ef0e6c49ef776d4aefdc6d4cf0fe6e4ef0ff6e50f0ff6f52 ,
                                        0xf0ff6f54f1ff7055f1ff7057f1ff7159f1ff715bf2ff725df2ff725ff2ff7361 ,
                                        0xf2ff7362f3ff7464f3ff7466f3ff7568f4ff766af4ff766cf4ff776ef4ff776f ,
                                        0xf5ff7871f5ff7873f5fe7975f5dd7977f6787a79f60f7b7bf6007b7df6006c49 ,
                                        0xef006c48ef126c49efa16d4aeffe6d4cf0ff6e4ef0ff6e50f0ff6f52f0ff6f54 ,
                                        0xf1fe7055f1fe7057f1fe7159f1fe715bf2fe725df2fe725ff2fe7361f2fe7362 ,
                                        0xf3fe7464f3fe7466f3fe7568f4fe766af4fe766cf4fe776ef4fe776ff5fe7871 ,
                                        0xf5ff7873f5ff7975f5ff7977f6ff7a79f6fe7a7bf6a37b7cf6137b7df6006b48 ,
                                        0xef046c49ef8b6d4aefff6d4cf0ff6e4ef0fd6e50f0c56f51f07c6f53f1607055 ,
                                        0xf15e7057f15e7158f15e715af25e725cf25e725ef25e7360f25e7362f35e7464 ,
                                        0xf35e7465f35e7567f35e7569f45e766bf45e766df45e776ff45e7771f55e7872 ,
                                        0xf5607975f57c7977f6c47a79f6fd7a7bf6ff7b7cf6ff7b7ef78c7d81f7046c4a ,
                                        0xef476d4aefed6d4cf0ff6e4ef0fa6e4ff08a6e50f0136e50f0006f53f0007055 ,
                                        0xf1007056f1007158f100715af200725cf200725ef2007360f2007362f3007463 ,
                                        0xf3007465f3007567f3007569f400766bf400766df400776ff4007770f5007872 ,
                                        0xf5007874f5007a78f6127a7bf6887b7cf6fa7b7ef7ff7c80f7ee7c82f7486d4b ,
                                        0xefa76d4cf0ff6e4ef0ff6e4ff0aa6e50f00a6e50f0006d4df0006e51f0007055 ,
                                        0xf2007057f2007158f200715bf200715df200715ef2007361f2007462f3007564 ,
                                        0xf3007566f3007567f300756af300766cf300766df3007670f4007771f5007976 ,
                                        0xf6007c7df6007a7af6007b7df6097b7ff7a87c80f7ff7c82f7ff7d84f7a96d4c ,
                                        0xf0e36e4ef0ff6e50f0f76e51f04a6e50f0006e50f0006d51f000000000007665 ,
                                        0xf2007463f3007463f3007464f3007465f3007464f3007466f300000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x00007b7bf6007b7cf6007c80f7007c81f7497c82f7f77d84f7ff7d86f8e46e4e ,
                                        0xf0f96e50f0ff6f52f0e66f53f0266f52f0006e50f00000000000000000007463 ,
                                        0xf3007463f3007467f3007464f30d7364f3067568f4007568f400766af4000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000007b7ef7007d83f7007d83f7257d84f7e57d86f8ff7e87f8fb6e50 ,
                                        0xf0f66f52f0ff6f54f1ea7055f12b7055f1007159f10000000000000000007463 ,
                                        0xf3007464f3007464f34a7465f3c57566f39e7568f41b756af400766cf400776e ,
                                        0xf400000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000007e87f8007d85f8007d85f82a7d86f8e97e88f8ff7e89f8f76f52 ,
                                        0xf0d76f54f1ff7055f1fc7057f15f7057f100715cf300725df200000000007464 ,
                                        0xf3007361f3027465f3a67466f3ff7568f4ff766af4b1766cf41b776ef400776f ,
                                        0xf5007872f5000000000000000000000000000000000000000000000000000000 ,
                                        0x00007e87f8007e89f8007e87f8007e87f85d7e88f8fc7e8af8ff7f8bf8d86f54 ,
                                        0xf18e7055f1ff7057f1ff7159f1c8715bf21e725ef2007361f3007465f3007566 ,
                                        0xf3007669f3007566f3657568f4f6766af4ff766cf4ff776ef4b17770f51b7771 ,
                                        0xf5007873f5007a75f5007a7ef7007c7ff7007c7ff7007c81f6007c82f6007c84 ,
                                        0xf7007d86f8007e87f8007e87f81d7e88f8c77e89f8ff7f8bf8ff7f8df9907056 ,
                                        0xf12d7057f1dc7159f1ff715bf2ff725df2b9735ff2387361f30779fffc007976 ,
                                        0xf800756ef6007466f405766af476766cf4f5776ef4ff776ff5ff7871f5b17873 ,
                                        0xf51b7875f5007977f6007b7ff7007b7ff7007c80f7007e87f9008892fe00abff ,
                                        0xff007d85f8077e87f8387e88f8b87e89f8ff7f8bf8ff7f8df9dd808ef92f725b ,
                                        0xf2007159f163715bf2f5725df2ff725ff2ff7361f2eb7463f3b87465f39e7567 ,
                                        0xf39c7568f49d766af49c766cf4a3776ef4e9776ff5ff7871f5ff7873f5ff7975 ,
                                        0xf5b17977f6187977f6007b7ff7007b7ef7087c7ff7657c81f79c7c83f79c7d84 ,
                                        0xf89e7e86f8b77e88f8ea7e89f8ff7f8bf8ff7f8df9f6808ef9647f8cf900715a ,
                                        0xf200715bf304725df26f725ff2ec7361f2ff7362f3ff7464f3ff7466f3ff7568 ,
                                        0xf4ff766af4ff766cf4ff776ef4ff776ff5ff7871f5ff7873f5ff7975f5ff7977 ,
                                        0xf6ff7a78f6707978f6007c80f7007c80f73d7c80f7f47c82f7ff7d84f7ff7d86 ,
                                        0xf8ff7e88f8ff7e8af8ff7f8bf8ff7f8df9ed808ef9718090f904808ff900715b ,
                                        0xf200725cf2007262f1017360f2427362f3ad7464f3e97466f3fb7568f4ff766a ,
                                        0xf4ff766cf4ff776ef4ff776ff5fe7871f5fe7873f5ff7975f5ff7977f6ff7a79 ,
                                        0xf6f97a7af65c7a7af6007c81f7007c81f7307c82f7e17d84f7ff7d86f8ff7e88 ,
                                        0xf8ff7e8af8fb7f8bf8e97f8df9ae808ef9438192f901808ff900808ff900725d ,
                                        0xf200725ff200725ef2007360f2007464f3077465f32c7567f3527569f462766b ,
                                        0xf463766df462776ff4607771f5777873f5e47975f5ff7977f6ff7a79f6fa7a7a ,
                                        0xf6847a7bf6087a7af6007c83f7007c82f7027d84f7377d85f8627e87f8637e89 ,
                                        0xf8627f8bf8527f8cf92d7f8ef907808ef900808ff900808ff9008090fa000000 ,
                                        0x0000000000007362f3007465f3007464f3007465f3007567f3007569f400766b ,
                                        0xf400776ef4007874f5107874f5a07975f5fd7977f6ff7a79f6fa7a7af6847a7b ,
                                        0xf6077a7af6007a7af6007c82f7007c81f7007d83f7007d85f8007e87f8007e89 ,
                                        0xf8007f8af8007f8cf9007f8df9007f8cf900808ef90000000000000000000000 ,
                                        0x00000000000000000000000000000e0c1e007569f4007568f400766af4007874 ,
                                        0xf5007b79f4007874f5867975f5ff7977f6ff7a79f6fa7a7af6847a7bf6077a7a ,
                                        0xf6007a7af6007a7bf600000000007d85f8007d85f8007d86f8007e87f8007e89 ,
                                        0xf8007f8af8007f8af80015192b00000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000007874 ,
                                        0xf500776ff3017975f59d7977f6ff7a79f6fa7a7af6847a7bf6077a7af6007a7a ,
                                        0xf6007a7bf6000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000008482 ,
                                        0xf6007977f6007977f6297a78f68d7a7af6677a7bf6087a7af6007a7af6007c7b ,
                                        0xf600000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000007975 ,
                                        0xf5007977f6007976f6007976f6007a79f6007a7af6007a7af6007979f7000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x00007a78f6007977f7007a79f6007a7af6007a7af6007b7cf500000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000ffff ,
                                        0xffffffffffffffffffffffffffffe00000078000000100000000000000000000 ,
                                        0x00000000000000000000000000000101ff800300ffc003007fc001003f800000 ,
                                        0x00000000000000000000000000000000000000000000c0000003f000100fff00 ,
                                        0x3fffff007fffff00ffffff81ffffffffffffffffffffffffffffffffffff
                                    End

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
                                    Left =170
                                    Top =566
                                    Width =966
                                    Height =1243
                                    Name ="btnDelete"
                                    Caption ="&Delete"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="delete.ico"
                                    UnicodeAccessKey =68
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x0000000000000000000000000000000000004742dd004742dd004742dd004742 ,
                                        0xdd004742dd2e4742dd814742ddb84742dddb4742ddf24742ddfb4742ddff4742 ,
                                        0xddff4742ddfb4742ddf24742ddde4742ddbd4742dd8b4742dd3a4742dd024742 ,
                                        0xdd004742dd004742dd0000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000004742dd004742dd004742dd054742 ,
                                        0xdd694742dddd4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742dde74742dd7f4742 ,
                                        0xdd0d4742dd004742dd004640dd00000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000004742dd004742dd004742dd024742dd754742 ,
                                        0xddf84742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfe4742 ,
                                        0xdd904742dd084742dd004742dd00000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000004742dd004742dd004742dd424742dded4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddf84742dd5d4742dd004944de00000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000004742dd004742dd044742dda64742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddc24742dd0f4742dd004642dd000000000000000000000000000000 ,
                                        0x000000000000000000004d4be0004742dd004742dd1e4742dddd4742ddff4742 ,
                                        0xddff4742ddff4641ddff4b46deff4e49deff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4e49deff4b46deff4641ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddef4742dd344742dd004742dd000000000000000000000000000000 ,
                                        0x000000000000000000004e4ce2004743dd004743dd3f4743ddf44843ddff4743 ,
                                        0xddff4641ddff6a66e3ffc3c1f4ffd3d2f7ff9390ebff4944ddff4742ddff4742 ,
                                        0xddff4843ddff8d8aeaffd2d0f7ffc5c4f4ff6f6be4ff4641ddff4742ddff4742 ,
                                        0xddff4742ddfd4742dd5a4742dd004742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e400504ee300504fe366504fe3ff504fe3ff504f ,
                                        0xe3ff4e4de2ffb3b3f2ffffffffffffffffffe2e1faff5753e0ff4641ddff4641 ,
                                        0xddff534fdfffdcdbf8ffffffffffffffffffb9b7f2ff4843ddff4742ddff4742 ,
                                        0xddff4742ddff4742dd824742dd004742dd000000000000000000000000000000 ,
                                        0x00000000000000000000504fe3005555e6005353e58b5353e5ff5353e5ff5353 ,
                                        0xe5ff5454e5ffc3c3f6ffffffffffffffffffe8e8fbff605de4ff4742deff4641 ,
                                        0xddff5753e0ffe2e1faffffffffffffffffffc7c5f5ff4a45deff4742ddff4742 ,
                                        0xddff4742ddff4742dda44742dd024742dd000000000000000000000000000000 ,
                                        0x000000000000000000005251e400504fe3025353e5a75353e5ff5353e5ff5353 ,
                                        0xe5ff5555e5ffc7c7f7ffffffffffffffffffeaeafcff6767e8ff4f4ee3ff4a47 ,
                                        0xe0ff5854e0ffe2e1faffffffffffffffffffcbc9f5ff4b47deff4742ddff4742 ,
                                        0xddff4742ddff4742ddbe4742dd094742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e4005252e4095353e5bd5353e5ff5353e5ff5353 ,
                                        0xe5ff5656e5ffcacaf7ffffffffffffffffffeaeafcff6868e8ff5252e5ff5252 ,
                                        0xe5ff605ee5ffe4e3faffffffffffffffffffceccf6ff4d48deff4742ddff4742 ,
                                        0xddff4742ddff4742ddd04742dd124742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e5105353e5cd5353e5ff5353e5ff5353 ,
                                        0xe5ff5757e6ffccccf7ffffffffffffffffffeaeafcff6868e8ff5252e5ff5252 ,
                                        0xe5ff6363e8ffe5e5fbffffffffffffffffffd0cff6ff4e49deff4742ddff4742 ,
                                        0xddff4742ddff4742dddc4742dd1c4742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e5185353e5d85353e5ff5353e5ff5353 ,
                                        0xe5ff5757e6ffcdcdf7ffffffffffffffffffeaeafcff6767e8ff5252e5ff5252 ,
                                        0xe5ff6363e7ffe4e4fbffffffffffffffffffd1d0f7ff4e49deff4742ddff4742 ,
                                        0xddff4742ddff4742dde64742dd254742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e5205353e5e15353e5ff5353e5ff5353 ,
                                        0xe5ff5757e6ffcdcdf7ffffffffffffffffffe8e8fcff6666e8ff5252e5ff5252 ,
                                        0xe5ff6262e7ffe3e3fbffffffffffffffffffd1d0f6ff4e49deff4742ddff4742 ,
                                        0xddff4742ddff4742ddec4742dd2e4742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e5265353e5e65353e5ff5353e5ff5353 ,
                                        0xe5ff5656e6ffccccf7ffffffffffffffffffe7e7fbff6565e8ff5252e5ff5252 ,
                                        0xe5ff6161e7ffe2e2fbffffffffffffffffffd1d0f7ff4e49deff4742ddff4742 ,
                                        0xddff4742ddff4742ddef4742dd324742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e4265353e5e65353e5ff5353e5ff5353 ,
                                        0xe5ff5555e5ffc9c9f7ffffffffffffffffffe5e5fbff6262e7ff5252e5ff5252 ,
                                        0xe5ff5e5ee7ffdfdffaffffffffffffffffffd0d0f8ff514ee1ff4742ddff4742 ,
                                        0xddff4742ddff4742ddee4742dd314742dd000000000000000000000000000000 ,
                                        0x000000000000000000005352e5005352e5225353e5e25353e5ff5353e5ff5353 ,
                                        0xe5ff5252e5ff9898efffeeeefcfff3f3fdffb4b4f4ff5757e6ff5353e5ff5353 ,
                                        0xe5ff5555e5ffaeaef3fff2f2fdfff0f0fdff9f9ff0ff5150e4ff4844deff4742 ,
                                        0xddff4742ddff4742ddec4742dd2d4742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e51d5353e5de5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5656e5ff6d6de9ff7171eaff5a5ae6ff5252e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5959e6ff7171e9ff6e6ee9ff5757e6ff5353e5ff4c4ae1ff4742 ,
                                        0xddff4742ddff4742dde84742dd284742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e5175353e5d75353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5151e5ff5151e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5151e5ff5151e5ff5353e5ff5353e5ff504fe3ff4843 ,
                                        0xdeff4742ddff4742dde24742dd214742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e5005252e5125353e5cf5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252e5ff4a46 ,
                                        0xdfff4742ddff4742ddda4742dd1a4742dd000000000000000000000000000000 ,
                                        0x000000000000000000005252e4005252e40c5353e5c55353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff4d4a ,
                                        0xe1ff4742ddff4742ddd24742dd144742dd000000000000000000000000000000 ,
                                        0x0000000000004f3434005251e3005252e6085353e5ba5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff4f4d ,
                                        0xe2ff4742ddff4742ddc94742de0e4742dc004f343400100b0b00000000000000 ,
                                        0x00004f3434004e3333004f3747005253f4035353e5af5353e6ff5353e7ff5353 ,
                                        0xe7ff5353e7ff5353e8ff5353e8ff5354e8ff5354e8ff5354e8ff5354e8ff5354 ,
                                        0xe8ff5354e8ff5354e8ff5354e8ff5353e8ff5353e8ff5353e7ff5354e7ff504f ,
                                        0xe5ff4843deff4742ddbe4742e0094d3757004f3434004f343400000000000000 ,
                                        0x00004f3434004f3434004f3434384f343599503d67e051417eff514284ff5143 ,
                                        0x89ff51448eff514592ff514595ff514698ff51469bff51469cff51469cff5146 ,
                                        0x9cff51469cff51469bff514698ff514596ff514593ff51448eff51438aff5041 ,
                                        0x84ff4c3a7bff4d3868e54f34369d4f34343e4f3434004f343400000000000000 ,
                                        0x00004f3434004f3434064f3434b04f3434ff4f3432ff4f3331ff4f3431ff4f34 ,
                                        0x31ff4f3432ff4f3432ff4f3432ff4f3433ff4f3433ff4f3433ff4f3433ff4f34 ,
                                        0x33ff4f3433ff4f3433ff4f3433ff4f3432ff4f3432ff4f3432ff4f3431ff4f34 ,
                                        0x31ff4f3431ff4f3432ff4f3434ff4f3434ba4f3434094f343400000000000000 ,
                                        0x00004f3434004f3434054f3434b34f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434be4f3434094f343400000000000000 ,
                                        0x00004f3434004f3434004f3434864f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434924f3434004f343400000000000000 ,
                                        0x00004f3434004f3434004f3434264f3434c64f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434cd4f34342d4f3434004f343400000000000000 ,
                                        0x00004e3333004f3434004f3434004f34341e4f3434694f3434924f3434ad4f34 ,
                                        0x34c24f3434d14f3434dc4f3434f44f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434fd4f3434e34f3434d14f3434c24f34 ,
                                        0x34ae4f3434944f34346c4f3434224f343400543737004f343400000000000000 ,
                                        0x0000000000004f3434004f3434004f3434004f3434004f3434004f3434044f34 ,
                                        0x340b4f3434134f34341a4f3434a24f3434ff4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434ee4f3434434f3434114f34340b4f34 ,
                                        0x34044f3434004f3434004f3434004f3434004f34340000000000000000000000 ,
                                        0x000000000000000000004e3535004f3434004e3737004f3434004f3434004f34 ,
                                        0x34004f3434004f3434004f3434634f3434fd4f3434ff4f3434ff4f3434ff4f34 ,
                                        0x34ff4f3434ff4f3434ff4f3434ff4f3434c64f3434124f3434004f3434004f34 ,
                                        0x34004f343400553b3b004f3434004f3434000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x00004f3434004f3434004f3434114f3434914f3434d84f3434ee4f3434fb4f34 ,
                                        0x34fd4f3434f54f3434e34f3434bf4f3434474f3434004f343400000000000000 ,
                                        0x000000000000000000000000000000000000000000000000000000000000f800 ,
                                        0x001ff800000ff000000ff000000ff0000007e0000007e0000007e0000007e000 ,
                                        0x0007e0000007e0000007e0000007e0000007e0000007e0000007e0000007e000 ,
                                        0x0007e0000007e0000007e0000007e0000007c000000180000001800000018000 ,
                                        0x000180000001800000018000000180000001c0000003e0000007ff8001ff
                                    End

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
                                    Left =5614
                                    Top =580
                                    Width =966
                                    Height =1243
                                    Name ="btnClose"
                                    Caption ="&Close"
                                    OnClick ="[Event Procedure]"
                                    FontName ="Segoe UI"
                                    Picture ="close.ico"
                                    UnicodeAccessKey =67
                                    ImageData = Begin
                                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                                        0x0000010020000000000000100000c30e0000c30e000000000000000000000000 ,
                                        0x0000000000000000000000000000000000004543dc004742dd004742dd004742 ,
                                        0xdd004742dd024742dd294742dd6c4742ddad4742ddd94742ddf34742ddfd4742 ,
                                        0xddfd4742ddf34742ddd94742ddad4742dd6d4742dd2a4742dd024742dd004742 ,
                                        0xdd004742dd004e48e20000000000000000000000000000000000000000000000 ,
                                        0x00000000000000000000000000004742dd004742dd004742dd004742dd014742 ,
                                        0xdd374742dd974742dddf4742ddfb4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddfc4742dddf4742dd984742dd374742 ,
                                        0xdd014742dd004742dd004742dd00000000000000000000000000000000000000 ,
                                        0x000000000000000000004742dd004742dd004742dd004742dd194742dd894742 ,
                                        0xddea4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddea4742 ,
                                        0xdd894742dd194742dd004742dd004742dd000000000000000000000000000000 ,
                                        0x0000000000004742dd004742dd004742dd004742dd354742ddc24742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddc24742dd354742dd004742dd004742dd0000000000000000000000 ,
                                        0x00004742dd004742dd004742dd004742dd404742ddd94742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddd94742dd414742dd004742dd004742dd00000000003546 ,
                                        0xdd004742dd004742dd004742dd354742ddd94742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddd94742dd354742dd004742dd004f44de005252 ,
                                        0xe4004944de004540dc194742ddc24743ddff4843deff4944deff4945deff4944 ,
                                        0xdeff4844deff4743ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddc24742dd194742dd004742dd005151 ,
                                        0xe4005a5de9024d4be18a4e4ce2ff504ee3ff5150e4ff5251e4ff5251e4ff5251 ,
                                        0xe4ff5150e4ff4e4de3ff4d4be2ff4b48e0ff4944deff4742ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4641ddff4540ddff4741ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742dd894742dd014742dd005353 ,
                                        0xe5005352e5395353e5eb5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252 ,
                                        0xe5ff5a5ae6ff7070e9ff6161e7ff5252e5ff5151e4ff4e4ce2ff4a46dfff4742 ,
                                        0xddff4742ddff4742ddff4641ddff5651e0ff6561e3ff4e49deff4641ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddea4742dd374742dd00504f ,
                                        0xe3035353e59a5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5959 ,
                                        0xe6ffb7b7f4fff2f2fdffd6d6f9ff7575eaff5151e5ff5353e5ff5252e4ff4e4b ,
                                        0xe1ff4844deff4540ddff6b67e4ffd3d2f7fff1f1fcffb2b0f1ff4e49deff4741 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742dd974742dd025252 ,
                                        0xe52b5353e5e05353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5151e5ff7070 ,
                                        0xe9fff2f2fdffffffffffffffffffdfdffaff7575eaff5151e5ff5353e5ff5353 ,
                                        0xe5ff4e4de3ff6d6ae5ffdcdbf9fffffffffffffffffff1f1fcff6561e3ff4540 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742dddf4742dd2a5353 ,
                                        0xe56f5353e5fc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252e5ff6161 ,
                                        0xe7ffd6d6f9ffffffffffffffffffffffffffdfdffaff7575eaff5151e5ff5151 ,
                                        0xe5ff7575eaffdedefaffffffffffffffffffffffffffd3d2f7ff5651e0ff4641 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfc4742dd6c5353 ,
                                        0xe5af5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252 ,
                                        0xe5ff7575eaffdedefaffffffffffffffffffffffffffdfdffaff7474eaff7474 ,
                                        0xeaffdedefaffffffffffffffffffffffffffdcdbf9ff6b67e4ff4641ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddad5353 ,
                                        0xe5dc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5151e5ff7575eaffdedefaffffffffffffffffffffffffffe3e3fbffe3e3 ,
                                        0xfbffffffffffffffffffffffffffdedefaff6d6ae5ff4540ddff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddd95353 ,
                                        0xe5f55353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5151e5ff7575eaffdedefaffffffffffffffffffffffffffffff ,
                                        0xffffffffffffffffffffdfdffaff7575eaff4e4de3ff4844deff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddf35353 ,
                                        0xe5fe5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5151e5ff7474eaffe3e3fbffffffffffffffffffffff ,
                                        0xffffffffffffe3e3fbff7474eaff5151e5ff5353e5ff4d4be1ff4742ddff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfd5353 ,
                                        0xe5fe5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5151e5ff7474eaffe3e3fbffffffffffffffffffffff ,
                                        0xffffffffffffe3e3fbff7474eaff5151e5ff5353e5ff5251e4ff4945deff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfd5353 ,
                                        0xe5f55353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5151e5ff7575eaffdedefaffffffffffffffffffffffffffffff ,
                                        0xffffffffffffffffffffdfdffaff7575eaff5151e5ff5353e5ff4d4be1ff4742 ,
                                        0xddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddf35353 ,
                                        0xe5dc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5151e5ff7575eaffdedefaffffffffffffffffffffffffffe3e3fbffe3e3 ,
                                        0xfbffffffffffffffffffffffffffdfdffaff7575eaff5151e5ff5150e4ff4843 ,
                                        0xdeff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddd95353 ,
                                        0xe5b05353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252 ,
                                        0xe5ff7575eaffdedefaffffffffffffffffffffffffffdfdffaff7474eaff7474 ,
                                        0xeaffdedefaffffffffffffffffffffffffffdfdffaff7575eaff5151e5ff4a47 ,
                                        0xdfff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddad5353 ,
                                        0xe56f5353e5fc5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252e5ff6161 ,
                                        0xe7ffd6d6f9ffffffffffffffffffffffffffdfdffaff7575eaff5151e5ff5151 ,
                                        0xe5ff7575eaffdedefaffffffffffffffffffffffffffd6d6f9ff6161e7ff4c49 ,
                                        0xe1ff4742ddff4742ddff4742ddff4742ddff4742ddff4742ddfc4742dd6c5252 ,
                                        0xe52c5353e5e15353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5151e5ff7070 ,
                                        0xe9fff2f2fdffffffffffffffffffdfdffaff7575eaff5151e5ff5353e5ff5353 ,
                                        0xe5ff5151e5ff7575eaffdfdffafffffffffffffffffff2f2fdff7070e9ff4d4b ,
                                        0xe2ff4742ddff4742ddff4742ddff4742ddff4742ddff4742dddf4742dd2a5150 ,
                                        0xe4035353e59a5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5959 ,
                                        0xe6ffb7b7f4fff2f2fdffd6d6f9ff7575eaff5151e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5151e5ff7575eaffd6d6f9fff2f2fdffb7b7f4ff5a5ae6ff504f ,
                                        0xe3ff4843ddff4742ddff4742ddff4742ddff4742ddff4742dd974742dd025353 ,
                                        0xe5005352e5395353e5ec5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252 ,
                                        0xe5ff5959e6ff7070e9ff6161e7ff5252e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5252e5ff6161e7ff7070e9ff5959e6ff5253e5ff5150 ,
                                        0xe4ff4843deff4742ddff4742ddff4742ddff4742ddea4742dd374742dd005251 ,
                                        0xe400504fe3025353e58c5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5151e5ff5252e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5252e5ff5151e5ff5353e5ff5353e5ff5150 ,
                                        0xe4ff4843deff4742ddff4742ddff4742ddff4742dd8a4742dd024742dd005252 ,
                                        0xe5005352e5005252e51a5353e5c45353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5150 ,
                                        0xe3ff4843deff4742ddff4742ddff4742ddc24742dd194742dd004742dd003d3e ,
                                        0xde005454e5005353e5005352e5375353e5db5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff504f ,
                                        0xe3ff4743ddff4742ddff4742ddd94742dd354742dd004742dd004b3de5000000 ,
                                        0x00005151e4005150e4005354e5005352e5435353e5db5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff4e4c ,
                                        0xe2ff4742ddff4742ddd94742dd414742dd004742dd004742dd00000000000000 ,
                                        0x0000000000005251e4005251e4005354e5005352e5375353e5c45353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff4c49 ,
                                        0xe0ff4742ddc24742dd354742dd004742dd004742dd0000000000000000000000 ,
                                        0x000000000000000000005251e4005150e4005353e5005252e51a5353e58c5353 ,
                                        0xe5eb5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5353e5ff5252e5eb4b48 ,
                                        0xe08a4640dc194742dd004742dd004742dd000000000000000000000000000000 ,
                                        0x00000000000000000000000000005151e4005454e5005352e500504fe3025352 ,
                                        0xe5395353e59a5353e5e15353e5fc5353e5ff5353e5ff5353e5ff5353e5ff5353 ,
                                        0xe5ff5353e5ff5353e5ff5353e5ff5353e5fc5353e5e15353e59a5252e5395455 ,
                                        0xe6024844de004742dd004742dd00000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000004232dd005252e4005251e4005353 ,
                                        0xe500514fe4035352e52b5353e56f5353e5af5353e5dc5353e5f55353e5fe5353 ,
                                        0xe5fe5353e5f55353e5dc5353e5b05353e56f5352e52c5150e3035353e5004f4e ,
                                        0xe200514fe300432bb8000000000000000000000000000000000000000000f800 ,
                                        0x001ff000000fe0000007c0000003800000010000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                                        0x0000000000000000000080000001c0000003e0000007f000000ff800001f
                                    End

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
                                    Left =1927
                                    Top =5272
                                    Width =2786
                                    Height =317
                                    TabIndex =10
                                    Name ="Text54"
                                    ControlSource ="EMPLOYEE_SCOPEOFWORK"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT t_employee.EMPLOYEE_SCOPEOFWORK FROM t_employee GROUP BY t_employee.EMPLO"
                                        "YEE_SCOPEOFWORK ORDER BY t_employee.EMPLOYEE_SCOPEOFWORK; "
                                    FontName ="Segoe UI"

                                    LayoutCachedLeft =1927
                                    LayoutCachedTop =5272
                                    LayoutCachedWidth =4713
                                    LayoutCachedHeight =5589
                                    ThemeFontIndex =-1
                                    ForeThemeColorIndex =0
                                    ForeTint =75.0
                                    ForeShade =100.0
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextFontFamily =34
                                            Left =226
                                            Top =5272
                                            Width =1640
                                            Height =345
                                            ForeColor =0
                                            Name ="Label55"
                                            Caption ="Scope of Work"
                                            FontName ="Segoe UI"
                                            LayoutCachedLeft =226
                                            LayoutCachedTop =5272
                                            LayoutCachedWidth =1866
                                            LayoutCachedHeight =5617
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
