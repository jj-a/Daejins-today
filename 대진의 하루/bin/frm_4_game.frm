VERSION 5.00
Begin VB.Form frm_4_game 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "������ �Ϸ�"
   ClientHeight    =   6000
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8250
   Icon            =   "frm_4_game.frx":0000
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
      MouseIcon       =   "frm_4_game.frx":8732
      MousePointer    =   99  '����� ����
      Picture         =   "frm_4_game.frx":8A3C
      Top             =   120
      Width           =   720
   End
   Begin VB.Label lbl 
      Alignment       =   2  '��� ����
      BackStyle       =   0  '����
      Height          =   495
      Index           =   4
      Left            =   2640
      MouseIcon       =   "frm_4_game.frx":AE36
      MousePointer    =   99  '����� ����
      TabIndex        =   4
      Top             =   5160
      Width           =   4935
   End
   Begin VB.Label lbl 
      Alignment       =   2  '��� ����
      BackStyle       =   0  '����
      Height          =   495
      Index           =   3
      Left            =   2640
      MouseIcon       =   "frm_4_game.frx":B140
      MousePointer    =   99  '����� ����
      TabIndex        =   3
      Top             =   4440
      Width           =   4935
   End
   Begin VB.Label lbl 
      Alignment       =   2  '��� ����
      BackStyle       =   0  '����
      Height          =   495
      Index           =   2
      Left            =   2640
      MouseIcon       =   "frm_4_game.frx":B44A
      MousePointer    =   99  '����� ����
      TabIndex        =   2
      Top             =   3600
      Width           =   4935
   End
   Begin VB.Label lbl 
      Alignment       =   2  '��� ����
      BackStyle       =   0  '����
      Height          =   495
      Index           =   1
      Left            =   2640
      MouseIcon       =   "frm_4_game.frx":B754
      MousePointer    =   99  '����� ����
      TabIndex        =   1
      Top             =   2760
      Width           =   4935
   End
   Begin VB.Label lbl_q 
      BackStyle       =   0  '����
      Height          =   735
      Left            =   2400
      MouseIcon       =   "frm_4_game.frx":BA5E
      MousePointer    =   99  '����� ����
      TabIndex        =   0
      Top             =   960
      Width           =   5295
   End
   Begin VB.Image img 
      Height          =   6000
      Left            =   0
      MouseIcon       =   "frm_4_game.frx":C328
      MousePointer    =   99  '����� ����
      Picture         =   "frm_4_game.frx":CBF2
      Stretch         =   -1  'True
      Top             =   0
      Width           =   8250
   End
End
Attribute VB_Name = "frm_4_game"
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
img = LoadPicture(App.Path & "\img\img4_01_3.jpg")
i = 1
Call quiz
End If
End Sub

Sub quiz()

If i = 6 Then
res4 = 2
ch = 0
frm_4.Show
frm_4_game.Hide

ElseIf i = 0 Then
res4 = 1
ch = 0
frm_4.Show
frm_4_game.Hide

Else

q() = Array(, "����� Ư���� �ƴ� ����?", "ǥ�ظ��� ���Ģ���� ���� ����?", _
"���� ���� �� �ٸ��� �� ����?", _
"���� ������ ������ ������ ���ÿ�." & vbCrLf & vbCrLf & "<������ ������ �ϸ鼭 �츮�� ������ �������� ���ݰ� �˴ϴ�.>", _
"�ѱ� ������� ���Ģ���� �˸��� ���� ���ÿ�.")

a(1, 1) = "��ȸ��"
a(1, 2) = "���缺"
a(1, 3) = "�ڸ���"
a(1, 4) = "������"

a(2, 1) = "�����ִ� ������� �η� ���� ��� ���︻"
a(2, 2) = "�����ִ� ������� �η� ���� ���� ���︻"
a(2, 3) = "��� ������� �η� ���̴� ���� ���︻"
a(2, 4) = "��� ������� �η� ���̴� ���� ���츮��"

a(3, 1) = "���� ���� �����⸦ ���ְ� �Ծ���."
a(3, 2) = "���ѱ��� �ߵ� �ڴ�."
a(3, 3) = "���� ���� ����� �����⸦ �Ծ���."
a(3, 4) = "�̰��� �� �������̴�."

a(4, 1) = "����7 ����25"
a(4, 2) = "����8 ����25"
a(4, 3) = "����8 ����24"
a(4, 4) = "����8 ����26"

a(5, 1) = "�ѱ۸������ ǥ�ؾ �Ҹ���� ���� ����� �µ��� ���� ��Ģ���� �Ѵ�."
a(5, 2) = "�ѱ۸������ ǥ�ؾ �ȼҸ��� ���� ����� �µ��� ���� ��Ģ���� �Ѵ�."
a(5, 3) = "�ѱ۸������ ǥ�ؾ �Ҹ���� ������ ��Ģ���� �Ѵ�."
a(5, 4) = "�ѱ۸������ �������� �Ҹ���� ���� �ȼҸ��� ���� ������ ��Ģ���� �Ѵ�."


r() = Array(, 4, 2, 3, 2, 1)


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
frm_4_hint.Show
ch = ch + 1
End Sub



