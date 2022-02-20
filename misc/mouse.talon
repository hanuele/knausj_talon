
(control mouse|Mauskontrollmodus): user.mouse_toggle_control_mouse()
(zoom mouse|Mauszoommodus): user.mouse_toggle_zoom_mouse()
(camera overlay|Kameraüberblendung): user.mouse_toggle_camera_overlay()
(run calibration|Maus kalibrieren): user.mouse_calibrate()	
(pick|Auswahl): 
	mouse_click(0)
	# close the mouse grid if open
	user.grid_close()
    # End any open drags
	# Touch automatically ends left drags so this is for right drags specifically
	user.mouse_drag_end()

(righty|Rechtsklick):
	mouse_click(1)
	# close the mouse grid if open
	user.grid_close()
	user.quick_macro_set("mouse_click",0)
(midclick|open that|Mittelklick): 
	mouse_click(2)
	# close the mouse grid
	user.grid_close()
	user.quick_macro_set("mouse_click",2)

#see keys.py for modifiers.
#defaults
#command
#control
#option = alt
#shift
#super = windows key
<user.modifiers> (pick|Auswahl): 
	key("{modifiers}:down")
	mouse_click(0)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()
<user.modifiers> (righty|Rechtsklick): 
	key("{modifiers}:down")
	mouse_click(1)
	key("{modifiers}:up")
	# close the mouse grid
	user.grid_close()
(dubclick | duke|Doppelklick): 
	mouse_click()
	mouse_click()
	# close the mouse grid
	user.grid_close()
(tripclick | triplick|Dreifachklick): 
	mouse_click()
	mouse_click()
	mouse_click()
	# close the mouse grid
	user.grid_close()
(left drag | drag | ziehen):
	user.mouse_drag(0)
	# close the mouse grid
	user.grid_close()
(wheel down| rad runter): 
	user.mouse_scroll_down()
	user.quick_macro_set("user.mouse_scroll_down",3)

(right drag | righty drag|rechts ziehen):
	user.mouse_drag(1)
	# close the mouse grid
	user.grid_close()
(dragon | drag end | loslassen):
    user.mouse_drag_end()

(wheel down here|rad hier runter):
    user.mouse_move_center_active_window()
    user.mouse_scroll_down()
(wheel tiny [down]|ein bisschen runter): user.mouse_scroll_down(0.2)
(wheel tiny [down] here|hier ein bisschen runter):
    user.mouse_move_center_active_window()
    user.mouse_scroll_down(0.2)
(wheel downer|Rad tiefer): user.mouse_scroll_down_continuous()
(wheel downer here|Rad hier tiefer):
    user.mouse_move_center_active_window()
    user.mouse_scroll_down_continuous()
(wheel up|Rad hoch): 
	user.mouse_scroll_up()
	user.quick_macro_set("user.mouse_scroll_up",3)

(wheel up here|Rad hier hoch):
    user.mouse_move_center_active_window()
    user.mouse_scroll_up()
(wheel tiny up|ein bisschen hoch): user.mouse_scroll_up(0.2)
(wheel tiny up here|hier ein bisschen hoch):
    user.mouse_move_center_active_window()
    user.mouse_scroll_up(0.2)
(wheel upper|Rad höher): user.mouse_scroll_up_continuous()
(wheel upper here|Rad hier höher):
    user.mouse_move_center_active_window()
    user.mouse_scroll_up_continuous()
(wheel gaze|Radstarre): user.mouse_gaze_scroll()
(wheel gaze here|hier Radstarre):
    user.mouse_move_center_active_window()
    user.mouse_gaze_scroll()
(wheel stop|Rad stop): user.mouse_scroll_stop()
(wheel stop here|Rad stop hier):
    user.mouse_move_center_active_window()
    user.mouse_scroll_stop()
(wheel left|Rad links): user.mouse_scroll_left()
(wheel left here|Rad hier links):
    user.mouse_move_center_active_window()
    user.mouse_scroll_left()
(wheel tiny left|ein bisschen links): user.mouse_scroll_left(0.5)
(wheel tiny left here|hier ein bisschen links):
    user.mouse_move_center_active_window()
    user.mouse_scroll_left(0.5)
(wheel right|Rad rechts): user.mouse_scroll_right()
(wheel right here|Rad hier rechts):
    user.mouse_move_center_active_window()
    user.mouse_scroll_right()
(wheel tiny right|ein bisschen rechts): user.mouse_scroll_right(0.5)
(wheel tiny right here|hier ein bisschen rechts):
    user.mouse_move_center_active_window()
    user.mouse_scroll_right(0.5)
(copy mouse position|merke Mausposition): user.copy_mouse_position()

(center mouse|Maus mittig): user.mouse_move_center_active_window()