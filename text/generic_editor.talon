<user.term_find> it:
    edit.find()
    user.quick_macro_set("edit.find_next")
    
<user.term_find> that:
    edit.find(edit.selected_text())
    user.quick_macro_set("edit.find_next")

<user.term_find> <user.term_navigate_right>:
    edit.find_next()
    user.quick_macro_set("edit.find_next")

skip <user.term_word_navigate> <user.term_navigate_left>:
    edit.word_left()
    user.quick_macro_set("edit.word_left")

skip <user.term_word_navigate> [<user.term_navigate_right>]:
    edit.word_right()
    user.quick_macro_set("edit.word_right")

tick <user.term_navigate_left>:
    edit.left()
    user.quick_macro_set("edit.left")

tick [<user.term_navigate_right>]:
    edit.right()
    user.quick_macro_set("edit.right")

north:
    edit.up()
    user.quick_macro_set("edit.up")

south:
    edit.down()
    user.quick_macro_set("edit.down")

<user.term_start>:
    edit.line_start()
    user.quick_macro_set("edit.line_end")

<user.term_end>:
    edit.line_end()
    user.quick_macro_set("edit.line_insert_down")

line <user.term_start>:
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
<user.term_select> line:
    edit.select_line()
    user.quick_macro_set("edit.copy")

<user.term_select> all:
    edit.select_all()
    user.quick_macro_set("edit.copy")

<user.term_select> <user.term_navigate_left>:
    edit.extend_left()
    user.quick_macro_set("edit.extend_left")

<user.term_select> [<user.term_navigate_right>]:
    edit.extend_right()
    user.quick_macro_set("edit.extend_right")

<user.term_select> up:
    edit.extend_line_up()
    user.quick_macro_set("edit.extend_line_up")

<user.term_select> down:
    edit.extend_line_down()
    user.quick_macro_set("edit.extend_line_down")

<user.term_select> here:
    edit.select_word()
    user.quick_macro_set("edit.copy")

<user.term_select> <user.term_word_navigate> <user.term_navigate_left>:
    edit.extend_word_left()
    user.quick_macro_set("edit.extend_word_left") 

<user.term_select> <user.term_word_navigate> [<user.term_navigate_right>]:
    edit.extend_word_right()
    user.quick_macro_set("edit.extend_word_right")

<user.term_select> <user.term_start>:
    edit.extend_line_start()
    user.quick_macro_set("edit.copy")

<user.term_select> <user.term_end>:
    edit.extend_line_end()
    user.quick_macro_set("edit.copy")

<user.term_select> top:
    edit.extend_file_start()
    user.quick_macro_set("edit.copy")

<user.term_select> bottom:
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
<user.term_delete> line:
    edit.delete_line()
    user.quick_macro_set("edit.delete_line")

<user.term_delete> <user.term_navigate_left>:
    key(backspace)
    user.quick_macro_set("edit.delete_line")

<user.term_delete> [<user.term_navigate_right>]:
    key(delete)
    user.quick_macro_set("key","delete")


<user.term_delete> up:
    edit.extend_line_up()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_line_up#edit.delete")

<user.term_delete> down:
    edit.extend_line_down()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_line_down#edit.delete")

<user.term_delete> here:
    edit.delete_word()
    user.quick_macro_set("edit.undo")

<user.term_delete> <user.term_word_navigate> <user.term_navigate_left>:
    edit.extend_word_left()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_word_left#edit.delete")

<user.term_delete> <user.term_word_navigate> [<user.term_navigate_right>]:
    edit.extend_word_right()
    edit.delete()
    user.quick_macro_set_chained("edit.extend_word_right#edit.delete")

<user.term_delete> <user.term_start>:
    edit.extend_line_start()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.term_delete> <user.term_end>:
    edit.extend_line_end()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.term_delete> top:
    edit.extend_file_start()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.term_delete> bottom:
    edit.extend_file_end()
    edit.delete()
    user.quick_macro_set("edit.undo")

<user.term_delete> all:
    edit.select_all()
    edit.delete()
    user.quick_macro_set("edit.undo")

#<user.term_copy> commands
<user.term_copy> all:
    edit.select_all()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.term_copy> here:
    edit.select_word()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.term_copy> <user.term_word_navigate> <user.term_navigate_left>:
    edit.extend_word_left()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.term_copy> <user.term_word_navigate> [<user.term_navigate_right>]:
    edit.extend_word_right()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.term_copy> line:
    edit.select_line()
    edit.copy()
    user.quick_macro_set("edit.paste")

<user.term_copy> <user.term_end>:
	edit.extend_line_end()
	edit.copy()
	user.quick_macro_set("edit.paste")

<user.term_copy> <user.term_start>:
	edit.extend_line_start()
	edit.copy()
	user.quick_macro_set("edit.paste")

#cut commands
<user.term_cut> all:
    edit.select_all()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.term_cut> here:
    edit.select_word()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.term_cut> <user.term_word_navigate> <user.term_navigate_left>:
    edit.extend_word_left()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.term_cut> <user.term_word_navigate> [<user.term_navigate_right>]:
    edit.extend_word_right()
    edit.cut()
    user.quick_macro_set("edit.paste")

<user.term_cut> line:
    edit.select_line()
    edit.cut()
    user.quick_macro_set("edit.paste")

