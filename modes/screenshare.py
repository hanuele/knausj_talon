from talon import Context, Module, app, actions, speech_system

mod = Module()

modes = {
    "screenshare": "enabled screenshare tools)",
}

for key, value in modes.items():
    mod.mode(key, value)

