; 按 F12 reload / 停止脚本
; ctrl + 6 开始脚本

; 脚本效果: 一直按照 2, 每隔 4s 按一次 4

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
