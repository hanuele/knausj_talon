#defines the commands that sleep/wake Talon

drowse [<phrase>]$: 
    user.sleep_all()
    user.hud_add_log('command', 'Asleep')
drowse <phrase> resume$: skip()