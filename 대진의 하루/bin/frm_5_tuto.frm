VERSION 5.00
Begin VB.Form frm_5_tuto 
   BorderStyle     =   3  '크기 고정 대화 상자
   Caption         =   "대진의 하루"
   ClientHeight    =   6000
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8250
   Icon            =   "frm_5_tuto.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   6000
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '화면 가운데
   Begin VB.Image img_5 
      Height          =   6000
      Left            =   0
      MouseIcon       =   "frm_5_tuto.frx":8732
      MousePointer    =   99  '사용자 정의
      Picture         =   "frm_5_tuto.frx":8A3C
      Top             =   0
      Width           =   8250
   End
End
Attribute VB_Name = "frm_5_tuto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim pagenum


Private Sub Form_Activate()
img_5 = LoadPicture(App.Path & "\img\empty.jpg")
pagenum = 1
End Sub


Sub pagemove()
Select Case pagenum
Case 1: img_5 = LoadPicture(App.Path & "\img\img5_tuto_1.jpg"): pagenum = 2
Case 2: img_5 = LoadPicture(App.Path & "\img\img5_tuto_2.jpg"): pagenum = 3
Case 3: img_5 = LoadPicture(App.Path & "\img\img5_tuto_3.jpg"): pagenum = 4
Case 4: img_5 = LoadPicture(App.Path & "\img\img5_tuto_4.jpg"): pagenum = 5
Case 5: img_5 = LoadPicture(App.Path & "\img\img5_tuto_5.jpg"): pagenum = 6
Case 6: img_5 = LoadPicture(App.Path & "\img\img5_tuto_6.jpg"): pagenum = 7
End Select
End Sub

Private Sub img_5_Click()
If pagenum >= 7 Then
pagenum = 0
rt5 = 1
frm_5.Show
frm_5_tuto.Hide
Else
Call pagemove
End If
End Sub



