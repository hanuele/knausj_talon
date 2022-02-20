mode: command
mode: mixed
-

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

(zoom [in]|vergrößern): 
	edit.zoom_in()
	user.quick_macro_set("edit.zoom_in")

(zoom out|verkleinern): 
	edit.zoom_out()
	user.quick_macro_set("edit.zoom_out")

(page up|Seite hoch): 
	key(pgup)
	user.quick_macro_set("key","pgup")

(page down|Seite runter): 
	key(pgdown)
	user.quick_macro_set("key","pgdown")

(push end|zum Ende merken):
	edit.extend_line_end()
	edit.copy()
	user.quick_macro_set("edit.paste")

(push start|zum Anfang merken):
	edit.extend_line_start()
	edit.copy()
	user.quick_macro_set("edit.paste")
		
		
(push|merken): 
	edit.copy()
	user.quick_macro_set("edit.paste")

(push all|alles merken):
	edit.select_all() 
	edit.copy()
	user.quick_macro_set("edit.paste")

(cut|ausschneiden): 
	edit.cut()
	user.quick_macro_set("edit.paste")


(drop|einfügen): 
	edit.paste()
	user.quick_macro_set("edit.paste")

(push match|formattiert einfügen): 
	edit.paste_match_style()
	user.quick_macro_set("edit.paste_match_style")

(disk|speichern): edit.save()
(disk all|alles speichern): edit.save_all()

(revert|virt|nope|ungewollt|rüchgängig): 
	edit.undo()
	user.quick_macro_set("edit.undo")

(again|gen|wiederholen): 
	edit.redo()
	user.quick_macro_set("edit.redo")

(wipe | junk|weg): 
	key(backspace)
	user.quick_macro_set("key","backspace")

(pad | padding|einrücken): 
	insert("  ") 
	key(left)

(slap|Zeilenwechsel): edit.line_insert_down()
