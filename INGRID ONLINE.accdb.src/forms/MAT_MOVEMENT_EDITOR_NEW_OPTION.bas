Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    DefaultView =0
    ScrollBars =0
    TabularFamily =0
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5555
    DatasheetFontHeight =11
    ItemSuffix =4
    Left =5170
    Top =2050
    Right =10730
    Bottom =4700
    RecSrcDt = Begin
        0xd325e2e0d05ee640
    End
    Caption ="NEW MATERIAL MOVEMENT"
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
            Height =2664
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =3401
                    Top =1417
                    Height =403
                    TabIndex =1
                    Name ="BTN_CREATE_NEWMATERIALMOVEMENT"
                    Caption ="Create"
                    OnClick ="[Event Procedure]"
                    FontName ="Segoe UI"

                    CursorOnHover =1
                    LayoutCachedLeft =3401
                    LayoutCachedTop =1417
                    LayoutCachedWidth =5102
                    LayoutCachedHeight =1820
                    ThemeFontIndex =-1
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2211
                    Top =737
                    Width =2881
                    Height =330
                    Name ="CBO_SELECTOPTION"
                    RowSourceType ="Value List"
                    RowSource ="\"INCOMING\";\"OUTGOING\";\"CHANGE BIN LOCATION\";\"TRANSFER MATERIAL\""
                    DefaultValue ="\"INCOMING\""
                    FontName ="Segoe UI"
                    OnChange ="[Event Procedure]"

                    LayoutCachedLeft =2211
                    LayoutCachedTop =737
                    LayoutCachedWidth =5092
                    LayoutCachedHeight =1067
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =0
                    ForeShade =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =510
                            Top =737
                            Width =1600
                            Height =290
                            ForeColor =0
                            Name ="LBL_SELECTOPTION"
                            Caption ="Select Option"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =510
                            LayoutCachedTop =737
                            LayoutCachedWidth =2110
                            LayoutCachedHeight =1027
                            ThemeFontIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =1587
                    Top =1417
                    Height =404
                    TabIndex =2
                    ForeColor =16777215
                    Name ="BTN_CANCEL_NEWMATERIALMOVEMENT"
                    Caption ="Cancel"
                    OnClick ="[Event Procedure]"
                    FontName ="Segoe UI"

                    CursorOnHover =1
                    LayoutCachedLeft =1587
                    LayoutCachedTop =1417
                    LayoutCachedWidth =3288
                    LayoutCachedHeight =1821
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
' See "MAT_MOVEMENT_EDITOR_NEW_OPTION.cls"
