VERSION 5.00
Begin VB.Form frm_6_game 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "������ �Ϸ�"
   ClientHeight    =   6000
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8250
   Icon            =   "frm_6_game.frx":0000
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
      Left            =   120
      MouseIcon       =   "frm_6_game.frx":8732
      MousePointer    =   99  '����� ����
      Picture         =   "frm_6_game.frx":8A3C
      Top             =   5160
      Width           =   720
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   4
      Left            =   2040
      MouseIcon       =   "frm_6_game.frx":AE36
      MousePointer    =   99  '����� ����
      TabIndex        =   4
      Top             =   3440
      Width           =   5895
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   3
      Left            =   2040
      MouseIcon       =   "frm_6_game.frx":B140
      MousePointer    =   99  '����� ����
      TabIndex        =   3
      Top             =   2800
      Width           =   5895
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   2
      Left            =   2040
      MouseIcon       =   "frm_6_game.frx":B44A
      MousePointer    =   99  '����� ����
      TabIndex        =   2
      Top             =   2160
      Width           =   5895
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   1
      Left            =   2040
      MouseIcon       =   "frm_6_game.frx":B754
      MousePointer    =   99  '����� ����
      TabIndex        =   1
      Top             =   1560
      Width           =   5895
   End
   Begin VB.Label lbl_q 
      BackStyle       =   0  '����
      Height          =   735
      Left            =   2160
      MouseIcon       =   "frm_6_game.frx":BA5E
      MousePointer    =   99  '����� ����
      TabIndex        =   0
      Top             =   240
      Width           =   5655
   End
   Begin VB.Image img 
      Height          =   6000
      Left            =   0
      MouseIcon       =   "frm_6_game.frx":C328
      MousePointer    =   99  '����� ����
      Picture         =   "frm_6_game.frx":CBF2
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8250
   End
End
Attribute VB_Name = "frm_6_game"
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
img = LoadPicture(App.Path & "\img\img6_01_3.jpg")
i = 1
Call quiz
End If
End Sub

Sub quiz()

If i = 6 Then
res6 = 2
ch = 0
frm_6.Show
frm_6_game.Hide

ElseIf i = 0 Then
res6 = 1
ch = 0
frm_6.Show
frm_6_game.Hide

Else

q() = Array(, "'Dreams come true' �� �츮���� �ؼ��Ͻÿ�.", _
"���м��дɷ½��� �ܱ���� �ð���?", "�ܾ�� ���� �˸°� ¦������ ����?", _
"����Ϸ��� �⺻ ���·� ���� ����?", _
"'It is necessary to advertise yourself.' ���� ���־ ã���ÿ�.")

a(1, 1) = "���� �� ���̴�."
a(1, 2) = "���� ���� �� ����̴�."
a(1, 3) = "���� �̷������."
a(1, 4) = "���� �ٰ� �ʹ�."

a(2, 1) = "70��"
a(2, 2) = "80��"
a(2, 3) = "100��"
a(2, 4) = "120��"

a(3, 1) = "always ����"
a(3, 2) = "aften ����~����"
a(3, 3) = "sometimes ������"
a(3, 4) = "never �׻�"

a(4, 1) = "have+p.p"
a(4, 2) = "be+~ing"
a(4, 3) = "to+v"
a(4, 4) = "had+been+p.p"

a(5, 1) = "It"
a(5, 2) = "to advertise yourself"
a(5, 3) = "to advertise"
a(5, 4) = "necessary"


r() = Array(, 3, 1, 3, 1, 2)


lbl_q = i & ". " & q(i)
For j = 1 To 4
lbl(j) = j & ". " & a(i, j)
Next

End If

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


Private Sub img_ht_Click()
Call sndplay("eff01.wav")
frm_6_hint.Show
ch = ch + 1
End Sub


