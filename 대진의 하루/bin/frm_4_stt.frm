VERSION 5.00
Begin VB.Form frm_4_stt 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "������ �Ϸ�"
   ClientHeight    =   6000
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8250
   Icon            =   "frm_4_stt.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   6000
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'ȭ�� ���
   Begin VB.Image img 
      Height          =   6000
      Left            =   0
      MouseIcon       =   "frm_4_stt.frx":8732
      MousePointer    =   99  '����� ����
      Picture         =   "frm_4_stt.frx":8A3C
      Top             =   0
      Width           =   8250
   End
End
Attribute VB_Name = "frm_4_stt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim pagenum


Private Sub Form_Activate()
img = LoadPicture(App.Path & "\img\img_std.jpg")

pagenum = 1
End Sub


Sub pagemove()
Select Case pagenum
Case 1: img = LoadPicture(App.Path & "\img\img_std4_1.jpg"): pagenum = 2
Case 2: img = LoadPicture(App.Path & "\img\img_std4_2.jpg"): pagenum = 3
Case 3: img = LoadPicture(App.Path & "\img\img_std4_3.jpg"): pagenum = 4
Case 4: img = LoadPicture(App.Path & "\img\img_std4_4.jpg"): pagenum = 5
End Select
End Sub

Private Sub img_Click()
If pagenum >= 5 Then
pagenum = 0
frm_4_tuto.Show
frm_4_stt.Hide
Else
Call pagemove
End If
End Sub










