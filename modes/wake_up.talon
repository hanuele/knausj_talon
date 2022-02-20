#defines the commands that sleep/wake Talon
language: en_US
-
drowse [<phrase>]$: 
    user.sleep_all()
    user.hud_add_log('command', 'Asleep')
drowse <phrase> resume$: skip()


key(f22):
	user.mouse_toggle_control_mouse()

key(f24):
    speech.toggle()
	user.toggleTeamsMute()

key(shift-f24):
	user.setTeamsMeeting()

key(ctrl-f24):
	user.resetTeamsMeeting()
