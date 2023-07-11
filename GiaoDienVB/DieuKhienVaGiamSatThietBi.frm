VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00C0C000&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8400
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14025
   FillColor       =   &H00C0C0C0&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8400
   ScaleWidth      =   14025
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer_baoThuc1 
      Interval        =   1000
      Left            =   9840
      Top             =   1560
   End
   Begin VB.Timer Timer_baoThuc 
      Interval        =   1000
      Left            =   10320
      Top             =   1560
   End
   Begin VB.Frame fr_tb 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Height          =   375
      Left            =   13080
      TabIndex        =   57
      Top             =   2040
      Width           =   255
      Begin VB.CommandButton bt_ok 
         Caption         =   "OK"
         Height          =   615
         Left            =   3000
         TabIndex        =   59
         Top             =   1800
         Width           =   1455
      End
      Begin VB.Label lb_tb 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   855
         Left            =   480
         TabIndex        =   58
         Top             =   720
         Width           =   3735
      End
   End
   Begin VB.Timer Timer_label 
      Interval        =   200
      Left            =   10800
      Top             =   1560
   End
   Begin VB.Frame Frame6 
      Caption         =   "THANH VIEN"
      Height          =   4815
      Left            =   120
      TabIndex        =   54
      Top             =   1440
      Width           =   2535
      Begin VB.ListBox List1 
         Height          =   2595
         ItemData        =   "DieuKhienVaGiamSatThietBi.frx":0000
         Left            =   120
         List            =   "DieuKhienVaGiamSatThietBi.frx":0010
         TabIndex        =   55
         Top             =   1080
         Width           =   2295
      End
   End
   Begin VB.Frame fr_hengio_1 
      BackColor       =   &H0080FFFF&
      Caption         =   "TRANG THAI"
      Height          =   375
      Left            =   13440
      TabIndex        =   14
      Top             =   2040
      Width           =   375
      Begin VB.CommandButton fr_hengio_1_huy 
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1200
         TabIndex        =   41
         Top             =   0
         Width           =   375
      End
      Begin VB.CommandButton fr_hengio_1_off 
         BackColor       =   &H000000FF&
         Caption         =   "OFF"
         Height          =   375
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   1080
         Width           =   1095
      End
      Begin VB.CommandButton fr_hengio_1_on 
         BackColor       =   &H0000FF00&
         Caption         =   "ON"
         Height          =   375
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame fr_hengio 
      BackColor       =   &H0000C0C0&
      Caption         =   "HEN GIO"
      Height          =   255
      Left            =   13440
      TabIndex        =   13
      Top             =   1680
      Width           =   375
      Begin VB.CommandButton fr_hengio_huy 
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3240
         TabIndex        =   42
         Top             =   0
         Width           =   375
      End
      Begin VB.CommandButton bt_q_hengio 
         Caption         =   "Quat"
         Height          =   495
         Left            =   2040
         TabIndex        =   25
         Top             =   1080
         Width           =   1095
      End
      Begin VB.CommandButton bt_dn_hengio 
         Caption         =   "Den Ngu"
         Height          =   495
         Left            =   360
         TabIndex        =   24
         Top             =   1440
         Width           =   1095
      End
      Begin VB.CommandButton bt_dk_hengio 
         Caption         =   "Den Khach"
         Height          =   495
         Left            =   360
         TabIndex        =   15
         Top             =   600
         Width           =   1095
      End
   End
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   11280
      Top             =   1560
   End
   Begin VB.Timer Timer1 
      Interval        =   1500
      Left            =   11760
      Top             =   1560
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      Height          =   2175
      Left            =   0
      TabIndex        =   2
      Top             =   6360
      Width           =   14055
      Begin VB.Frame Frame_CONTROL 
         BackColor       =   &H00FFFF00&
         BorderStyle     =   0  'None
         Height          =   2175
         Left            =   9480
         TabIndex        =   32
         Top             =   0
         Width           =   4575
         Begin VB.CommandButton bt_denkhach_off 
            BackColor       =   &H000000FF&
            Caption         =   "DEN KHACH"
            Height          =   615
            Left            =   360
            Style           =   1  'Graphical
            TabIndex        =   35
            Top             =   600
            Width           =   1215
         End
         Begin VB.CommandButton bt_quat_off 
            BackColor       =   &H000000FF&
            Caption         =   "QUAT"
            Height          =   615
            Left            =   1680
            Style           =   1  'Graphical
            TabIndex        =   37
            Top             =   1320
            Width           =   1215
         End
         Begin VB.CommandButton bt_denngu_off 
            BackColor       =   &H000000FF&
            Caption         =   "DEN NGU"
            Height          =   615
            Left            =   3000
            Style           =   1  'Graphical
            TabIndex        =   36
            Top             =   600
            Width           =   1215
         End
         Begin VB.CommandButton bt_quat_on 
            BackColor       =   &H0000FF00&
            Caption         =   "QUAT"
            Height          =   615
            Left            =   1680
            Style           =   1  'Graphical
            TabIndex        =   39
            Top             =   1320
            Width           =   1215
         End
         Begin VB.CommandButton bt_denkhach_on 
            BackColor       =   &H0000FF00&
            Caption         =   "DEN KHACH"
            Height          =   615
            Left            =   360
            Style           =   1  'Graphical
            TabIndex        =   33
            Top             =   600
            Width           =   1215
         End
         Begin VB.CommandButton bt_denngu_on 
            BackColor       =   &H0000FF00&
            Caption         =   "DEN NGU"
            Height          =   615
            Left            =   3000
            Style           =   1  'Graphical
            TabIndex        =   38
            Top             =   600
            Width           =   1215
         End
         Begin VB.Label Label10 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "DIEU KHIEN"
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C00000&
            Height          =   375
            Left            =   1320
            TabIndex        =   34
            Top             =   120
            Width           =   1935
         End
      End
      Begin VB.Frame Frame_COM 
         BackColor       =   &H00FFFF00&
         BorderStyle     =   0  'None
         Height          =   2175
         Left            =   4440
         TabIndex        =   26
         Top             =   0
         Width           =   4575
         Begin VB.ComboBox Combo1 
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   465
            ItemData        =   "DieuKhienVaGiamSatThietBi.frx":005C
            Left            =   960
            List            =   "DieuKhienVaGiamSatThietBi.frx":0075
            TabIndex        =   29
            Top             =   960
            Width           =   1695
         End
         Begin VB.CommandButton bt_disconnect 
            BackColor       =   &H000000FF&
            Caption         =   "DISCONNECT"
            Height          =   615
            Left            =   3000
            Style           =   1  'Graphical
            TabIndex        =   31
            Top             =   840
            Width           =   1215
         End
         Begin VB.CommandButton bt_connect 
            BackColor       =   &H0000FF00&
            Caption         =   "CONNECT"
            Height          =   615
            Left            =   3000
            Style           =   1  'Graphical
            TabIndex        =   30
            Top             =   840
            Width           =   1215
         End
         Begin VB.Label Label7 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "COM"
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   120
            TabIndex        =   28
            Top             =   1080
            Width           =   735
         End
         Begin VB.Label Label3 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "KET NOI COM"
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C00000&
            Height          =   375
            Left            =   1200
            TabIndex        =   27
            Top             =   120
            Width           =   1935
         End
      End
      Begin VB.Frame Frame_SETUP 
         BackColor       =   &H00FFFF00&
         BorderStyle     =   0  'None
         Height          =   2175
         Left            =   0
         TabIndex        =   10
         Top             =   0
         Width           =   3975
         Begin VB.CommandButton bt_hengio 
            Caption         =   "Hen Gio"
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   2400
            TabIndex        =   56
            Top             =   960
            Width           =   1335
         End
         Begin VB.CommandButton bt_baothuc 
            Caption         =   "Bao Thuc"
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   120
            TabIndex        =   12
            Top             =   960
            Width           =   1335
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "THIET LAP HEN GIO"
            BeginProperty Font 
               Name            =   "Arial Narrow"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C00000&
            Height          =   375
            Left            =   1080
            TabIndex        =   11
            Top             =   120
            Width           =   1935
         End
      End
   End
   Begin MSCommLib.MSComm com 
      Left            =   12240
      Top             =   1440
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H000080FF&
      BorderStyle     =   0  'None
      Height          =   1400
      Left            =   1680
      TabIndex        =   0
      Top             =   0
      Width           =   12375
      Begin VB.Label Label_title 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "DIEU KHIEN VA GIAM SAT THIET BI - HALA       "
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   495
         Left            =   840
         TabIndex        =   1
         Top             =   480
         Width           =   10455
      End
   End
   Begin VB.Frame fr_hengio_2 
      BackColor       =   &H0000FF00&
      BorderStyle     =   0  'None
      Caption         =   "TIMER"
      Height          =   495
      Left            =   12960
      TabIndex        =   18
      Top             =   1440
      Width           =   495
      Begin VB.CommandButton fr_hengio_2_huy 
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   40
         Top             =   0
         Width           =   375
      End
      Begin VB.VScrollBar fr_hengio_2_VScroll3 
         Height          =   495
         Left            =   1920
         Max             =   -1
         Min             =   60
         TabIndex        =   23
         Top             =   1200
         Value           =   1
         Width           =   495
      End
      Begin VB.VScrollBar fr_hengio_2_VScroll2 
         Height          =   495
         Left            =   1080
         Max             =   -1
         Min             =   60
         TabIndex        =   22
         Top             =   1200
         Value           =   1
         Width           =   495
      End
      Begin VB.CommandButton fr_hengio_2_set 
         Caption         =   "SET"
         Height          =   495
         Left            =   720
         TabIndex        =   21
         Top             =   1800
         Width           =   1215
      End
      Begin VB.VScrollBar fr_hengio_2_VScroll1 
         Height          =   495
         Left            =   240
         Max             =   0
         Min             =   25
         TabIndex        =   19
         Top             =   1200
         Value           =   1
         Width           =   495
      End
      Begin VB.Label fr_hengio_2_lb 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFF00&
         Height          =   495
         Left            =   0
         TabIndex        =   20
         Top             =   480
         Width           =   2655
      End
   End
   Begin VB.Label lb_baoThuc 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF80&
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   60
      Top             =   5520
      Width           =   5055
   End
   Begin VB.Label Label16 
      BackStyle       =   0  'Transparent
      Caption         =   "QUAT"
      Height          =   495
      Left            =   9000
      TabIndex        =   53
      Top             =   4200
      Width           =   975
   End
   Begin VB.Label Label15 
      BackStyle       =   0  'Transparent
      Caption         =   "DEN NGU"
      Height          =   495
      Left            =   6480
      TabIndex        =   52
      Top             =   4200
      Width           =   975
   End
   Begin VB.Label Label14 
      BackStyle       =   0  'Transparent
      Caption         =   "DEN KHACH"
      Height          =   495
      Left            =   3960
      TabIndex        =   51
      Top             =   4200
      Width           =   975
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "OFF"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   50
      Top             =   4680
      Width           =   735
   End
   Begin VB.Label lb_baoThuc_dk_off 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   3600
      TabIndex        =   49
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Label lb_baoThuc_dn_off 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   6000
      TabIndex        =   48
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Label lb_baoThuc_q_off 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   8280
      TabIndex        =   47
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "ON"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   46
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label lb_baoThuc_q_on 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   8280
      TabIndex        =   45
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Label lb_baoThuc_dn_on 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   6000
      TabIndex        =   44
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Label lb_baoThuc_dk_on 
      Alignment       =   2  'Center
      Height          =   375
      Left            =   3600
      TabIndex        =   43
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Shape quat 
      FillColor       =   &H00C0C0C0&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   3240
      Width           =   1575
   End
   Begin VB.Shape denNgu 
      FillColor       =   &H00C0C0C0&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   6120
      Shape           =   3  'Circle
      Top             =   3240
      Width           =   1575
   End
   Begin VB.Shape denKhach 
      FillColor       =   &H00C0C0C0&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   3720
      Shape           =   3  'Circle
      Top             =   3240
      Width           =   1575
   End
   Begin VB.Label lb_time 
      Alignment       =   2  'Center
      BackColor       =   &H8000000A&
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   450
      Left            =   5040
      TabIndex        =   9
      Top             =   1400
      Width           =   3855
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "KHI GAS"
      Height          =   615
      Left            =   10680
      TabIndex        =   8
      Top             =   4680
      Width           =   1095
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "DO AM"
      Height          =   615
      Left            =   10680
      TabIndex        =   7
      Top             =   3720
      Width           =   1095
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "NHIET DO"
      Height          =   615
      Left            =   10560
      TabIndex        =   6
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label lb2 
      Alignment       =   2  'Center
      Height          =   975
      Left            =   11640
      TabIndex        =   5
      Top             =   4440
      Width           =   2295
   End
   Begin VB.Label lb1 
      Alignment       =   2  'Center
      Height          =   975
      Left            =   11640
      TabIndex        =   4
      Top             =   3480
      Width           =   2295
   End
   Begin VB.Label lb 
      Alignment       =   2  'Center
      Height          =   975
      Left            =   11640
      TabIndex        =   3
      Top             =   2520
      Width           =   2295
   End
   Begin VB.Image Image1 
      Height          =   1395
      Left            =   0
      Picture         =   "DieuKhienVaGiamSatThietBi.frx":00A3
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim baothuc As Boolean
Dim hou As Integer
Dim Min As Integer
Dim sec As Integer
Dim temp_fr2_hou As Integer
Dim temp_fr2_Min As Integer
Dim temp_fr2_sec As Integer
Dim temp_fr2_dk_on_hou As Integer
Dim temp_fr2_dk_on_Min As Integer
Dim temp_fr2_dk_on_sec As Integer
Dim temp_fr2_dk_off_hou As Integer
Dim temp_fr2_dk_off_Min As Integer
Dim temp_fr2_dk_off_sec As Integer
Dim temp_fr2_dn_on_hou As Integer
Dim temp_fr2_dn_on_Min As Integer
Dim temp_fr2_dn_on_sec As Integer
Dim temp_fr2_dn_off_hou As Integer
Dim temp_fr2_dn_off_Min As Integer
Dim temp_fr2_dn_off_sec As Integer
Dim temp_fr2_q_on_hou As Integer
Dim temp_fr2_q_on_Min As Integer
Dim temp_fr2_q_on_sec As Integer
Dim temp_fr2_q_off_hou As Integer
Dim temp_fr2_q_off_Min As Integer
Dim temp_fr2_q_off_sec As Integer
Dim baothuc_hou As Integer
Dim baothuc_Min As Integer
Dim baothuc_sec As Integer
Dim dk_send As Integer
Dim dn_send As Integer
Dim q_send As Integer
Dim setup As Integer
Dim i As Integer

