Version =20
VersionRequired =20
Begin Form
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    DefaultView =2
    ViewsAllowed =2
    RecordLocks =2
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10209
    RowHeight =400
    DatasheetFontHeight =11
    ItemSuffix =37
    Left =7710
    Top =4200
    Right =27435
    Bottom =11820
    RecSrcDt = Begin
        0x2dc4e9074d46e640
    End
    RecordSource ="q_employee"
    Caption ="frmSystem_User_List"
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
            Height =7599
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
                    Left =2895
                    Top =840
                    Width =3060
                    Height =330
                    ColumnWidth =1890
                    TabIndex =2
                    ForeColor =0
                    Name ="txtEMPLOYEEID"
                    ControlSource ="USER_EMPLOYEEID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =840
                    LayoutCachedWidth =5955
                    LayoutCachedHeight =1170
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =840
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="EMPLOYEE ID_Label"
                            Caption ="EMPLOYEE ID"
                            FontName ="Segoe UI"
                            EventProcPrefix ="EMPLOYEE_ID_Label"
                            LayoutCachedLeft =345
                            LayoutCachedTop =840
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =1170
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
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
                    Left =2895
                    Top =1239
                    Width =7260
                    Height =600
                    ColumnWidth =2700
                    TabIndex =3
                    ForeColor =0
                    Name ="TITLE"
                    ControlSource ="USER_TITLE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =1239
                    LayoutCachedWidth =10155
                    LayoutCachedHeight =1839
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =1239
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="TITLE_Label"
                            Caption ="TITLE"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =1239
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =1569
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
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
                    Left =2895
                    Top =1923
                    Width =7260
                    Height =600
                    ColumnWidth =3360
                    TabIndex =4
                    ForeColor =0
                    Name ="FULL NAME"
                    ControlSource ="USER_FULLNAME"
                    FontName ="Segoe UI"
                    EventProcPrefix ="FULL_NAME"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =1923
                    LayoutCachedWidth =10155
                    LayoutCachedHeight =2523
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =1923
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="FULL NAME_Label"
                            Caption ="FULL NAME"
                            FontName ="Segoe UI"
                            EventProcPrefix ="FULL_NAME_Label"
                            LayoutCachedLeft =345
                            LayoutCachedTop =1923
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =2253
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =2607
                    Width =1170
                    Height =330
                    ColumnWidth =1110
                    TabIndex =5
                    ForeColor =0
                    Name ="PLANT"
                    ControlSource ="USER_PLANTCODE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =2607
                    LayoutCachedWidth =4065
                    LayoutCachedHeight =2937
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =2607
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="PLANT_Label"
                            Caption ="PLANT"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =2607
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =2937
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
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
                    Left =2895
                    Top =3006
                    Width =7260
                    Height =600
                    ColumnWidth =2550
                    TabIndex =6
                    ForeColor =0
                    Name ="PLANT NAME"
                    ControlSource ="USER_PLANTNAME"
                    FontName ="Segoe UI"
                    EventProcPrefix ="PLANT_NAME"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =3006
                    LayoutCachedWidth =10155
                    LayoutCachedHeight =3606
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =3006
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="PLANT NAME_Label"
                            Caption ="PLANT NAME"
                            FontName ="Segoe UI"
                            EventProcPrefix ="PLANT_NAME_Label"
                            LayoutCachedLeft =345
                            LayoutCachedTop =3006
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =3336
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =3690
                    Width =1170
                    Height =330
                    ColumnWidth =1035
                    TabIndex =7
                    ForeColor =0
                    Name ="SLOC"
                    ControlSource ="USER_SLOCCODE"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =3690
                    LayoutCachedWidth =4065
                    LayoutCachedHeight =4020
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =3690
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="SLOC_Label"
                            Caption ="SLOC"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =3690
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =4020
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
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
                    Left =2895
                    Top =4089
                    Width =7260
                    Height =600
                    ColumnWidth =1695
                    TabIndex =8
                    ForeColor =0
                    Name ="SLOC NAME"
                    ControlSource ="USER_SLOCNAME"
                    FontName ="Segoe UI"
                    EventProcPrefix ="SLOC_NAME"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =4089
                    LayoutCachedWidth =10155
                    LayoutCachedHeight =4689
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =4089
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="SLOC NAME_Label"
                            Caption ="SLOC NAME"
                            FontName ="Segoe UI"
                            EventProcPrefix ="SLOC_NAME_Label"
                            LayoutCachedLeft =345
                            LayoutCachedTop =4089
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =4419
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =4773
                    Width =1515
                    Height =330
                    ColumnWidth =1830
                    TabIndex =9
                    ForeColor =0
                    Name ="SLOC ABBRV"
                    ControlSource ="USER_SLOCABBRV"
                    FontName ="Segoe UI"
                    EventProcPrefix ="SLOC_ABBRV"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =4773
                    LayoutCachedWidth =4410
                    LayoutCachedHeight =5103
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =4773
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="SLOC ABBRV_Label"
                            Caption ="SLOC ABBRV"
                            FontName ="Segoe UI"
                            EventProcPrefix ="SLOC_ABBRV_Label"
                            LayoutCachedLeft =345
                            LayoutCachedTop =4773
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =5103
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =5172
                    Width =930
                    Height =330
                    ColumnWidth =1545
                    TabIndex =10
                    ForeColor =0
                    Name ="SPONSOR"
                    ControlSource ="USER_SPONSOR"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =5172
                    LayoutCachedWidth =3825
                    LayoutCachedHeight =5502
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =5172
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="SPONSOR_Label"
                            Caption ="SPONSOR"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =5172
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =5502
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =5571
                    Width =1860
                    Height =330
                    ColumnWidth =1335
                    TabIndex =11
                    ForeColor =0
                    Name ="ROLE"
                    ControlSource ="USER_ISADMIN"
                    FontName ="Segoe UI"
                    ConditionalFormat = Begin
                        0x0100000096000000020000000100000000000000000000000c00000001000000 ,
                        0x00000000a7da4e0001000000000000000d0000001a00000001000000ffffff00 ,
                        0xed1c240000000000000000000000000000000000000000000000000000000000 ,
                        0x5b0052004f004c0045005d003d0027004e006f002700000000005b0052004f00 ,
                        0x4c0045005d003d002700590065007300270000000000
                    End

                    LayoutCachedLeft =2895
                    LayoutCachedTop =5571
                    LayoutCachedWidth =4755
                    LayoutCachedHeight =5901
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x01000200000001000000000000000100000000000000a7da4e000b0000005b00 ,
                        0x52004f004c0045005d003d0027004e006f002700000000000000000000000000 ,
                        0x000000000000000000010000000000000001000000ffffff00ed1c24000c0000 ,
                        0x005b0052004f004c0045005d003d002700590065007300270000000000000000 ,
                        0x0000000000000000000000000000
                    End
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =5571
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="ROLE_Label"
                            Caption ="IS ADMIN"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =5571
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =5901
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =6870
                    Width =4035
                    Height =330
                    ColumnWidth =2160
                    TabIndex =14
                    ForeColor =0
                    Name ="CREATED"
                    ControlSource ="USER_CREATED"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =6870
                    LayoutCachedWidth =6930
                    LayoutCachedHeight =7200
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =6870
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="CREATED_Label"
                            Caption ="CREATED"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =6870
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =7200
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =7269
                    Width =4035
                    Height =330
                    ColumnWidth =2160
                    TabIndex =15
                    ForeColor =0
                    Name ="LAST MODIFIED"
                    ControlSource ="USER_LASTMODIFIED"
                    FontName ="Segoe UI"
                    EventProcPrefix ="LAST_MODIFIED"

                    LayoutCachedLeft =2895
                    LayoutCachedTop =7269
                    LayoutCachedWidth =6930
                    LayoutCachedHeight =7599
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =7269
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="LAST MODIFIED_Label"
                            Caption ="LAST MODIFIED"
                            FontName ="Segoe UI"
                            EventProcPrefix ="LAST_MODIFIED_Label"
                            LayoutCachedLeft =345
                            LayoutCachedTop =7269
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =7599
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    ColumnHidden = NotDefault
                    DisplayWhen =1
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2896
                    Top =450
                    Height =300
                    ColumnWidth =4020
                    TabIndex =1
                    ForeColor =0
                    Name ="txtUSERID"
                    ControlSource ="USER_ID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2896
                    LayoutCachedTop =450
                    LayoutCachedWidth =4597
                    LayoutCachedHeight =750
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =450
                            Width =735
                            Height =300
                            ForeColor =0
                            Name ="Label30"
                            Caption ="USER"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =450
                            LayoutCachedWidth =1080
                            LayoutCachedHeight =750
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    DisplayWhen =1
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2896
                    Top =60
                    Height =300
                    ForeColor =0
                    Name ="txtUSERROWID"
                    ControlSource ="USER_ROWID"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2896
                    LayoutCachedTop =60
                    LayoutCachedWidth =4597
                    LayoutCachedHeight =360
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =60
                            Width =855
                            Height =345
                            ForeColor =0
                            Name ="Label32"
                            Caption ="ROW.ID"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =60
                            LayoutCachedWidth =1200
                            LayoutCachedHeight =405
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2895
                    Top =6021
                    Width =1860
                    Height =330
                    ColumnWidth =1605
                    TabIndex =12
                    ForeColor =0
                    Name ="ISLOCKED"
                    ControlSource ="USER_ISLOCKED"
                    FontName ="Segoe UI"
                    ConditionalFormat = Begin
                        0x01000000a6000000020000000100000000000000000000001000000001000000 ,
                        0x00000000a7da4e000100000000000000110000002200000001000000ffffff00 ,
                        0xed1c240000000000000000000000000000000000000000000000000000000000 ,
                        0x5b00490053004c004f0043004b00450044005d003d0027004e006f0027000000 ,
                        0x00005b00490053004c004f0043004b00450044005d003d002700590065007300 ,
                        0x270000000000
                    End

                    LayoutCachedLeft =2895
                    LayoutCachedTop =6021
                    LayoutCachedWidth =4755
                    LayoutCachedHeight =6351
                    ThemeFontIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =100.0
                    ConditionalFormat14 = Begin
                        0x01000200000001000000000000000100000000000000a7da4e000f0000005b00 ,
                        0x490053004c004f0043004b00450044005d003d0027004e006f00270000000000 ,
                        0x0000000000000000000000000000000000010000000000000001000000ffffff ,
                        0x00ed1c2400100000005b00490053004c004f0043004b00450044005d003d0027 ,
                        0x005900650073002700000000000000000000000000000000000000000000
                    End
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =6021
                            Width =2460
                            Height =330
                            ForeColor =0
                            Name ="ISLOCKED_Label"
                            Caption ="IS LOCKED"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =6021
                            LayoutCachedWidth =2805
                            LayoutCachedHeight =6351
                            ThemeFontIndex =-1
                            ForeThemeColorIndex =-1
                            ForeTint =100.0
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    IMESentenceMode =3
                    Left =2896
                    Top =6406
                    Width =4036
                    Height =300
                    ColumnWidth =2160
                    TabIndex =13
                    ForeColor =0
                    Name ="Text35"
                    ControlSource ="USER_LASTLOGIN"
                    FontName ="Segoe UI"

                    LayoutCachedLeft =2896
                    LayoutCachedTop =6406
                    LayoutCachedWidth =6932
                    LayoutCachedHeight =6706
                    ThemeFontIndex =-1
                    ForeTint =100.0
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =345
                            Top =6406
                            Width =1335
                            Height =315
                            ForeColor =0
                            Name ="Label36"
                            Caption ="LAST LOGIN"
                            FontName ="Segoe UI"
                            LayoutCachedLeft =345
                            LayoutCachedTop =6406
                            LayoutCachedWidth =1680
                            LayoutCachedHeight =6721
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
