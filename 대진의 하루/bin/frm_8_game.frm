VERSION 5.00
Begin VB.Form frm_8_game 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "������ �Ϸ�"
   ClientHeight    =   5985
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8250
   Icon            =   "frm_8_game.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5985
   ScaleWidth      =   8250
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'ȭ�� ���
   Begin VB.Timer tmr 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   7800
      Top             =   120
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   4
      Left            =   2400
      MouseIcon       =   "frm_8_game.frx":8732
      MousePointer    =   99  '����� ����
      TabIndex        =   4
      Top             =   3360
      Width           =   4935
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   3
      Left            =   2400
      MouseIcon       =   "frm_8_game.frx":8A3C
      MousePointer    =   99  '����� ����
      TabIndex        =   3
      Top             =   2760
      Width           =   4935
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   2
      Left            =   2400
      MouseIcon       =   "frm_8_game.frx":8D46
      MousePointer    =   99  '����� ����
      TabIndex        =   2
      Top             =   2160
      Width           =   4935
   End
   Begin VB.Label lbl 
      BackStyle       =   0  '����
      Height          =   495
      Index           =   1
      Left            =   2400
      MouseIcon       =   "frm_8_game.frx":9050
      MousePointer    =   99  '����� ����
      TabIndex        =   1
      Top             =   1560
      Width           =   4935
   End
   Begin VB.Label lbl_q 
      BackStyle       =   0  '����
      Height          =   615
      Left            =   2400
      MouseIcon       =   "frm_8_game.frx":935A
      MousePointer    =   99  '����� ����
      TabIndex        =   0
      Top             =   360
      Width           =   4935
   End
   Begin VB.Image img 
      Height          =   6000
      Left            =   0
      MouseIcon       =   "frm_8_game.frx":9C24
      MousePointer    =   99  '����� ����
      Picture         =   "frm_8_game.frx":A4EE
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8250
   End
End
Attribute VB_Name = "frm_8_game"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim q() As Variant
Dim a(10, 4) As Variant
Dim r() As Variant
Dim i, j As Integer
Dim c As Integer

Private Sub Form_Activate()
img = LoadPicture(App.Path & "\img\img8_01_3.jpg")
i = 1
Call quiz
End Sub

Sub quiz()

If i = 11 Then
res8 = 2
frm_8.Show
frm_8_game.Hide

ElseIf i = 0 Then
res8 = 1
frm_8.Show
frm_8_game.Hide

Else

q() = Array(, "'�Ұ� ���� �Ҹ�'�� �����ڷ� �ϸ�?", "��¥ ���� �������� ����?", _
"��� ���� �� ���� �����?", "Ÿ��Ÿ���� ����Ʈ���� �� ���� Ż�� ������?", _
"�ڷ���񿡼� �ǰ� ������?", "�߰ſ� �����ƴ�?", _
"����� �ϻ����� ���� ���� �ϴ� �Ҹ���?", "���� ������ ����� �θ���?", _
"��ȩ���� �ڽ��� ���ڷ� ���̸�?", "���� ����� ����ģ�ٴ� ���� �ױ��� ����?")

a(1, 1) = "������"
a(1, 2) = "������"
a(1, 3) = "������"
a(1, 4) = "űűű"

a(2, 1) = "�б�"
a(2, 2) = "������"
a(2, 3) = "��"
a(2, 4) = "��"

a(3, 1) = "������"
a(3, 2) = "�θ��"
a(3, 3) = "����"
a(3, 4) = "��3�����"

a(4, 1) = "2��"
a(4, 2) = "9��"
a(4, 3) = "11��"
a(4, 4) = "15��"

a(5, 1) = "��̴�"
a(5, 2) = "�Ǻ���"
a(5, 3) = "�ǻ�ƾ"
a(5, 4) = "���Ǳ� ����"

a(6, 1) = "õ��������"
a(6, 2) = "�鵵������"
a(6, 3) = "Ȳ��������"
a(6, 4) = "�����ư� �ƴϴ�"

a(7, 1) = "Ī��"
a(7, 2) = "��"
a(7, 3) = "���Ҹ�"
a(7, 4) = "�ܼҸ�"

a(8, 1) = "��������Ӵ�"
a(8, 2) = "�����Ӵ�"
a(8, 3) = "�츮����"
a(8, 4) = "�þ�Ӵ�"

a(9, 1) = "������"
a(9, 2) = "������"
a(9, 3) = "���̱�"
a(9, 4) = "���̱�"

a(10, 1) = "��������"
a(10, 2) = "�����н�"
a(10, 3) = "�����Ѻ�"
a(10, 4) = "�ǹ�����"


r() = Array(, 3, 2, 4, 2, 2, 1, 3, 2, 4, 1)


lbl_q = i & ". " & q(i)
For j = 1 To 4
lbl(j) = j & ". " & a(i, j)
lbl(j).Enabled = True
Next

End If

End Sub


Sub next_to()
i = i + 1
Call quiz
End Sub

Private Sub lbl_Click(Index As Integer)

If Index = r(i) Then
Call sndplay("eff02.wav")
tmr.Enabled = True
Else
i = 0
Call quiz
End If

End Sub



Private Sub tmr_Timer()
Select Case c
Case 0
img = LoadPicture(App.Path & "\img\img8_01_4.jpg")
tmr.Interval = 2000
c = 1
lbl_q = ""
For j = 1 To 4
    lbl(j) = ""
    lbl(j).Enabled = False
Next
Case 1
img = LoadPicture(App.Path & "\img\img8_01_3.jpg")
tmr.Enabled = False
tmr.Interval = 500
c = 0
Call next_to
End Select
End Sub