Dim dk As String
Dim dn As String
Dim q As String
Dim hengio_on As Boolean
Dim hengio_off As Boolean



Private Sub bt_baothuc_Click()
setup = 1
fr_hengio_2.Visible = True
fr_hengio_2.Left = 5600
fr_hengio_2.Top = 2640
fr_hengio_2.Width = 2655
fr_hengio_2.Height = 2535
Frame_SETUP.Enabled = False
Frame_COM.Enabled = False
Frame_CONTROL.Enabled = False
fr_hengio_2_VScroll1.Value = hou
fr_hengio_2_VScroll2.Value = Min
fr_hengio_2_VScroll3.Value = sec
temp_fr2 = temp_fr2_hou & ":" & temp_fr2_Min & ":" & temp_fr2_sec
End Sub

Private Sub bt_connect_Click()
temp = Int(Right(Combo1.Text, 1))
com.CommPort = temp
com.Settings = "9600,n,8,1"
com.PortOpen = True
bt_connect.Visible = False
bt_disconnect.Visible = True
fr_tb.Visible = True
lb_tb.Caption = "Ket noi thanh cong COM" & temp
Frame_SETUP.Enabled = True
Frame_CONTROL.Enabled = True
End Sub

Private Sub bt_denkhach_off_Click()
denKhach.FillColor = &HC0C0C0
bt_denkhach_on.Visible = True
bt_denkhach_off.Visible = False
dk_send = "0"
End Sub

