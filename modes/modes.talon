not mode: sleep
-
^drowse$:
    user.hud_add_log('command', 'Asleep')
    speech.disable()

^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")

^(command mode|Kommando modus)$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")

^mixed mode$:
    mode.disable("sleep")
    mode.enable("dictation")
    mode.enable("command")