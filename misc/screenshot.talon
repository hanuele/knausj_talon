mode: command
mode: mixed
-

^<user.term_select> screen$:                       user.screenshot()
^<user.term_select> screen <number_small>$:        user.screenshot(number_small)
^<user.term_select> window$:                       user.screenshot_window()
^<user.term_select> selection$:                    user.screenshot_selection()
^<user.term_select> settings$:                     user.screenshot_settings()
^<user.term_select> screen clip$:                  user.screenshot_clipboard()
^<user.term_select> screen <number_small> clip$:   user.screenshot_clipboard(number_small)
^<user.term_select> window clip$:                  user.screenshot_window_clipboard()