Private Sub bt_denkhach_on_Click()
denKhach.FillColor = vbRed
bt_denkhach_on.Visible = False
bt_denkhach_off.Visible = True
dk_send = "1"
End Sub

Private Sub bt_denngu_off_Click()
denNgu.FillColor = &HC0C0C0
bt_denngu_on.Visible = True
bt_denngu_off.Visible = False
dn_send = "0"
End Sub

Private Sub bt_denngu_on_Click()
denNgu.FillColor = vbRed
bt_denngu_off.Visible = True
bt_denngu_on.Visible = False
dn_send = "1"
End Sub

Private Sub bt_disconnect_Click()
com.PortOpen = False
bt_connect.Visible = True
bt_disconnect.Visible = False
fr_tb.Visible = True
lb_tb.Caption = "da ngat ket noi. Vui long ket noi lai de thao tac!"
Frame_SETUP.Enabled = False
Frame_CONTROL.Enabled = False
End Sub

Private Sub bt_dk_hengio_Click()
dk = 1
q = 0
dn = 0
fr_hengio_1.Left = 8160
fr_hengio_1.Top = 2640
fr_hengio_1.Width = 1575
fr_hengio_1.Height = 1815
fr_hengio_1.Visible = True
bt_dk_hengio.Enabled = False
fr_hengio_huy.Enabled = False
bt_q_hengio.Enabled = False
bt_dn_hengio.Enabled = False
End Sub

