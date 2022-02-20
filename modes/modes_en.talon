not mode: sleep
language: en_US
-

^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.disable("user.screenshare")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")

^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.screenshare")
    mode.enable("command")

^mixed mode$:
    mode.disable("sleep")
    mode.disable("user.screenshare")
    mode.enable("dictation")
    mode.enable("command")

^screenshare mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("command")
    mode.enable("user.screenshare")