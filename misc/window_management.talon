mode: command
mode: mixed
-

(window open|Fenster öffnen): app.window_open()
(window next|nächstes Fenster): app.window_next()
(window last|vorheriges Fenster): app.window_previous()
(window close|Fenster schliessen): app.window_close()

(minimize | mini): 
    key(alt-space)
    sleep(0.1)
    key(n)

    #app.window_hide()
(maximize | maxi): 
    key(alt-space)
    sleep(0.1)
    key(x)    
    #user.maximize()

normal:
    key(alt-space)
    sleep(0.1)
    key(r)

focus <user.running_applications> [<phrase>]$:
    user.switcher_focus(running_applications)
    sleep(200ms)
    user.parse_phrase(phrase or "")

# following only works on windows. Can't figure out how to make it work for mac. No idea what the equivalent for linux would be.
focus$: user.switcher_menu()
running list: user.switcher_toggle_running()
visible list: user.switcher_toggle_visible()
running close: user.switcher_hide_running()
visible close: user.switcher_hide_visible()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

touch <user.window_snap_position>: user.snap_window(window_snap_position)
touch <user.term_navigate_right> [screen]: user.move_window_next_screen()
touch <user.term_navigate_left> [screen]: user.move_window_previous_screen()
touch screen <number>: user.move_window_to_screen(number)
touch <user.running_applications> <user.window_snap_position>:
    user.snap_app(running_applications, window_snap_position)
touch <user.running_applications> [screen] <number>:
    user.move_app_to_screen(running_applications, number)

touch <number> <user.window_snap_position>: 
    user.move_window_to_screen(number)
    sleep(0.5)
    user.snap_window(window_snap_position)

target <number> <user.window_snap_position>: 
    user.move_cursor_to_snap_position_center(number, window_snap_position)
    mouse_click(0)

westen:
    key(super-right)
    user.quick_macro_set("key","super-right")

osten:
    key(super-left)
    user.quick_macro_set("key","super-left")

norden:
    key(super-up)
    user.quick_macro_set("key","super-up")

sueden:
    key(super-down)
    user.quick_macro_set("key","super-down")

