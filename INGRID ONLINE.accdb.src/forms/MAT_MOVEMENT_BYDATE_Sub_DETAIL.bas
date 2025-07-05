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
    Left =4810
    Top =3920
    Right =27110
    Bottom =11540
    RecordSource ="SELECT mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#6/9/2025#,'1','0') "
        "AS TX_CODE_D, IIf(mm.TX_DATEEXECUTED=#6/9/2025#,'1','0') AS TX_CODE_R, mm.TX_ATT"
        "_LINK, ' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680) & ' ' & mm.TX_DESTINATION & (chr("
        "13) + chr(10)) & ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' & mm.TX_PO & (chr(13) "
        "+ chr(10)) & ' • MANIFEST: ' & mm.TX_MANIFEST AS DESCRIPTION FROM t_q_material_m"
        "ovement AS mm WHERE ((mm.TX_DATEDELIVERY = #6/9/2025# OR mm.TX_DATEEXECUTED = #6"
        "/9/2025#) ) GROUP BY mm.TX_ROWID, mm.TX_DIRECTION, IIf(mm.TX_DATEDELIVERY=#6/9/2"
        "025#,'1','0'), IIf(mm.TX_DATEEXECUTED=#6/9/2025#,'1','0'), mm.TX_ORIGIN, mm.TX_D"
        "ESTINATION, mm.TX_ATT_LINK, ' • ' & mm.TX_ORIGIN & ' ' & ChrW(8680) & ' ' & mm.T"
        "X_DESTINATION & (chr(13) + chr(10)) & ' • PLANT: ' & mm.TX_PLANT & ' • COFF: ' &"
        " mm.TX_PO & (chr(13) + chr(10)) & ' • MANIFEST: ' & mm.TX_MANIFEST; "
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
                        0x00000000a7da4e000100000000000000150000002a00000001010000ffffff00 ,
                        0xed1c240001000000000000002b0000004100000001000000ffffff0000000000 ,
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
                        0x01000400000001000000000000000101000000000000a7da4e00130000005b00 ,
                        0x540058005f0044004900520045004300540049004f004e005d003d0022004900 ,
                        0x4e00220000000000000000000000000000000000000000000001000000000000 ,
                        0x0001010000ffffff00ed1c2400140000005b00540058005f0044004900520045 ,
                        0x004300540049004f004e005d003d0022004f0055005400220000000000000000 ,
                        0x0000000000000000000000000000010000000000000001000000ffffff000000 ,
                        0x0000150000005b00540058005f0044004900520045004300540049004f004e00 ,
                        0x5d003d00220054004d0054004d00220000000000000000000000000000000000 ,
                        0x000000000001000000000000000101000000000000fff20000140000005b0054 ,
                        0x0058005f0044004900520045004300540049004f004e005d003d002200420049 ,
                        0x004e002200000000000000000000000000000000000000000000
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10995
                    Top =60
                    Width =576
                    Height =793
                    Name ="btn_OpenThisRecord"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="View this record (Read Only)"
                    Picture ="book.ico"
                    ImageData = Begin
                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                        0x0000010020000000000000100000ec000000ec00000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000900030a95010206f10001 ,
                        0x05f7010206f7010206f7010206f7010206f7010206f7010206f7010206f70102 ,
                        0x06f7010206f7010206f7010206f7010206f7010206f7010206f7010206f70102 ,
                        0x06f7010206f7000104f900030a98000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000201020bcd061345f60e2897ff0f2b ,
                        0xa4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2b ,
                        0xa4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2ba4ff0f2b ,
                        0xa4ff0f2ba4ff0a1e71ff01040fae000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000005c040c2cf20d2690ff090c1df80707 ,
                        0x0afd08080bfd08080bfd08080bfd08080bfd08080bfd08080bfd08080bfd0808 ,
                        0x0bfd08080bfd08080bfd08080bfd08080bfd08080bfd08080bfd08080bfd0808 ,
                        0x0bfd050508fe010102fc00020b8e000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000030aa0091b66ff081446f7817365ffeed3 ,
                        0xb8ffeed3b8ffeed3b8ffeed3b8ffeed3b8ffeed3b8ffeed3b8ffeed3b8ffeed3 ,
                        0xb8ffeed3b8ffeed3b8ffeed3b8fff9ddc0ffffe2c5fff4d8bcffeed3b8ffeed3 ,
                        0xb8ffae9a86ff27241ec900000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000001040fae0a1e71ff08123af3171513ff221f ,
                        0x1cff221f1cff221f1cff221f1cff221f1cff221f1cff221f1cff221f1cff221f ,
                        0x1cff221f1cff221f1cff221f1cff685f55fff9e3cdff2c2824ff221f1cff221f ,
                        0x1cff191714ff1d1b18c000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010410ad091961fe07154df86d6661fadbcd ,
                        0xbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcd ,
                        0xbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcdbcffdbcd ,
                        0xbcffa09589ff131110c500000008000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae030820f40e2898ff071036f30709 ,
                        0x14f6070913f7070913f7070913f7070913f7070913f7070913f7070913f70709 ,
                        0x13f7070913f7070913f7070913f7070913f7070913f7070913f7070913f70709 ,
                        0x13f7070913f7020309f7000309a2000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae03071bfb040b2cf40b217dff0d25 ,
                        0x8eff0d258eff0d258eff0d258eff0d258eff0d258eff0d258eff0d258eff0d25 ,
                        0x8eff0d258eff0d258eff0d258eff0d258eff0d258eff0d258eff0d258eff0d25 ,
                        0x8eff0d258eff091a62ff01040fae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff0d2486fb040b2bf40101 ,
                        0x05fd030717f8030717f8030717f8030717f8030717f8030717f8030717f80307 ,
                        0x17f8030717f8030717f8030717f8030717f8030717f8030717f8030717f80307 ,
                        0x17f8030717f802050ffa030612ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff1231beff0d16 ,
                        0x41ef365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff1539dbff3257 ,
                        0xf9cb365afcff365afcff365afcff365afcff3356f0ff2842b9ff2842b9ff2842 ,
                        0xb9ff2842b9ff2842b9ff2842b9ff2842b9ff2d4bd2ff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff1333c4ff1320 ,
                        0x5ae9365afcff365afcff365afcff365afcff2d4ad1ff121e55ff121e54ff121e ,
                        0x54ff121e54ff121e54ff121e54ff121e54ff1c2f84ff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff3355edff3254ebff3254 ,
                        0xebff3254ebff3254ebff3254ebff3254ebff3558f6ff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff2a46c5ff040713ff040611ff0406 ,
                        0x11ff040611ff040611ff040611ff040611ff13205bff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff3050e0ff1d3087ff1d3086ff1d3086ff1d3086ff1d30 ,
                        0x86ff1d3086ff1d3086ff1d3086ff1d3086ff1d3086ff1d3086ff253dabff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff22389dff152c3bff326a88ff326a88ff326a88ff326a ,
                        0x88ff326a88ff326a88ff326a88ff326a88ff326a88ff2c5f7aff0b152aff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff22389dff285470ff5ec8ffff5ec8ffff5ec8ffff5ec8 ,
                        0xffff5ec8ffff5ec8ffff5ec8ffff5ec8ffff5ec8ffff54b4e5ff0b162aff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff22389dff285470ff5ec8ffff5ec8ffff5ec8ffff5ec8 ,
                        0xffff5ec8ffff5ec8ffff5ec8ffff5ec8ffff5ec8ffff54b4e5ff0b162aff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff22389dff285470ff5ec8ffff5ec8ffff5ec8ffff5ec8 ,
                        0xffff5ec8ffff5ec8ffff5ec8ffff5ec8ffff5ec8ffff54b4e5ff0b162aff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff22389dff183243ff387899ff387899ff387899ff3878 ,
                        0x99ff387899ff3f87acff5ec8ffff4088aeff387899ff326b89ff0b162aff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000010413ae0e2796ff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff2f4edaff1a2d77ff1a2d76ff1a2d76ff1a2d76ff1a2d ,
                        0x76ff1a2d76ff1f358cff3860fcff20378fff1a2d76ff1a2d76ff22399dff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000020510a00e258dff1539dbff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000004d040b28f21334c9ff112fb4ff0a12 ,
                        0x31f3365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff365afcff365afcff365afcff365afcff365afcff365afcff365a ,
                        0xfcff365afcff253eadff040716ae000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000002020b7901030cee010206f80001 ,
                        0x02fd020309f7020309f7020309f7020309f7020309f7020309f7020309f70203 ,
                        0x09f7020309f7020309f7020309f7020309f7020309f7020309f7020309f70203 ,
                        0x09f7020309f7010206f903050f9800000000000000000000000000000000f800 ,
                        0x000ff000000ff000000ff000001ff000001ff000000ff000000ff000000ff000 ,
                        0x000ff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000 ,
                        0x000ff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000 ,
                        0x000ff000000ff000000ff000000ff000000ff000000ff000000ff800000f
                    End

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
                    Left =11792
                    Top =56
                    Width =577
                    Height =793
                    TabIndex =1
                    Name ="btnOpenURL"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Open attachment URL in Web Browser"
                    Picture ="cloud-storage.ico"
                    ImageData = Begin
                        0x0000010001002020000001002000a81000001600000028000000200000004000 ,
                        0x0000010020000000000000100000d7090000d709000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000005d0e ,
                        0x07475e140de55e1008ff5e1008ff5e1008ff5e1008ff5e1008ff5e1008ff5e10 ,
                        0x08ff5e1008ff5e1008ff5e1008ff5e1008ff5d130ee05d0e0937000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000005d14 ,
                        0x0de8564854fe4c87adff4c87adff4c87adff4c87adff4c87adff4c87adff4c87 ,
                        0xadff4c87adff4c87adff4c87adff4c87adff583d46fc5d140ed5000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000005e10 ,
                        0x08ff4f6f8bff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c3 ,
                        0xffff43c3ffff43c3ffff43c3ffff43c3ffff4a98c3ff5e1008ff5d1306290000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000005e10 ,
                        0x08ff56343bff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c3 ,
                        0xffff43c3ffff43c3ffff43c3ffff43c3ffff43c1fdff5b1f1cf95d10087e0000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000005e10 ,
                        0x08ff5e1008ff47aaddff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c3 ,
                        0xffff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff535b70ff5e140fd90000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000005e10 ,
                        0x08ff5e1008ff4f718eff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c3 ,
                        0xffff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff4997c2ff5e1008ff5d13 ,
                        0x0629000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000005e10 ,
                        0x08ff57191bff57333aff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c3 ,
                        0xffff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff43c1fdff5c1e1cfa5d11 ,
                        0x087b000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000800000025f0f07465e1108885f11074b000000005e10 ,
                        0x08ff393d6aff5e1008ff48a1d0ff43c3ffff43c3ffff43c3ffff43c3ffff43c3 ,
                        0xffff43c3ffff43c3ffff43c3ffff43c3ffff43c3ffff44bef8ff58353afb5d11 ,
                        0x0899000000015e10076d5f0f0746800000020000000000000000000000000000 ,
                        0x000000000000600e0a35641811dd5f1109ff77342cfec0998bfff3e0cfff5e10 ,
                        0x08ff205babff4a293eff5e1008ff5e1008ff5e1008ff5e1008ff5e1008ff5e10 ,
                        0x08ff5e1008ff5e1008ff5e1008ff5e1008ff5e1008ff5e1008ff621710ffd0af ,
                        0xa0fff1decdff824138fe5f1109ff641a11db5c0f0a3200000000000000000000 ,
                        0x00005e10084161140cfa87493effdcc0b0fff3e0cffff3e0cffff3e0cfff5e10 ,
                        0x08ff1f5cadff027ff9ff1b62b8ff1f5cadff1f5cadff1f5cadff1f5cadff1f5c ,
                        0xadff1f5cadff1f5cadff1f5cadff1f5cadff49293eff804036ffe1c8b8fff3e0 ,
                        0xcffff3e0cffff3e0cfffdbbfafff85473dff61140cfa5c11083d00000000630e ,
                        0x0e1263170ff190574bfff1ddcdfff3e0cffff3e0cffff3e0cffff3e0cfff5e10 ,
                        0x08ff1f5cadff0082ffff0082ffff0082ffff0082ffff0e71daff1f5caeff1f5c ,
                        0xadff1f5cadff1f5cadff1f5cadff225aa7ff571e23ffa16d61fff3e0cffff3e0 ,
                        0xcffff3e0cffff3e0cffff3e0cffff1ddcdff8e5348ff641710ef601000105d10 ,
                        0x087e692017feebd5c4fff3e2d2fff5e9ddfff6ebe2fff3e1d0fff3e0cfff6218 ,
                        0x12ff2b4d8dff0082ffff0082ffff0181fdff2b4e8fff5e120bff5e1008ff5e10 ,
                        0x08ff5e1008ff5e1008ff5e1008ff5f120bff7d4038ffe5cdbdfff3e0cffff6e9 ,
                        0xdffff7ede4fff6ebe2fff5e9ddfff3e2d2ffead3c2ff671e15fe5e11087a661b ,
                        0x13d99f6b5ffff6e9defff9f2eefff9f3effff9f3effff4e4d5fff3e0cfff9e6c ,
                        0x60ff5e1008ff5e1008ff5e1008ff5e1008ff5f120bffaf8175fff2decdfff3e0 ,
                        0xcffff3e0cffff3e0cffff3e0cffff3e0cffff3e0cffff3e0cffff4e6d8fff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f2eefff6e9deff9d685dff661b13d76214 ,
                        0x0df9bd988ffff9f3effff9f3effff9f3effff9f3effff8ede6fff3e0cffff3e0 ,
                        0xcfffd2b2a3ffc19a8dffc19a8dffc29b8effdcc0b0fff3e0cffff3e0cffff3e0 ,
                        0xcffff3e0cffff3e0cffff3e0cffff3e0cffff4e2d3fff6e9dffff9f2edfff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3efffbd978eff62140df96012 ,
                        0x0bf9bf9e99fff9f3effff9f3effff9f3effff9f3effff9f3effff6ece3fff4e1 ,
                        0xd1fff3e0cffff3e0cffff3e0cffff3e0cffff3e0cffff3e2d2fff8eee6fff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3efffbd9c96ff61140cf76217 ,
                        0x0dd5a2746dfff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff8f2 ,
                        0xedfff8ede6fff7ede4fff7ede4fff7ede4fff7eee7fff9f2eefff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3efff9f6f6aff62170dd25e10 ,
                        0x0880681f16faf1e9e4fff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff0e6e1ff671e14fa5d11087b590d ,
                        0x0d1460140cee935d56fdf7f0ecfff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff7f0ecff905952fc62140ced601000100000 ,
                        0x00005e0f08445f110af9894e48fce3d2cdfff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3efffe1d0cbff864b44fc60130bf75f10083e000000000000 ,
                        0x0000000000006012093861150ddc5f1109ff78352ef9bc9994fef9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3efffe3d3 ,
                        0xceff915b54fd78352ef95f1109ff62150ed65f0f0a3300000000000000000000 ,
                        0x00000000000000000000550000035d11074a5e1008d38a5049fcf9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3efffaa7f ,
                        0x79ff60130bef5e1108885c0f0745800000020000000000000000000000000000 ,
                        0x0000000000000000000000000000000000005e10089e884e47fcf9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff5ece8ff6f29 ,
                        0x22fa5e1009900000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000005d11087b6d241df9f8f2eefff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff7f0ecff9b6962fe6013 ,
                        0x0bf56112091d0000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000005c10052f5e1008ffcfb4affff9f3 ,
                        0xeffff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3 ,
                        0xefffccb1abffcfb4affff1e9e4fff1e9e4ffceb3aeff7b3c34fc5f120afa5e11 ,
                        0x074c000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000062140db7733028faefe5 ,
                        0xe0fff9f3effff9f3effff9f3effff9f3effff9f3effff9f3effff9f3efffcdb2 ,
                        0xadff5e1109fe5e1008ff5e1008ff5e1008ff5e1008ff61150dc75f0f0a330000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000000000005c140a1962150de87a39 ,
                        0x32fae4d4cffff9f3effff9f3effff9f3effff9f3effff9f3efffc1a19cff6417 ,
                        0x10fb60130b9f5a10081f5f11074b5f11074b5a10081f00000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000000000000000005d0f08216216 ,
                        0x0ed561140cfd925d55fdb8948effc1a19cffad847eff78362ffa5e1109fe5d10 ,
                        0x078e400000040000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000004000 ,
                        0x00045d10086062150dbe63150dee5f120afa63170fe160130b9d5d0f0a340000 ,
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
                        0xffffffffffffff0001ffff0001ffff0000ffff0000ffff0000ffff00007fff00 ,
                        0x007fe1000007c000000380000001000000000000000000000000000000000000 ,
                        0x000000000000000000000000000080000001c0000003e0000007f800003ff800 ,
                        0x003ff800007ffc0000fffc0003fffe003fffff00ffffffffffffffffffff
                    End

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
