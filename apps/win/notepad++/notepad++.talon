app: notepad_plus_plus
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.tabs
#tag(): user.telector_ui_underline
settings():
    user.telector_enable_marker_ui_offset  = 1
	
action(app.tab_previous):
	key(ctrl-pageup)
action(app.tab_next):
	key(ctrl-pagedown)
action(code.toggle_comment):
	key(ctrl-q)
action(edit.line_clone):
	key(ctrl-d)
action(edit.line_swap_up):
	key(ctrl-shift-up)
action(edit.line_swap_down):
	key(ctrl-shift-down)
action(edit.indent_more): key(tab)
action(edit.indent_less): key(shift-tab)

# define some voice commands
go <user.number_string>$:
	key(ctrl-g)
	insert(number_string)
	key(enter)
	