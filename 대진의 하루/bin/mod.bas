Attribute VB_Name = "mod"

Public res1 As Integer
Public res2 As Integer
Public res3 As Integer
Public res4 As Integer
Public res5 As Integer
Public res6 As Integer
Public res7 As Integer
Public res8 As Integer
Public rt1, rt2, rt3, rt4, rt5, rt6, rt7, rt8 As Integer
Public ch As Integer


' ���� api �Լ� �ε�
Declare Function sndPlaySound Lib "WINMM.DLL" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Const SND_SYNC = &H0
Const SND_ASYNC = &H1
Const SND_NODEFAULT = &H2
Const SND_LOOP = &H8
Const SND_NOSTOP = &H10

' ���� �÷��� �ϱ�(����������Լ�)
Public Function sndplay(sndname As String)
   Dim snddir As String
   Dim playmode As Long
  
   'On Error Resume Next
      snddir = App.Path & "\snd\" & sndname '��� �� �������ϸ� ����
      'playmode = sndPlaySound(vbNullString, SND_ASYNC) ' �������
      playmode = sndPlaySound(snddir, SND_ASYNC Or SND_NODEFAULT) ' ���
End Function