Private Sub bt_dn_hengio_Click()
dn = 1
dk = 0
q = 0
fr_hengio_1.Left = 8160
fr_hengio_1.Top = 2640
fr_hengio_1.Width = 1575
fr_hengio_1.Height = 1815
fr_hengio_1.Visible = True
bt_dk_hengio.Enabled = False
fr_hengio_huy.Enabled = False
bt_q_hengio.Enabled = False
bt_dn_hengio.Enabled = False
End Sub

Private Sub bt_hengio_Click()
setup = 2
fr_hengio.Left = 4560
fr_hengio.Top = 2640
fr_hengio.Width = 3600
fr_hengio.Height = 2775
fr_hengio.Visible = True
bt_hengio.Enabled = False
bt_baothuc.Enabled = False
bt_connect.Enabled = False
bt_disconnect.Enabled = False
bt_denkhach_on.Enabled = False
bt_denkhach_off.Enabled = False
bt_denngu_on.Enabled = False
bt_denngu_off.Enabled = False
bt_quat_off.Enabled = False
bt_quat_on.Enabled = False
Combo1.Enabled = False
End Sub


Private Sub bt_ok_Click()
fr_tb.Visible = False
Frame_COM.Enabled = True
i = 10
End Sub

Private Sub bt_q_hengio_Click()
q = 1
dk = 0
dn = 0
fr_hengio_1.Left = 8160
fr_hengio_1.Top = 2640
fr_hengio_1.Width = 1575
fr_hengio_1.Height = 1815
fr_hengio_1.Visible = True
bt_dk_hengio.Enabled = False
fr_hengio_huy.Enabled = False
bt_q_hengio.Enabled = False
bt_dn_hengio.Enabled = False
End Sub

