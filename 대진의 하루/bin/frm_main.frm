VERSION 5.00
Begin VB.Form frm_main 
   BackColor       =   &H000000FF&
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "������ �Ϸ�"
   ClientHeight    =   6000
   ClientLeft      =   10335
   ClientTop       =   6240
   ClientWidth     =   8250
   Icon            =   "frm_main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "frm_main.frx":8732
   MousePointer    =   99  '����� ����
   Moveable        =   0   'False
   ScaleHeight     =   6000
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'ȭ�� ���
   Begin VB.Label lbl_exit 
      BackColor       =   &H00000000&
      BackStyle       =   0  '����
      Height          =   375
      Left            =   3280
      MouseIcon       =   "frm_main.frx":8FFC
      MousePointer    =   99  '����� ����
      TabIndex        =   3
      Top             =   4005
      Width           =   1095
   End
   Begin VB.Label lbl_credit 
      BackColor       =   &H00000000&
      BackStyle       =   0  '����
      Height          =   375
      Left            =   3280
      MouseIcon       =   "frm_main.frx":9306
      MousePointer    =   99  '����� ����
      TabIndex        =   2
      Top             =   3480
      Width           =   1095
   End
   Begin VB.Label lbl_help 
      BackColor       =   &H00000000&
      BackStyle       =   0  '����
      Height          =   375
      Left            =   3280
      MouseIcon       =   "frm_main.frx":9610
      MousePointer    =   99  '����� ����
      TabIndex        =   1
      Top             =   2940
      Width           =   1095
   End
   Begin VB.Label lbl_start 
      BackColor       =   &H00000000&
      BackStyle       =   0  '����
      Height          =   375
      Left            =   3280
      MouseIcon       =   "frm_main.frx":991A
      MousePointer    =   99  '����� ����
      TabIndex        =   0
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Image img_main 
      Height          =   6000
      Left            =   0
      MouseIcon       =   "frm_main.frx":9C24
      MousePointer    =   99  '����� ����
      Picture         =   "frm_main.frx":A4EE
      Top             =   0
      Width           =   8250
   End
End
Attribute VB_Name = "frm_main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'�Ӽ�
'borderstyle=3-ũ�����
'moveable=false '���̵��Ұ�
'startupposition=2-ȭ�鰡�
'height=6375
'width=8340
'img size(scale~)=8250*6000



Dim pagenum

Private Sub Form_Activate()
img_main = LoadPicture(App.Path & "\img\main.jpg")
End Sub

Private Sub lbl_start_Click() '����
Call sndplay("eff01.wav")
frm_stt.Show
frm_main.Hide
End Sub

Private Sub lbl_help_Click() '����
Call sndplay("eff01.wav")
frm_help.Show
End Sub

Private Sub lbl_credit_Click() '������
Call sndplay("eff01.wav")
frm_credit.Show
frm_main.Hide
End Sub

Private Sub lbl_exit_Click() '������
Call sndplay("eff01.wav")
frm_exit.Show
End Sub


