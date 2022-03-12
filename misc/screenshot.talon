mode: command
mode: mixed
-

^<user.select> screen$:                       user.screenshot()
^<user.select> screen <number_small>$:        user.screenshot(number_small)
^<user.select> window$:                       user.screenshot_window()
^<user.select> selection$:                    user.screenshot_selection()
^<user.select> settings$:                     user.screenshot_settings()
^<user.select> screen clip$:                  user.screenshot_clipboard()
^<user.select> screen <number_small> clip$:   user.screenshot_clipboard(number_small)
^<user.select> window clip$:                  user.screenshot_window_clipboard()