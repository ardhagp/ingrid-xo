Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    AutoResize = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    DefaultView =0
    ScrollBars =0
    RecordLocks =2
    TabularFamily =0
    BorderStyle =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =4535
    DatasheetFontHeight =11
    ItemSuffix =7
    Left =660
    Top =1395
    Right =5295
    Bottom =10425
    TimerInterval =10
    RecSrcDt = Begin
        0xcc2a31bda03be640
    End
    DatasheetFontName ="Aptos"
    OnTimer ="[Event Procedure]"
    Moveable =0
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    AllowLayoutView =0
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
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
        Begin Section
            Height =8050
            BackColor =967423
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            Begin
                Begin Label
                    OverlapFlags =93
                    TextFontFamily =34
                    Left =170
                    Top =340
                    Width =1725
                    Height =330
                    ForeColor =0
                    Name ="lblWatcherText"
                    Caption ="19:31:57"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =170
                    LayoutCachedTop =340
                    LayoutCachedWidth =1895
                    LayoutCachedHeight =670
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =170
                    Top =56
                    Width =1590
                    Height =315
                    FontWeight =700
                    ForeColor =0
                    Name ="Label1"
                    Caption ="Local PC Time:"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =170
                    LayoutCachedTop =56
                    LayoutCachedWidth =1760
                    LayoutCachedHeight =371
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =93
                    TextFontFamily =34
                    Left =170
                    Top =793
                    Width =1770
                    Height =345
                    FontWeight =700
                    ForeColor =0
                    Name ="Label3"
                    Caption ="Your Session ID:"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =170
                    LayoutCachedTop =793
                    LayoutCachedWidth =1940
                    LayoutCachedHeight =1138
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =170
                    Top =1077
                    Width =4260
                    Height =330
                    ForeColor =0
                    Name ="lblSessionID"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =170
                    LayoutCachedTop =1077
                    LayoutCachedWidth =4430
                    LayoutCachedHeight =1407
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =93
                    TextFontFamily =34
                    Left =165
                    Top =1485
                    Width =2175
                    Height =345
                    FontWeight =700
                    ForeColor =0
                    Name ="Label5"
                    Caption ="Your Session Expiry:"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =165
                    LayoutCachedTop =1485
                    LayoutCachedWidth =2340
                    LayoutCachedHeight =1830
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                End
                Begin Label
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =165
                    Top =1755
                    Width =4260
                    Height =330
                    ForeColor =0
                    Name ="lblSessionExpiry"
                    Caption ="00:00:00"
                    FontName ="Segoe UI"
                    LayoutCachedLeft =165
                    LayoutCachedTop =1755
                    LayoutCachedWidth =4425
                    LayoutCachedHeight =2085
                    ThemeFontIndex =-1
                    ForeTint =100.0
                End
            End
        End
    End
End
CodeBehindForm
' See "APP_WATCHDOG.cls"