Private Sub bt_quat_off_Click()
quat.FillColor = &HC0C0C0
bt_quat_on.Visible = True
bt_quat_off.Visible = False
q_send = "0"
End Sub

Private Sub bt_quat_on_Click()
quat.FillColor = vbRed
bt_quat_on.Visible = False
bt_quat_off.Visible = True
q_send = "1"
End Sub

Private Sub Form_Load()
baothuc = False
fr_hengio.Visible = False
fr_hengio_1.Visible = False
fr_hengio_2.Visible = False
bt_denkhach_on.Visible = True
bt_denngu_on.Visible = True
bt_quat_on.Visible = True
bt_denkhach_off.Visible = False
bt_denngu_off.Visible = False
bt_quat_off.Visible = False
Frame_SETUP.Enabled = False
Frame_CONTROL.Enabled = False
Frame_COM.Enabled = False
fr_tb.Visible = True
lb_tb.Caption = "Vui long chon va ket noi COM de thao tac!"
bt_disconnect.Visible = False
bt_connect.Visible = True
fr_tb.Height = 2535
fr_tb.Width = 4695
fr_tb.Left = 4560
fr_tb.Top = 2760
Timer_baoThuc.Enabled = False
Timer_baoThuc1.Enabled = False
Timer_label.Enabled = True
Timer1.Enabled = True
Timer2.Enabled = True
End Sub


