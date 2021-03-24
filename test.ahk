; 按 20次 2

^1::
Loop 20
{
    Send {2 down}  ; 自动重复由连续的按下事件组成(没有弹起事件).
    Sleep 100  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
}
Send {2 up}  ; 松开按键.
Return

^2::
Send {1 down}  ; 按下向上键.
Sleep 1000  ; 按住 1 秒.
Send {1 up}  ; 释放向上键.
Return

; 输入带有回车的句子

^3::
Send, Multiple {Enter} lines have {Enter} been sent.
Return

; 一直按着 2

^4::
Loop
{
    Send {2 down}  ; 自动重复由连续的按下事件组成(没有弹起事件).
    Sleep 100  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
}
Return


; reload current ahk script
F12::
Reload
Return

; 中断 loop
^6::
    SetTimer, Loop2, 4000

    ; loop 很不好用, 会一直阻塞在 loop 里
    ; 因为这个 2 是一直被按着的, 所以有些组合按键要同时按才有效果, 或者替换为只按一个按键
    Loop {
        Send {2 down}  ; 自动重复由连续的按下事件组成(没有弹起事件).
        Sleep 200  ; 在两次键击之间的毫秒数(或使用 SetKeyDelay 设置).
    }
Return

Loop2:
Send, {4 down}
Return





