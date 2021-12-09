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

copy way right:
	edit.extend_line_end()
	edit.copy()
	user.quick_macro_set("edit.paste")

copy way left:
	edit.extend_line_start()
	edit.copy()
	user.quick_macro_set("edit.paste")
		
		
copy selected: 
	edit.copy()
	user.quick_macro_set("edit.paste")
	
cut selected: 
	edit.cut()
	user.quick_macro_set("edit.paste")


paste selected: 
	edit.paste()
	user.quick_macro_set("edit.paste")

paste match: 
	edit.paste_match_style()
	user.quick_macro_set("edit.paste_match_style")

disk: edit.save()
disk all: edit.save_all()

revert: 
	edit.undo()
	user.quick_macro_set("edit.undo")

again: 
	edit.redo()
	user.quick_macro_set("edit.redo")

(wipe | junk): 
	key(backspace)
	user.quick_macro_set("key","backspace")

(pad | padding): 
	insert("  ") 
	key(left)

slap: edit.line_insert_down()	