Private Sub fr_hengio_1_huy_Click()
bt_dk_hengio.Enabled = True
fr_hengio_1.Visible = False
fr_hengio_huy.Enabled = True
bt_dn_hengio.Enabled = True
bt_q_hengio.Enabled = True
End Sub

Private Sub fr_hengio_1_off_Click()
hengio_off = True
hengio_on = False
fr_hengio_2.Visible = True
If dk = 1 Then
dk = 3
ElseIf dn = 1 Then
dn = 3
ElseIf q = 1 Then
q = 3
End If
fr_hengio_1_huy.Enabled = False
fr_hengio_2.Left = 9720
fr_hengio_2.Top = 2640
fr_hengio_2.Width = 2655
fr_hengio_2.Height = 2535
fr_hengio_1_on.Enabled = False
fr_hengio_1_off.Enabled = False
temp_fr2_hou = hou
temp_fr2_Min = Min
temp_fr2_sec = sec
fr_hengio_2_VScroll1.Value = hou
fr_hengio_2_VScroll2.Value = Min
fr_hengio_2_VScroll3.Value = sec
temp_fr2 = temp_fr2_hou & ":" & temp_fr2_Min & ":" & temp_fr2_sec
fr_hengio_2_lb.Caption = temp_fr2
End Sub

Private Sub fr_hengio_1_on_Click()
hengio_on = True
hengio_off = False
If dk = 1 Then
dk = 2
ElseIf dn = 1 Then
dn = 2
ElseIf q = 1 Then
q = 2
End If
fr_hengio_2.Visible = True
fr_hengio_1_huy.Enabled = False
temp_fr2_hou = hou
temp_fr2_Min = Min
temp_fr2_sec = sec
fr_hengio_2_VScroll1.Value = hou
fr_hengio_2_VScroll2.Value = Min
fr_hengio_2_VScroll3.Value = sec
temp_fr2 = temp_fr2_hou & ":" & temp_fr2_Min & ":" & temp_fr2_sec
fr_hengio_2_lb.Caption = temp_fr2
fr_hengio_1_on.Enabled = False
fr_hengio_1_off.Enabled = False
fr_hengio_2.Left = 9720
fr_hengio_2.Top = 2640
fr_hengio_2.Width = 2655
fr_hengio_2.Height = 2535
End Sub

Private Sub fr_hengio_2_huy_Click()
If setup = 2 Then
fr_hengio_2.Visible = False
fr_hengio_1_on.Enabled = True
fr_hengio_1_off.Enabled = True
fr_hengio_1_huy.Enabled = True
End If
If setup = 1 Then
fr_hengio_2.Visible = False
Frame_SETUP.Enabled = True
Frame_COM.Enabled = True
Frame_CONTROL.Enabled = True
End If
End Sub

