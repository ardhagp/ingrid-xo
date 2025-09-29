Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    ViewsAllowed =1
    RecordLocks =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12755
    DatasheetFontHeight =11
    ItemSuffix =89
    Left =5130
    Top =4200
    Right =27435
    Bottom =11820
    RecordSource ="SELECT mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#7/12/2024#,'1','0')"
        " AS TX_CODE_D, IIf(mm.TX_DATEEXECUTED=#7/12/2024#,'1','0') AS TX_CODE_R, mm.TX_A"
        "TT_LINK, ' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680) & ' ' & mm.TX_DESTINATION & (ch"
        "r(13) + chr(10)) & ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' & mm.TX_PO & (chr(13"
        ") + chr(10)) & ' • MANIFEST: ' & mm.TX_MANIFEST AS DESCRIPTION FROM t_q_material"
        "_movement AS mm WHERE ((mm.TX_DATEDELIVERY = #7/12/2024# OR mm.TX_DATEEXECUTED ="
        " #7/12/2024#) ) GROUP BY mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#7"
        "/12/2024#,'1','0'), IIf(mm.TX_DATEEXECUTED=#7/12/2024#,'1','0'), mm.TX_ORIGIN, m"
        "m.TX_DESTINATION, mm.TX_ATT_LINK, ' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680) & ' ' "
        "& mm.TX_DESTINATION & (chr(13) + chr(10)) & ' • PLANT: ' & mm.TX_PLANT & ' • COF"
        "F: ' & mm.TX_PO & (chr(13) + chr(10)) & ' • MANIFEST: ' & mm.TX_MANIFEST; "
    Caption ="MAT_MOVEMENT_DETAILS"
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =397
            Name ="FormHeader"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    Left =3114
                    Width =9592
                    Height =315
                    FontWeight =700
                    ForeColor =0
                    Name ="L_DESCRIPTION"
                    Caption ="DESCRIPTION"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =3114
                    LayoutCachedWidth =12706
                    LayoutCachedHeight =315
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    Left =283
                    Width =1372
                    Height =345
                    FontWeight =700
                    ForeColor =0
                    Name ="Label71"
                    Caption ="ROW.ID"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =283
                    LayoutCachedWidth =1655
                    LayoutCachedHeight =345
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    Left =1870
                    Width =975
                    Height =345
                    FontWeight =700
                    ForeColor =0
                    Name ="Label72"
                    Caption ="STAT"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =1870
                    LayoutCachedWidth =2845
                    LayoutCachedHeight =345
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =975
            Name ="Detail"
            AutoHeight =255
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    Locked = NotDefault
                    FontUnderline = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =11792
                    Top =56
                    Width =0
                    Height =0
                    TabIndex =10
                    ForeColor =12349952
                    Name ="TX_ATT_LINK"
                    ControlSource ="TX_ATT_LINK"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =11792
                    LayoutCachedTop =56
                    LayoutCachedWidth =11792
                    LayoutCachedHeight =56
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin TextBox
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =93
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1870
                    Width =975
                    Height =915
                    FontWeight =700
                    TabIndex =4
                    Name ="TX_DIRECTION"
                    ControlSource ="TX_DIRECTION"
                    FontName ="Segoe UI"
                    ConditionalFormat = Begin
                        0x01000000e4000000030000000100000000000000000000001400000001010000 ,
                        0xffffff0022b14c000100000000000000150000002a00000001010000ffffff00 ,
                        0xed1c240001000000000000002b0000004100000001010000ffffff0000000000 ,
                        0x5b00540058005f0044004900520045004300540049004f004e005d003d002200 ,
                        0x49004e002200000000005b00540058005f004400490052004500430054004900 ,
                        0x4f004e005d003d0022004f00550054002200000000005b00540058005f004400 ,
                        0x4900520045004300540049004f004e005d003d00220054004d0054004d002200 ,
                        0x00000000
                    End

                    LayoutCachedLeft =1870
                    LayoutCachedWidth =2845
                    LayoutCachedHeight =915
                    ThemeFontIndex =-1
                    ConditionalFormat14 = Begin
                        0x010004000000010000000000000001010000ffffff0022b14c00130000005b00 ,
                        0x540058005f0044004900520045004300540049004f004e005d003d0022004900 ,
                        0x4e00220000000000000000000000000000000000000000000001000000000000 ,
                        0x0001010000ffffff00ed1c2400140000005b00540058005f0044004900520045 ,
                        0x004300540049004f004e005d003d0022004f0055005400220000000000000000 ,
                        0x0000000000000000000000000000010000000000000001010000ffffff000000 ,
                        0x0000150000005b00540058005f0044004900520045004300540049004f004e00 ,
                        0x5d003d00220054004d0054004d00220000000000000000000000000000000000 ,
                        0x000000000001000000000000000101000000000000ff990000140000005b0054 ,
                        0x0058005f0044004900520045004300540049004f004e005d003d002200420049 ,
                        0x004e002200000000000000000000000000000000000000000000
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    PictureType =2
                    Left =10995
                    Top =60
                    Width =576
                    Height =793
                    Name ="btnReadOnly"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="View this record (Read Only)"
                    Picture ="btnReadOnly"

                    CursorOnHover =1
                    LayoutCachedLeft =10995
                    LayoutCachedTop =60
                    LayoutCachedWidth =11571
                    LayoutCachedHeight =853
                    Overlaps =1
                End
                Begin TextBox
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =30
                    Top =30
                    Width =195
                    Height =330
                    TabIndex =2
                    ForeColor =0
                    Name ="txt_dot"
                    ControlSource ="=\"•\""
                    FontName ="Segoe UI"
                    GroupTable =3
                    TextFormat =1

                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =225
                    LayoutCachedHeight =360
                    LayoutGroup =1
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin TextBox
                    Locked = NotDefault
                    CanGrow = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =93
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3113
                    Top =5
                    Width =7776
                    Height =915
                    ColumnWidth =5295
                    TabIndex =3
                    Name ="DESCRIPTION"
                    ControlSource ="DESCRIPTION"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =3113
                    LayoutCachedTop =5
                    LayoutCachedWidth =10889
                    LayoutCachedHeight =920
                    ThemeFontIndex =-1
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =255
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2380
                    Top =453
                    Width =390
                    Height =391
                    FontSize =8
                    TabIndex =5
                    Name ="C_CODE_R"
                    ControlSource ="=\"R\""
                    FontName ="Segoe UI"
                    ConditionalFormat = Begin
                        0x0100000086000000010000000100000000000000000000001200000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b00430048004b005f00540058005f0043004f00440045005f0052005d003d00 ,
                        0x310000000000
                    End

                    LayoutCachedLeft =2380
                    LayoutCachedTop =453
                    LayoutCachedWidth =2770
                    LayoutCachedHeight =844
                    ThemeFontIndex =-1
                    ConditionalFormat14 = Begin
                        0x01000100000001000000000000000100000000000000fff20000110000005b00 ,
                        0x430048004b005f00540058005f0043004f00440045005f0052005d003d003100 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =255
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =1927
                    Top =453
                    Width =391
                    Height =391
                    FontSize =8
                    TabIndex =6
                    Name ="C_CODE_D"
                    ControlSource ="=\"D\""
                    FontName ="Segoe UI"
                    ConditionalFormat = Begin
                        0x0100000086000000010000000100000000000000000000001200000001000000 ,
                        0x00000000fff20000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x5b00430048004b005f00540058005f0043004f00440045005f0044005d003d00 ,
                        0x310000000000
                    End

                    LayoutCachedLeft =1927
                    LayoutCachedTop =453
                    LayoutCachedWidth =2318
                    LayoutCachedHeight =844
                    ThemeFontIndex =-1
                    ConditionalFormat14 = Begin
                        0x01000100000001000000000000000100000000000000fff20000110000005b00 ,
                        0x430048004b005f00540058005f0043004f00440045005f0044005d003d003100 ,
                        0x000000000000000000000000000000000000000000
                    End
                End
                Begin TextBox
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    IMESentenceMode =3
                    Left =283
                    Width =1371
                    Height =300
                    TabIndex =7
                    ForeColor =0
                    Name ="TX_ROWID"
                    ControlSource ="TX_ROWID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =283
                    LayoutCachedWidth =1654
                    LayoutCachedHeight =300
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin CheckBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =247
                    Left =2550
                    Top =630
                    TabIndex =8
                    Name ="CHK_TX_CODE_R"
                    ControlSource ="TX_CODE_R"

                    LayoutCachedLeft =2550
                    LayoutCachedTop =630
                    LayoutCachedWidth =2810
                    LayoutCachedHeight =870
                End
                Begin CheckBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =247
                    Left =2085
                    Top =630
                    TabIndex =9
                    Name ="CHK_TX_CODE_D"
                    ControlSource ="TX_CODE_D"

                    LayoutCachedLeft =2085
                    LayoutCachedTop =630
                    LayoutCachedWidth =2345
                    LayoutCachedHeight =870
                End
                Begin CommandButton
                    OverlapFlags =87
                    PictureType =2
                    Left =11792
                    Top =56
                    Width =577
                    Height =793
                    TabIndex =1
                    Name ="btnOpenURL"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Open attachment URL in Web Browser"
                    Picture ="btnOpenURL"

                    CursorOnHover =1
                    LayoutCachedLeft =11792
                    LayoutCachedTop =56
                    LayoutCachedWidth =12369
                    LayoutCachedHeight =849
                    Overlaps =1
                End
                Begin Line
                    LineSlant = NotDefault
                    OverlapFlags =87
                    Left =60
                    Top =915
                    Width =12589
                    BorderColor =2366701
                    Name ="Line88"
                    LayoutCachedLeft =60
                    LayoutCachedTop =915
                    LayoutCachedWidth =12649
                    LayoutCachedHeight =915
                    BorderThemeColorIndex =-1
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
' See "MAT_MOVEMENT_BYDATE_Sub_DETAIL.cls"
