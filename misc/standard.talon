mode: command
mode: mixed
-

(jay son | jason ): "json"
(http | htp): "http"
word regex: "regex"
word queue: "queue"
word no: "NULL"

zoom [in]: 
	edit.zoom_in()
	user.quick_macro_set("edit.zoom_in")

zoom out: 
	edit.zoom_out()
	user.quick_macro_set("edit.zoom_out")

page up: 
	key(pgup)
	user.quick_macro_set("key","pgup")

page down: 
	key(pgdown)
	user.quick_macro_set("key","pgdown")

<user.term_copy> <user.term_end>:
	edit.extend_line_end()
	edit.copy()
	user.quick_macro_set("edit.paste")

<user.term_copy> <user.term_start>:
	edit.extend_line_start()
	edit.copy()
	user.quick_macro_set("edit.paste")
		
<user.term_copy>: 
	edit.copy()
	user.quick_macro_set("edit.paste")

<user.term_copy> all:
    edit.select_all()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.term_cut>: 
	edit.cut()
	user.quick_macro_set("edit.paste")

<user.term_paste>: 
	edit.paste()
	user.quick_macro_set("edit.paste")

<user.term_paste> match: 
	edit.paste_match_style()
	user.quick_macro_set("edit.paste_match_style")

disk: edit.save()
disk all: edit.save_all()

(revert|virt|nope): 
	edit.undo()
	user.quick_macro_set("edit.undo")

(again|gen): 
	edit.redo()
	user.quick_macro_set("edit.redo")

(wipe|junk): 
	key(backspace)
	user.quick_macro_set("key","backspace")

(pad|padding): 
	insert("  ") 
	key(left)

slap: edit.line_insert_down()