Private Sub fr_hengio_2_set_Click()
If setup = 2 Then
fr_hengio_2.Visible = False
fr_hengio_1.Visible = False
bt_dk_hengio.Enabled = True
bt_dn_hengio.Enabled = True
bt_q_hengio.Enabled = True
fr_hengio_huy.Enabled = True
fr_hengio_1_off.Enabled = True
fr_hengio_1_on.Enabled = True
fr_hengio_1_huy.Enabled = True
If hengio_on = True Then
If dk = 2 Then
temp_fr2_dk_on_hou = temp_fr2_hou
temp_fr2_dk_on_Min = temp_fr2_Min
temp_fr2_dk_on_sec = temp_fr2_sec
lb_baoThuc_dk_on.Caption = temp_fr2_dk_on_hou & ":" & temp_fr2_dk_on_Min & ":" & temp_fr2_dk_on_sec
ElseIf dn = 2 Then
temp_fr2_dn_on_hou = temp_fr2_hou
temp_fr2_dn_on_Min = temp_fr2_Min
temp_fr2_dn_on_sec = temp_fr2_sec
lb_baoThuc_dn_on.Caption = temp_fr2_dn_on_hou & ":" & temp_fr2_dn_on_Min & ":" & temp_fr2_dn_on_sec
ElseIf q = 2 Then
temp_fr2_q_on_hou = temp_fr2_hou
temp_fr2_q_on_Min = temp_fr2_Min
temp_fr2_q_on_sec = temp_fr2_sec
lb_baoThuc_q_on.Caption = temp_fr2_q_on_hou & ":" & temp_fr2_q_on_Min & ":" & temp_fr2_q_on_sec
End If
End If
If hengio_off = True Then
If dk = 3 Then
temp_fr2_dk_off_hou = temp_fr2_hou
temp_fr2_dk_off_Min = temp_fr2_Min
temp_fr2_dk_off_sec = temp_fr2_sec
lb_baoThuc_dk_off.Caption = temp_fr2_dk_off_hou & ":" & temp_fr2_dk_off_Min & ":" & temp_fr2_dk_off_sec
ElseIf dn = 3 Then
temp_fr2_dn_off_hou = temp_fr2_hou
temp_fr2_dn_off_Min = temp_fr2_Min
temp_fr2_dn_off_sec = temp_fr2_sec
lb_baoThuc_dn_off.Caption = temp_fr2_dn_off_hou & ":" & temp_fr2_dn_off_Min & ":" & temp_fr2_dn_off_sec
ElseIf q = 3 Then
temp_fr2_q_off_hou = temp_fr2_hou
temp_fr2_q_off_Min = temp_fr2_Min
temp_fr2_q_off_sec = temp_fr2_sec
lb_baoThuc_q_off.Caption = temp_fr2_q_off_hou & ":" & temp_fr2_q_off_Min & ":" & temp_fr2_q_off_sec
End If
End If
End If
If setup = 1 Then
baothuc_hou = temp_fr2_hou
baothuc_Min = temp_fr2_Min
baothuc_sec = temp_fr2_sec
lb_baoThuc.Caption = "Bao thuc:" & baothuc_hou & ":" & baothuc_Min & ":" & baothuc_sec
End If
End Sub

Private Sub fr_hengio_2_VScroll1_Change()
temp_fr2_hou = fr_hengio_2_VScroll1.Value
temp_fr2 = temp_fr2_hou & ":" & temp_fr2_Min & ":" & temp_fr2_sec
fr_hengio_2_lb.Caption = temp_fr2
If fr_hengio_2_VScroll1.Value = 25 Then
fr_hengio_2_VScroll1.Value = 1
End If
If fr_hengio_2_VScroll1.Value = 0 Then
fr_hengio_2_VScroll1.Value = 24
End If
End Sub

Private Sub fr_hengio_2_VScroll2_Change()
temp_fr2_Min = fr_hengio_2_VScroll2.Value
temp_fr2 = temp_fr2_hou & ":" & temp_fr2_Min & ":" & temp_fr2_sec
fr_hengio_2_lb.Caption = temp_fr2
If fr_hengio_2_VScroll2.Value = 60 Then
fr_hengio_2_VScroll2.Value = 0
End If
If fr_hengio_2_VScroll2.Value = -1 Then
fr_hengio_2_VScroll2.Value = 59
End If
End Sub

Private Sub fr_hengio_2_VScroll3_Change()
temp_fr2_sec = fr_hengio_2_VScroll3.Value
temp_fr2 = temp_fr2_hou & ":" & temp_fr2_Min & ":" & temp_fr2_sec
fr_hengio_2_lb.Caption = temp_fr2
If fr_hengio_2_VScroll3.Value = 60 Then
fr_hengio_2_VScroll3.Value = 0
End If
If fr_hengio_2_VScroll3.Value = -1 Then
fr_hengio_2_VScroll3.Value = 59
End If
End Sub

Private Sub fr_hengio_3_huy_Click()
fr_hengio_3.Visible = False
fr_hengio_1_on.Enabled = True
fr_hengio_1_off.Enabled = True
fr_hengio_1_huy.Enabled = True
End Sub

