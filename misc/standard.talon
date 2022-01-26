(jay son | jason ): "json"
#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
word (regex | rejex): "regex"
word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell".

zoom [in]: 
	edit.zoom_in()
	user.quick_macro_set("edit.zoom_in")

zoom out: 
	edit.zoom_out()
	user.quick_macro_set("edit.zoom_out")

(page | scroll) up: 
	key(pgup)
	user.quick_macro_set("key","pgup")

(page | scroll) down: 
	key(pgdown)
	user.quick_macro_set("key","pgdown")

push end:
	edit.extend_line_end()
	edit.copy()
	user.quick_macro_set("edit.paste")

push start:
	edit.extend_line_start()
	edit.copy()
	user.quick_macro_set("edit.paste")
		
		
push: 
	edit.copy()
	user.quick_macro_set("edit.paste")

push all:
	edit.select_all() 
	edit.copy()
	user.quick_macro_set("edit.paste")

cut: 
	edit.cut()
	user.quick_macro_set("edit.paste")


pull: 
	edit.paste()
	user.quick_macro_set("edit.paste")

push match: 
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

(wipe | junk): 
	key(backspace)
	user.quick_macro_set("key","backspace")

(pad | padding): 
	insert("  ") 
	key(left)

slap: edit.line_insert_down()	
