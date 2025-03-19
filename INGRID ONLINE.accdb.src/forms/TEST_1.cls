Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
' Declare the Windows API function
Private Declare PtrSafe Function GetSystemMetrics Lib "user32" (ByVal nIndex As Long) As Long

Private Const SM_CXSCREEN As Long = 0 ' Constant for screen width

' Conversion factor: Twips per pixel (use for scaling in MS Access)
Private Const TwipsPerPixelX As Long = 15 ' Adjust this if needed based on your system

Private Sub Form_Load()
    ' Get the screen width in pixels
    Dim ScreenWidth As Long
    ScreenWidth = GetSystemMetrics(SM_CXSCREEN)

    ' Set the form's width to the screen width
    Me.Width = ScreenWidth * TwipsPerPixelX
End Sub
