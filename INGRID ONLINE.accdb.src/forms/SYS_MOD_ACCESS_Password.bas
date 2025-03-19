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
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    RecordLocks =2
    TabularFamily =0
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =3855
    DatasheetFontHeight =11
    ItemSuffix =6
    Left =12345
    Top =4005
    Right =16200
    Bottom =6765
    RecSrcDt = Begin
        0xfa66744d4b39e640
    End
    Caption ="SET PASSWORD"
    DatasheetFontName ="Aptos"
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
            Height =2777
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =283
                    Top =623
                    Width =3285
                    Height =300
                    ForeColor =0
                    Name ="txtPassword"
                    FontName ="Segoe UI"
                    InputMask ="Password"

                    LayoutCachedLeft =283
                    LayoutCachedTop =623
                    LayoutCachedWidth =3568
                    LayoutCachedHeight =923
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =283
                            Width =3285
                            Height =300
                            FontWeight =700
                            ForeColor =0
                            Name ="Label1"
                            Caption ="Password"
                            LayoutCachedLeft =283
                            LayoutCachedTop =283
                            LayoutCachedWidth =3568
                            LayoutCachedHeight =583
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =285
                    Top =1420
                    Width =3285
                    Height =300
                    TabIndex =1
                    ForeColor =0
                    Name ="txtRepeatPassword"
                    FontName ="Segoe UI"
                    InputMask ="Password"

                    LayoutCachedLeft =285
                    LayoutCachedTop =1420
                    LayoutCachedWidth =3570
                    LayoutCachedHeight =1720
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =285
                            Top =1080
                            Width =3285
                            Height =300
                            FontWeight =700
                            ForeColor =0
                            Name ="Label3"
                            Caption ="Repeat Password"
                            LayoutCachedLeft =285
                            LayoutCachedTop =1080
                            LayoutCachedWidth =3570
                            LayoutCachedHeight =1380
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =65
                    TextFontFamily =34
                    Left =2042
                    Top =2040
                    Width =1536
                    Height =464
                    TabIndex =2
                    Name ="btnSetPassword"
                    Caption ="Ch&ange"
                    OnClick ="[Event Procedure]"
                    FontName ="Segoe UI"
                    UnicodeAccessKey =97

                    CursorOnHover =1
                    LayoutCachedLeft =2042
                    LayoutCachedTop =2040
                    LayoutCachedWidth =3578
                    LayoutCachedHeight =2504
                    ThemeFontIndex =-1
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =67
                    TextFontFamily =34
                    Left =285
                    Top =2040
                    Width =1536
                    Height =464
                    TabIndex =3
                    ForeColor =16777215
                    Name ="btnClose"
                    Caption ="&Cancel"
                    OnClick ="[Event Procedure]"
                    FontName ="Segoe UI"
                    UnicodeAccessKey =67

                    CursorOnHover =1
                    LayoutCachedLeft =285
                    LayoutCachedTop =2040
                    LayoutCachedWidth =1821
                    LayoutCachedHeight =2504
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Gradient =0
                    BackColor =2366701
                    BackThemeColorIndex =-1
                    BackTint =100.0
                    BorderColor =2366701
                    BorderThemeColorIndex =-1
                    BorderTint =100.0
                    ThemeFontIndex =-1
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
CodeBehindForm
' See "SYS_MOD_ACCESS_Password.cls"
