<user.find> it:
    edit.find()
    user.quick_macro_set("edit.find_next")
    
<user.find> that:
    edit.find(edit.selected_text())
    user.quick_macro_set("edit.find_next")

<user.find> neck:
    edit.find_next()
    user.quick_macro_set("edit.find_next")

skip whats left:
    edit.word_left()
    user.quick_macro_set("edit.word_left")

skip whats [right]:
    edit.word_right()
    user.quick_macro_set("edit.word_right")

tick left:
    edit.left()
    user.quick_macro_set("edit.left")

tick [right]:
    edit.right()
    user.quick_macro_set("edit.right")

north:
    edit.up()
    user.quick_macro_set("edit.up")

south:
    edit.down()
    user.quick_macro_set("edit.down")

<user.start>:
    edit.line_start()
    user.quick_macro_set("edit.line_end")

<user.end>:
    edit.line_end()
    user.quick_macro_set("edit.line_insert_down")

line <user.start>:
    edit.line_start()
    edit.line_start()
    user.quick_macro_set("edit.line_end")

[go] bottom:
    edit.file_end()
    user.quick_macro_set("edit.file_start")
    
[go] top:
    edit.file_start()
    user.quick_macro_set("edit.file_end")

[go] page down:
    edit.page_down()
    user.quick_macro_set("edit.page_down")


[go] page up:
    edit.page_up()
    user.quick_macro_set("edit.page_up")

# selecting
<user.select> line:
    edit.select_line()
    user.quick_macro_set("edit.copy")

<user.select> all:
    edit.select_all()
    user.quick_macro_set("edit.copy")

<user.select> left:
    edit.extend_left()
    user.quick_macro_set("edit.extend_left")

<user.select> [right]:
    edit.extend_right()
    user.quick_macro_set("edit.extend_right")

<user.select> up:
    edit.extend_line_up()
    user.quick_macro_set("edit.extend_line_up")

<user.select> down:
    edit.extend_line_down()
    user.quick_macro_set("edit.extend_line_down")

<user.select> here:
    edit.select_word()
    user.quick_macro_set("edit.copy")

<user.select> whats left:
    edit.extend_word_left()
    user.quick_macro_set("edit.extend_word_left")

<user.select> whats [right]:
    edit.extend_word_right()
    user.quick_macro_set("edit.extend_word_right")

<user.select> <user.start>:
    edit.extend_line_start()
    user.quick_macro_set("edit.copy")

<user.select> <user.end>:
    edit.extend_line_end()
    user.quick_macro_set("edit.copy")

<user.select> top:
    edit.extend_file_start()
    user.quick_macro_set("edit.copy")

<user.select> bottom:
    edit.extend_file_end()
    user.quick_macro_set("edit.copy")

# editing
in dent:
    edit.indent_more()
    user.quick_macro_set("edit.indent_more")

out dent:
    edit.indent_less()
    user.quick_macro_set("edit.indent_less")

# deleting
<user.delete> line:
    edit.delete_line()
    user.quick_macro_set("edit.delete_line")

<user.delete> left:
    key(backspace)
    user.quick_macro_set("edit.delete_line")

<user.delete> [right]:
    key(delete)
    user.quick_macro_set("key","delete")


<user.delete> up:
    edit.extend_line_up()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_line_up#edit.delete")

<user.delete> down:
    edit.extend_line_down()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_line_down#edit.delete")

<user.delete> here:
    edit.delete_word()
    user.quick_macro_set("edit.undo")

<user.delete> whats left:
    edit.extend_word_left()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_word_left#edit.delete")

<user.delete> whats [right]:
    edit.extend_word_right()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_word_right#edit.delete")

<user.delete> <user.start>:
    edit.extend_line_start()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.delete> <user.end>:
    edit.extend_line_end()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.delete> top:
    edit.extend_file_start()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.delete> bottom:
    edit.extend_file_end()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.delete> all:
    edit.select_all()
    edit.delete()
    user.quick_macro_set("edit.undo")

#<user.copy> commands
<user.copy> all:
    edit.select_all()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.copy> here:
    edit.select_word()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.copy> whats left:
    edit.extend_word_left()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.copy> whats [right]:
    edit.extend_word_right()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.copy> line:
    edit.select_line()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.copy> <user.end>:
	edit.extend_line_end()
	edit.copy()
	user.quick_macro_set("edit.paste")

<user.copy> <user.start>:
	edit.extend_line_start()
	edit.copy()
	user.quick_macro_set("edit.paste")

#cut commands
<user.cut> all:
    edit.select_all()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.cut> here:
    edit.select_word()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.cut> whats left:
    edit.extend_word_left()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.cut> whats [right]:
    edit.extend_word_right()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.cut> line:
    edit.select_line()
    edit.cut()
    user.quick_macro_set("edit.paste")

