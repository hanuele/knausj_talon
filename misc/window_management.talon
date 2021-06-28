(minimize | mini): app.window_hide()
(maximize | maxi): user.maximize()
open window | window (new|open): app.window_open()
next window | window next: app.window_next()
last window | window last: app.window_previous()
close window | window close: app.window_close()
#focus <user.running_applications>: user.switcher_focus(running_applications)
focus <user.running_applications> <phrase>$: user.switcher_focus(running_applications, phrase)

running list: user.switcher_toggle_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)
[show] programs: user.all_programs()
fullscreen: user.toggle_fullscreen()

snap <user.window_snap_position>: user.snap_window(window_snap_position)
snap next [screen]: user.move_window_next_screen()
snap last [screen]: user.move_window_previous_screen()
snap screen <number>: user.move_window_to_screen(number)
snap <user.running_applications> <user.window_snap_position>:
    user.snap_app(running_applications, window_snap_position)
snap <user.running_applications> [screen] <number>:
    user.move_app_to_screen(running_applications, number)
