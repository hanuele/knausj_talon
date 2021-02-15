#defines the various mode commands
mode: all
-

trump go to sleep: 
    speech.disable()
    user.play_IdLikeNotToButYouKnow()

trump wake up: 
    speech.enable()
    user.play_TalonWake()

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
