not mode: sleep
language: de_DE
language: en_US
-

^(dictation mode|diktier modus)$:
    mode.disable("sleep")
    mode.disable("command")
    mode.disable("user.screenshare")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")

^(command mode|Kommando modus)$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("user.screenshare")
    mode.enable("command")

^(mixed mode|gemischter modus)$:
    mode.disable("sleep")
    mode.disable("user.screenshare")
    mode.enable("dictation")
    mode.enable("command")

^(screenshare mode|bildschirm teilen modus)$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.disable("command")
    mode.enable("user.screenshare")

^german mode$:
    mode.disable("user.english")
    print('Deutsch')

^englisch modus$:
    user.switch_to_english()