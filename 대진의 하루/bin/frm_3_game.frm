VERSION 5.00
Begin VB.Form frm_3_game 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "������ �Ϸ�"
   ClientHeight    =   6000
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8250
   Icon            =   "frm_3_game.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   6000
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'ȭ�� ���
   Begin VB.Image img_ht 
      Height          =   720
      Left            =   7440
      MouseIcon       =   "frm_3_game.frx":8732
      MousePointer    =   99  '����� ����
      Picture         =   "frm_3_game.frx":8A3C
      Top             =   120
      Width           =   720
   End
   Begin VB.Label lbl_q 
      BackStyle       =   0  '����
      Height          =   735
      Left            =   2400
      MouseIcon       =   "frm_3_game.frx":AE36
      MousePointer    =   99  '����� ����
      TabIndex        =   4
      Top             =   1080
      Width           =   5055
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   375
      Index           =   4
      Left            =   2640
      MouseIcon       =   "frm_3_game.frx":B700
      MousePointer    =   99  '����� ����
      TabIndex        =   3
      Top             =   4800
      Width           =   5055
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   375
      Index           =   3
      Left            =   2640
      MouseIcon       =   "frm_3_game.frx":BA0A
      MousePointer    =   99  '����� ����
      TabIndex        =   2
      Top             =   4080
      Width           =   5055
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   375
      Index           =   2
      Left            =   2640
      MouseIcon       =   "frm_3_game.frx":BD14
      MousePointer    =   99  '����� ����
      TabIndex        =   1
      Top             =   3480
      Width           =   5055
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   375
      Index           =   1
      Left            =   2640
      MouseIcon       =   "frm_3_game.frx":C01E
      MousePointer    =   99  '����� ����
      TabIndex        =   0
      Top             =   2880
      Width           =   5055
   End
   Begin VB.Image img 
      Height          =   6000
      Left            =   0
      MouseIcon       =   "frm_3_game.frx":C328
      MousePointer    =   99  '����� ����
      Picture         =   "frm_3_game.frx":CBF2
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8250
   End
End
Attribute VB_Name = "frm_3_game"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim q() As Variant
Dim a(5, 4) As Variant
Dim r() As Variant
Dim i, j As Integer

Private Sub Form_Activate()
If ch > 0 Then
Else
img = LoadPicture(App.Path & "\img\img3_01_3.jpg")
i = 1
Call quiz
End If
End Sub

Sub quiz()

If i = 6 Then
res3 = 2
ch = 0
frm_3.Show
frm_3_game.Hide

ElseIf i = 0 Then
res3 = 1
ch = 0
frm_3.Show
frm_3_game.Hide

Else

q() = Array(, "ASP�� �ֿ� ��ü�� �ƴ� ����?", "�� �̸��� ����?", _
"���� URL�� ���� ������ �����ϱ� ���� ���� ������ ���� ����� ���ÿ�." & vbCrLf & vbCrLf & "http://localhost/good/asp/daejin.asp?year=2010��name=jja", _
"���������� ���ÿ� ���������� ���� ���̴� ��ü��?", _
"�����(Client) ����(�湮��) ������ ���� ���·� �����ص� �� �ִ� �÷�����?")

a(1, 1) = "Request��ü"
a(1, 2) = "Application��ü"
a(1, 3) = "Response��ü"
a(1, 4) = "Global��ü"

a(2, 1) = "�۴��"
a(2, 2) = "�ۼ���"
a(2, 3) = "�հ���"
a(2, 4) = "�ۼ���"

a(3, 1) = "Response���"
a(3, 2) = "Post���"
a(3, 3) = "Cookies���"
a(3, 4) = "Get���"

a(4, 1) = "�� Application  �� Session"
a(4, 2) = "�� Server  �� Session"
a(4, 3) = "�� Session  �� Application"
a(4, 4) = "�� Request  �� Server"

a(5, 1) = "Form"
a(5, 2) = "Cookies"
a(5, 3) = "Servervariable"
a(5, 4) = "Querystring"


r() = Array(, 4, 2, 4, 1, 2)


lbl_q = i & ". " & q(i)
For j = 1 To 4
lbl(j) = j & ". " & a(i, j)
Next

End If

End Sub


Private Sub img_ht_Click()
Call sndplay("eff01.wav")
frm_3_hint.Show
ch = ch + 1
End Sub

Private Sub lbl_Click(Index As Integer)

If Index = r(i) Then
Call sndplay("eff02.wav")
i = i + 1
Call quiz
Else
i = 0
Call quiz
End If

End Sub


