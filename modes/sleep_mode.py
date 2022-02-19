from talon import Module, Context, actions

mod = Module()

sleep_ctx = Context()
sleep_ctx.matches = r"""
mode: sleep
"""



@mod.action_class
class Actions:

    def sleep_all():
        """Sleeps talon and hides everything"""
        actions.user.switcher_hide_running()
        actions.user.homophones_hide()
        actions.user.help_hide()
        #actions.user.mouse_sleep()
        actions.mode.disable("user.screenshare")
        actions.mode.enable("command")
        actions.speech.disable()
        actions.user.engine_sleep()


    def wake_all():
        """Wakes talon and shows everything"""
        active_microphone = actions.sound.active_microphone()
        actions.sound.set_microphone("None")
        actions.sound.set_microphone(active_microphone)
        #actions.user.mouse_wake()
        actions.user.talon_mode()

    def wake_screenshare_mode():
        """Wakes talon in screenshare mode"""
        active_microphone = actions.sound.active_microphone()
        actions.sound.set_microphone("None")
        actions.sound.set_microphone(active_microphone)
        #actions.user.mouse_wake()
        actions.mode.disable("command")
        actions.mode.enable("user.screenshare")
        actions.user.talon_mode()

@sleep_ctx.action_class("user")
class SleepUserActions:
    def stop_implosive_velar():
        #actions.user.wake_all() 
        actions.key("super-alt")
    
    def postalveolar_click(): 
        actions.user.wake_all()