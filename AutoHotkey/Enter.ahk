C::
Loop
{
	if GetKeyState("b", "P")
		break

	Send, {Enter down}
	Sleep, 50
	Send, {Enter up}
	Sleep, 7500
}
Return

F8::ExitApp
