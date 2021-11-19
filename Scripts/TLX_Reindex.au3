$TitleTLX = "TLXClientDemo"
$IDFrameNum = 1032
$IDFileName = 1031
$IDDirectory = 1053
$IDNotSelected = 1060
$IDSelected = 1061
$IDHidden = 1062
$IDNext = 1006
$IDPrev = 1007
$IDApply = 1008
$IDPicIndex = 1047
$IDPicGroup = 1048
$SaveDest = "C:\Temp\"
WinActivate($TitleTLX)

;; Functions
Func PicNow()
   ControlClick($TitleTLX, "", $IDPicIndex, "left", 2, 3, 7)
   Send("{CTRLDOWN}c{CTRLUP}")
   Return ClipGet()
EndFunc

Func PicFirst()
   ; So long as the current picture number is greater than the first (0)...
   While Int(PicNow()) > 0
	  ; ... click the "Prev" button.
	  ControlClick($TitleTLX, "", $IDPrev, "left", 1)
   WEnd
EndFunc

;; The Procedure

; How many pictures are there?
ControlClick($TitleTLX, "", $IDPicGroup, "left", 2, 6, 8)
Send("{CTRLDOWN}c{CTRLUP}")
$PicCount = Int(ClipGet()) - 1

; Make sure we're at the beginning of the roll
PicFirst()

For $i = 0 To $PicCount Step 1
   ; What is the Current Picture Number?
   $Now = $i
   If Int($Now) < 10 Then
	  $Now = "0" & $Now
   EndIf
   ; Fix frame numbering, file name, and directory.
   ControlFocus($TitleTLX, "", $IDFrameNum)
   Send("{HOME}{SHIFTDOWN}{END}{SHIFTUP}")
   Send($Now)
   Send("{TAB}")
   Send("{HOME}{SHIFTDOWN}{END}{SHIFTUP}")
   Send($Now)
   ClipPut($SaveDest)
   Send("{TAB}{HOME}{SHIFTDOWN}{END}{SHIFTUP}{CTRLDOWN}v{CTRLUP}")

   ; Select the picture.
   ControlCommand($TitleTLX, "", $IDSelected, "Check")

   ; Go to next picture
   ControlClick($TitleTLX, "", $IDNext, "left", 1)
Next

; Go back to the beginning of the roll.
;  If this is removed, "Apply" or "Prev" must be clicked in order to apply
;  the last frame metadata edit.
PicFirst()
