VERSION 5.00
Begin VB.Form frmTest 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Balloon Tooltips"
   ClientHeight    =   4005
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3375
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmTest.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4005
   ScaleWidth      =   3375
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   495
      Left            =   120
      TabIndex        =   5
      Top             =   3360
      Width           =   3255
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Check1"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   2880
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   2280
      Width           =   3135
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   120
      TabIndex        =   2
      Top             =   1800
      Width           =   3135
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   3135
   End
   Begin VB.PictureBox Picture1 
      Height          =   735
      Left            =   120
      ScaleHeight     =   675
      ScaleWidth      =   3075
      TabIndex        =   0
      Top             =   120
      Width           =   3135
   End
End
Attribute VB_Name = "frmTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
KillBalloonTip Me.Command1.Tag
End Sub

Private Sub Form_Load()
    
    
  CreateBalloon Me.Command1, Command1.hwnd, "Hey There User!", szBalloon, False, "WOW!", etiInfo

  
End Sub


Private Sub Text1_Change()
    

        ShowBalloonTip Text1.hwnd, "Caps Lock", "When entering a password  don't forget to turn caps lock off", etiError, 225, 225

    
End Sub

