#include <MsgBoxConstants.au3>

Global Const $LLGDir = @UserProfileDir & "\LLGrinder\"
Global Const $Registry = "HKEY_CURRENT_USER\Software\LLGrinder"
Global Const $RanNum = Round(Random(999, 9999999))
Global Const $LLGAu3 = $LLGDir & $RanNum & ".au3"
Global Const $LLGExe = @DesktopDir & "\" & $RanNum & ".exe"

RegDelete($Registry)
DirCreate($LLGDir)
FileInstall("C:\Program Files (x86)\AutoIt3\Aut2Exe\Aut2exe.exe", $LLGDir)

If Not IsDeclared("iMsgBoxAnswer") Then Local $iMsgBoxAnswer
$iMsgBoxAnswer = MsgBox(36, "LLVS-Macro", "How many loomians does the trainer have?" & @CRLF & @CRLF & "Yes = 3" & @CRLF & "No  = 4")
Select
	Case $iMsgBoxAnswer = 6 ;Yes=3
		_MainScript()
		FileWrite($LLGAu3, "Func _PixelSearch_Loop($left, $top, $right, $bottom, $color, $shade_variation = 0, $step = 1, $hWND = 0)" & @CRLF & "While 1" & @CRLF & "Local $PS = PixelSearch($left, $top, $right, $bottom, $color, $shade_variation, $step, $hWND)" & @CRLF & "If Not @error Then ExitLoop" & @CRLF & "WEnd" & @CRLF & "Return $PS" & @CRLF & "EndFunc" & @CRLF & "HotKeySet(""["", ""_Start"")" & @CRLF & "HotKeySet(""`"", ""_Exit"")" & @CRLF & "While 1" & @CRLF & "Sleep(100)" & @CRLF & "WEnd" & @CRLF & "Func _Exit()" & @CRLF & "Exit" & @CRLF & "EndFunc" & @CRLF & "Func _Start()" & @CRLF & "While 1" & @CRLF & "MouseClick("""", " & $Trainer & ", 75)" & @CRLF & "Send(""{ENTER 5}"")" & @CRLF & _
				"Local $Fight = _PixelSearch_Loop(" & $Fight & ", " & $FightColour & ")" & @CRLF & _
				"MouseClick("""", $Fight[0], $Fight[1])" & @CRLF & _
				"Local $Move = _PixelSearch_Loop(" & $Move & ", " & $MoveColour & ")" & @CRLF & _
				"MouseClick("""", $Move[0], $Move[1])" & @CRLF & _
				"Sleep(3000)" & @CRLF & _
				"Local $No = _PixelSearch_Loop(" & $No & ", " & $NoColour & ")" & @CRLF & _
				"MouseClick("""", $No[0], $No[1])" & @CRLF & _
				"Local $Fight = _PixelSearch_Loop(" & $Fight & ", " & $FightColour & ")" & @CRLF & _
				"MouseClick("""", $Fight[0], $Fight[1])" & @CRLF & _
				"Local $Move = _PixelSearch_Loop(" & $Move & ", " & $MoveColour & ")" & @CRLF & _
				"MouseClick("""", $Move[0], $Move[1])" & @CRLF & _
				"Sleep(3000)" & @CRLF & _
				"Local $No = _PixelSearch_Loop(" & $No & ", " & $NoColour & ")" & @CRLF & _
				"MouseClick("""", $No[0], $No[1])" & @CRLF & _
				"Local $Fight = _PixelSearch_Loop(" & $Fight & ", " & $FightColour & ")" & @CRLF & _
				"MouseClick("""", $Fight[0], $Fight[1])" & @CRLF & _
				"Local $Move = _PixelSearch_Loop(" & $Move & ", " & $MoveColour & ")" & @CRLF & _
				"MouseClick("""", $Move[0], $Move[1])" & @CRLF & _
				"Local $RedButton = _PixelSearch_Loop(" & $Triangle & ", " & $TriangleColour & ")" & @CRLF & _
				"MouseClick("""", $RedButton[0], $RedButton[1], 15)" & @CRLF & _
				"Sleep(4000)" & @CRLF & _
				"WEnd" & @CRLF & _
				"EndFunc")
		_RunDos($LLGDir & "Aut2Exe.exe /in " & $LLGAu3 & " /out " & $LLGExe)
		FileDelete($LLGAu3)
		RegDelete($Registry)
	 Case $iMsgBoxAnswer = 7 ;No=4
		_MainScript()
		FileWrite($LLGAu3, "Func _PixelSearch_Loop($left, $top, $right, $bottom, $color, $shade_variation = 0, $step = 1, $hWND = 0)" & @CRLF & "While 1" & @CRLF & "Local $PS = PixelSearch($left, $top, $right, $bottom, $color, $shade_variation, $step, $hWND)" & @CRLF & "If Not @error Then ExitLoop" & @CRLF & "WEnd" & @CRLF & "Return $PS" & @CRLF & "EndFunc" & @CRLF & "HotKeySet(""["", ""_Start"")" & @CRLF & "HotKeySet(""`"", ""_Exit"")" & @CRLF & "While 1" & @CRLF & "Sleep(100)" & @CRLF & "WEnd" & @CRLF & "Func _Exit()" & @CRLF & "Exit" & @CRLF & "EndFunc" & @CRLF & "Func _Start()" & @CRLF & "While 1" & @CRLF & "MouseClick("""", " & $Trainer & ", 75)" & @CRLF & "Send(""{ENTER 5}"")" & @CRLF & _
				"Local $Fight = _PixelSearch_Loop(" & $Fight & ", " & $FightColour & ")" & @CRLF & _
				"MouseClick("""", $Fight[0], $Fight[1])" & @CRLF & _
				"Local $Move = _PixelSearch_Loop(" & $Move & ", " & $MoveColour & ")" & @CRLF & _
				"MouseClick("""", $Move[0], $Move[1])" & @CRLF & _
				"Sleep(3000)" & @CRLF & _
				"Local $No = _PixelSearch_Loop(" & $No & ", " & $NoColour & ")" & @CRLF & _
				"MouseClick("""", $No[0], $No[1])" & @CRLF & _
				"Local $Fight = _PixelSearch_Loop(" & $Fight & ", " & $FightColour & ")" & @CRLF & _
				"MouseClick("""", $Fight[0], $Fight[1])" & @CRLF & _
				"Local $Move = _PixelSearch_Loop(" & $Move & ", " & $MoveColour & ")" & @CRLF & _
				"MouseClick("""", $Move[0], $Move[1])" & @CRLF & _
				"Sleep(3000)" & @CRLF & _
				"Local $No = _PixelSearch_Loop(" & $No & ", " & $NoColour & ")" & @CRLF & _
				"MouseClick("""", $No[0], $No[1])" & @CRLF & _
				"Local $Fight = _PixelSearch_Loop(" & $Fight & ", " & $FightColour & ")" & @CRLF & _
				"MouseClick("""", $Fight[0], $Fight[1])" & @CRLF & _
				"Local $Move = _PixelSearch_Loop(" & $Move & ", " & $MoveColour & ")" & @CRLF & _
				"MouseClick("""", $Move[0], $Move[1])" & @CRLF & _
				"Local $No = _PixelSearch_Loop(" & $No & ", " & $NoColour & ")" & @CRLF & _
				"MouseClick("""", $No[0], $No[1])" & @CRLF & _
				"Local $Fight = _PixelSearch_Loop(" & $Fight & ", " & $FightColour & ")" & @CRLF & _
				"MouseClick("""", $Fight[0], $Fight[1])" & @CRLF & _
				"Local $Move = _PixelSearch_Loop(" & $Move & ", " & $MoveColour & ")" & @CRLF & _
				"MouseClick("""", $Move[0], $Move[1])" & @CRLF & _
				"Local $RedButton = _PixelSearch_Loop(" & $Triangle & ", " & $TriangleColour & ")" & @CRLF & _
				"MouseClick("""", $RedButton[0], $RedButton[1], 15)" & @CRLF & _
				"Sleep(4000)" & @CRLF & _
				"WEnd" & @CRLF & _
				"EndFunc")
		_RunDos($LLGDir & "Aut2Exe.exe /in " & $LLGAu3 & " /out " & $LLGExe)
		FileDelete($LLGAu3)
EndSelect

#Region Functions

Func _MainScript()
	MsgBox(0, "LLVS-Macro", "Please navigate your cursor to the trainer and press ""[""")
	HotKeySet("[", "_GetTrainerPos")
	While 1
		RegRead($Registry, "Trainer")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please fight the trainer and navigate your cursor to the TOP LEFT corner of the ""Fight"" button and press ""["" UNTIL another messagebox pops up.")
	HotKeySet("[", "_GetFightPos")
	While 1
		RegRead($Registry, "FightButton")
		If Not @error Then
			Local $CheckColour = RegRead($Registry, "FightColour")
			If $CheckColour <> "0xFFFFFF" Then ExitLoop
		EndIf
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please navigate your cursor to the BOTTOM RIGHT corner of the ""Fight"" button and press ""["" afterwards.")
	HotKeySet("[", "_GetFight2Pos")
	While 1
		RegRead($Registry, "FightButton2")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please click on ""Fight"" and navigate your cursor to the TOP LEFT corner of your preferred move button and press ""["" afterwards.")
	HotKeySet("[", "_GetMovePos")
	While 1
		RegRead($Registry, "Move")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please navigate your cursor to the BOTTOM RIGHT corner of your preferred move button and press ""["" afterwards.")
	HotKeySet("[", "_GetMove2Pos")
	While 1
		RegRead($Registry, "Move2")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please faint the first loomian." & @CRLF & "When it asks you to switch, please navigate your cursor to the TOP LEFT corner of the ""No"" option and simply press ""[""." & @CRLF & "But do not click on the ""No"" button yet.")
	HotKeySet("[", "_GetNoPos")
	While 1
		RegRead($Registry, "NoButton")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please navigate your cursor to the BOTTOM RIGHT corner of the ""No"" button and press ""["" afterwards." & @CRLF & "But still, don't click on the No button just yet.")
	HotKeySet("[", "_GetNo2Pos")
	While 1
		RegRead($Registry, "NoButton2")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please navigate your cursor to the white part of the ""No"" button and press ""[""." & @CRLF & "Yes, the white part of the ""No"" button which is the text itself.")
	HotKeySet("[", "_GetNoColour")
	While 1
		RegRead($Registry, "NoColour")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, click on ""No"" and faint all loomians that the trainer has." & @CRLF & "But when the bot talks at the end of the match, please navigate your cursor to the TOP LEFT corner of the little red triangle in the chat bubble UNTIL another messagebox pops up..")
	HotKeySet("[", "_GetTrianglePos")
	While 1
		RegRead($Registry, "Triangle")
		If Not @error Then
			Local $CheckColour = RegRead($Registry, "TriangleColour")
			If $CheckColour <> "0x8A8A8A" Then ExitLoop
		EndIf
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please navigate your cursor to the BOTTOM RIGHT corner of the triangle.")
	HotKeySet("[", "_GetTriangle2Pos")
	While 1
		RegRead($Registry, "Triangle2")
		If Not @error Then ExitLoop
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "After clicking OK, please put your cursor INSIDE the triangle and click on ""["" until a new messagebox appears.")
	HotKeySet("[", "_GetTriangleColour")
	While 1
		Local $CheckColour = RegRead($Registry, "TriangleColour")
		If Not @error Then
			If $CheckColour <> "0xFFFFFF" And $CheckColour <> "0x8A8A8A" Then ExitLoop
		EndIf
	WEnd
	HotKeySet("[")
	MsgBox(0, "LLVS-Macro", "Tada! The file will arrive on your desktop in a few minutes.")

	Global $Trainer = RegRead($Registry, "Trainer")
	Global $Fight = RegRead($Registry, "FightButton") & ", " & RegRead($Registry, "FightButton2")
	Global $FightColour = RegRead($Registry, "FightColour")
	Global $Move = RegRead($Registry, "Move") & ", " & RegRead($Registry, "Move2")
	Global $MoveColour = RegRead($Registry, "MoveColour")
	Global $No = RegRead($Registry, "NoButton") & ", " & RegRead($Registry, "NoButton2")
	Global $NoColour = RegRead($Registry, "NoColour")
	Global $Triangle = RegRead($Registry, "Triangle") & ", " & RegRead($Registry, "Triangle2")
	Global $TriangleColour = RegRead($Registry, "TriangleColour")
EndFunc   ;==>_Main

Func _GetTrainerPos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "Trainer", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
EndFunc   ;==>_GetTrainerPos

Func _GetFightPos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "FightButton", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
	Local $GetHexValue = "0x" & Hex(PixelGetColor($MouseGetPos[0], $MouseGetPos[1]), 6)
	RegWrite($Registry, "FightColour", "REG_SZ", $GetHexValue)
EndFunc   ;==>_GetFightPos

Func _GetFight2Pos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "FightButton2", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
EndFunc   ;==>_GetFight2Pos

Func _GetNoPos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "NoButton", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
EndFunc   ;==>_GetNoPos

Func _GetNo2Pos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "NoButton2", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
EndFunc   ;==>_GetNo2Pos

Func _GetMovePos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "Move", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
	Local $GetHexValue = "0x" & Hex(PixelGetColor($MouseGetPos[0], $MouseGetPos[1]), 6)
	RegWrite($Registry, "MoveColour", "REG_SZ", $GetHexValue)
EndFunc   ;==>_GetMovePos

Func _GetMove2Pos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "Move2", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
EndFunc   ;==>_GetMove2Pos

Func _GetTrianglePos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "Triangle", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
	Local $GetHexValue = "0x" & Hex(PixelGetColor($MouseGetPos[0], $MouseGetPos[1]), 6)
	RegWrite($Registry, "TriangleColour", "REG_SZ", $GetHexValue)
EndFunc   ;==>_GetTrianglePos

Func _GetTriangle2Pos()
	Local $MouseGetPos = MouseGetPos()
	RegWrite($Registry, "Triangle2", "REG_SZ", $MouseGetPos[0] & ", " & $MouseGetPos[1])
EndFunc   ;==>_GetTriangle2Pos

Func _GetTriangleColour()
	Local $MouseGetPos = MouseGetPos()
	Local $GetHexValue = "0x" & Hex(PixelGetColor($MouseGetPos[0], $MouseGetPos[1]), 6)
	RegWrite($Registry, "TriangleColour", "REG_SZ", $GetHexValue)
EndFunc   ;==>_GetTriangleColour

Func _GetNoColour()
	Local $MouseGetPos = MouseGetPos()
	Local $GetHexValue = "0x" & Hex(PixelGetColor($MouseGetPos[0], $MouseGetPos[1]), 6)
	RegWrite($Registry, "NoColour", "REG_SZ", $GetHexValue)
EndFunc   ;==>_GetNoColour

; #include doesnt work so i had to manually put in the rundos function lol
Func _RunDos($sCommand)
	Local $iResult = RunWait(@ComSpec & " /C " & $sCommand, "", @SW_HIDE)
	Return SetError(@error, @extended, $iResult)
EndFunc   ;==>_RunDos

#EndRegion Functions
