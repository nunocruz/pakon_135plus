#Include <GuiSlider.au3>

; TLXClientDemo needs to be running
If Not WinExists("TLXClientDemo") Then
   Exit
Endif


; Maximize window
$handle = WinGetHandle("TLXClientDemo")
$style = _WinAPI_GetWindowLong($handle, $GWL_STYLE)
$style = BitOR($style, 0x00010000)

WinSetState($handle, $GWL_STYLE, @SW_MAXIMIZE)
$winPosSize = WinGetPos("TLXClientDemo", "")
$style = BitAND($style, BitNOT(0x00010000))


Global $originalSize[2] = [1001, 738]
$relX = 0
$relY = 0

if ($winPosSize[2] > $originalSize[0]) Then
   $relX = ($winPosSize[2] - $originalSize[0])
EndIf

if ($winPosSize[3] > $originalSize[1]) Then
   $relY += ($winPosSize[3] - $originalSize[1])
EndIf

; Move bottom controls
MoveControlY("[CLASSNN:Static10]", 635+$relY);
MoveControlY("[CLASSNN:Static11]", 635+$relY);
MoveControlY("[CLASSNN:Static12]", 635+$relY);
MoveControlY("[CLASSNN:Static13]", 666+$relY);
MoveControlY("[CLASSNN:Static14]", 666+$relY);
MoveControlY("[CLASSNN:Static15]", 666+$relY);
MoveControlY("[CLASSNN:msctls_progress321]", 635+$relY);
MoveControlY("[CLASSNN:msctls_progress322]", 666+$relY);
MoveControlY("[CLASSNN:Edit9]", 635+$relY);
MoveControlY("[CLASSNN:Edit10]", 666+$relY);
MoveControlY("[CLASSNN:Button23]", 627+$relY);
MoveControlY("[CLASSNN:Button24]", 660+$relY);
MoveControlY("[CLASSNN:Button25]", 660+$relY);
MoveControlY("[CLASSNN:Button28]", 635+$relY);
MoveControlY("[CLASSNN:Button29]", 666+$relY);

; Move right side controls
MoveControlX("[CLASSNN:Button15]", 843+$relX);
MoveControlX("[CLASSNN:Static2]", 855+$relX);
MoveControlX("[CLASSNN:Static3]", 866+$relX);
MoveControlX("[CLASSNN:Static4]", 863+$relX);
MoveControlX("[CLASSNN:Static5]", 873+$relX);
MoveControlX("[CLASSNN:Static6]", 848+$relX);
MoveControlX("[CLASSNN:Static7]", 857+$relX);
MoveControlX("[CLASSNN:Static8]", 860+$relX);
MoveControlX("[CLASSNN:Edit1]", 912+$relX);
MoveControlX("[CLASSNN:Edit2]", 912+$relX);
MoveControlX("[CLASSNN:Edit3]", 912+$relX);
MoveControlX("[CLASSNN:Edit4]", 912+$relX);
MoveControlX("[CLASSNN:Edit5]", 912+$relX);
MoveControlX("[CLASSNN:Edit6]", 912+$relX);
MoveControlX("[CLASSNN:Edit7]", 912+$relX);
MoveControlX("[CLASSNN:Button16]", 888+$relX);
MoveControlX("[CLASSNN:Button17]", 888+$relX);
MoveControlX("[CLASSNN:Button18]", 888+$relX);
MoveControlX("[CLASSNN:Button19]", 876+$relX);
MoveControlX("[CLASSNN:Button20]", 843+$relX);
MoveControlX("[CLASSNN:Button21]", 863+$relX);
MoveControlX("[CLASSNN:Button22]", 929+$relX);
MoveControlX("[CLASSNN:Button30]", 843+$relX);
MoveControlX("[CLASSNN:Button31]", 863+$relX);
MoveControlX("[CLASSNN:Button32]", 927+$relX);
MoveControlX("[CLASSNN:Button13]", 843+$relX);
MoveControlX("[CLASSNN:Button14]", 918+$relX);
MoveControlX("[CLASSNN:Static9]", 843+$relX);
MoveControlX("[CLASSNN:Edit8]", 945+$relX);

; Resize preview window
ResizeControl("[CLASSNN:Static1]", 723+$relX, 609+$relY);

; Use High buffer
ControlClick("TLXClientDemo", "", "[CLASSNN:Button32]")
Exit

Func ResizeControl($id, $w, $h)
   $pos = ControlGetPos("TLXClientDemo", "", $id)
   ControlMove("TLXClientDemo", "", $id, $pos[0], $pos[1], $w, $h)
EndFunc

Func MoveControlX($id, $x)
   $pos = ControlGetPos("TLXClientDemo", "", $id)
   ControlMove("TLXClientDemo", "", $id, $x, $pos[1], $pos[2], $pos[3])
EndFunc

Func MoveControlY($id, $y)
   $pos = ControlGetPos("TLXClientDemo", "", $id)
   ControlMove("TLXClientDemo", "", $id, $pos[0], $y, $pos[2], $pos[3])
EndFunc