Private Sub fr_hengio_huy_Click()
bt_hengio.Enabled = True
bt_baothuc.Enabled = True
bt_connect.Enabled = True
bt_disconnect.Enabled = True
bt_denkhach_on.Enabled = True
bt_denkhach_off.Enabled = True
bt_denngu_on.Enabled = True
bt_denngu_off.Enabled = True
bt_quat_off.Enabled = True
bt_quat_on.Enabled = True
fr_hengio.Visible = False
Combo1.Enabled = True
End Sub




Private Sub Timer_baoThuc_Timer()
fr_tb.Visible = False
Timer_baoThuc1.Enabled = True
End Sub

Private Sub Timer_baoThuc1_Timer()
i = i + 1
fr_tb.Visible = True
lb_tb.Caption = "Ring ring ring...!"
If i < 10 Then
Timer_baoThuc.Enabled = True
Else
fr_tb.Visible = False
Frame_SETUP.Enabled = True
Frame_COM.Enabled = True
Frame_CONTROL.Enabled = True
Timer_baoThuc1.Enabled = False
Timer_baoThuc.Enabled = False
End If
End Sub

Private Sub Timer_label_Timer()
Label_title.Caption = Right(Label_title.Caption, Len(Label_title.Caption) - 1) & Left(Label_title.Caption, 1)
End Sub

Private Sub Timer1_Timer()
If com.PortOpen = True Then
temp = com.Input()
If Len(temp) <= 6 Then
nhietdo = Left(temp1, 2)
doam = Mid(temp1, 4, 2)
gas = Mid(temp1, 7, 3)
Else
temp1 = temp
nhietdo = Left(temp, 2)
doam = Mid(temp, 4, 2)
gas = Mid(temp, 7, 3)
End If
lb.Caption = nhietdo & "*C"
lb1.Caption = doam & "%"
lb2.Caption = gas & "PPM"
com.Output = dk_send & dn_send & q_send
End If
End Sub

Private Sub Timer2_Timer()
lb_time.Caption = Now
hou = Hour(Now)
Min = Minute(Now)
sec = Second(Now)
If temp_fr2_dk_on_hou = hou And temp_fr2_dk_on_Min = Min And temp_fr2_dk_on_sec = sec Then
denKhach.FillColor = vbRed
bt_denkhach_off.Visible = True
bt_denkhach_on.Visible = False
dk_send = "1"
End If
If temp_fr2_dk_off_hou = hou And temp_fr2_dk_off_Min = Min And temp_fr2_dk_off_sec = sec Then
denKhach.FillColor = &HC0C0C0
bt_denkhach_off.Visible = False
bt_denkhach_on.Visible = True
dk_send = "0"
End If
If temp_fr2_dn_on_hou = hou And temp_fr2_dn_on_Min = Min And temp_fr2_dn_on_sec = sec Then
denNgu.FillColor = vbRed
bt_denngu_off.Visible = True
bt_denngu_on.Visible = False
dn_send = "1"
End If
If temp_fr2_dn_off_hou = hou And temp_fr2_dn_off_Min = Min And temp_fr2_dn_off_sec = sec Then
denNgu.FillColor = &HC0C0C0
bt_denngu_off.Visible = False
bt_denngu_on.Visible = True
dn_send = "0"
End If
If temp_fr2_q_on_hou = hou And temp_fr2_q_on_Min = Min And temp_fr2_q_on_sec = sec Then
quat.FillColor = vbRed
bt_quat_off.Visible = True
bt_quat_on.Visible = False
q_send = "1"
End If
If temp_fr2_q_off_hou = hou And temp_fr2_q_off_Min = Min And temp_fr2_q_off_sec = sec Then
quat.FillColor = &HC0C0C0
bt_quat_off.Visible = False
bt_quat_on.Visible = True
q_send = "0"
End If
If baothuc_hou = hou And baothuc_Min = Min And baothuc_sec = sec Then
fr_tb.Visible = True
lb_tb.Caption = "Ring ring ring ....!"
i = 0
Timer_baoThuc.Enabled = True
Frame_SETUP.Enabled = False
Frame_COM.Enabled = False
Frame_CONTROL.Enabled = False
End If
End Sub

