tag: user.tabs
-

tab (open|new): 
	app.tab_open()

tab last: 
	app.tab_previous()
    user.quick_macro_set("app.tab_previous")

tab (next|neck): 
	app.tab_next()
    user.quick_macro_set("app.tab_next")

tab close: 
	app.tab_close()
    user.quick_macro_set("app.tab_close")

tab (restore|reopen): app.tab_reopen()



[go] tab <number>: user.tab_jump(number)
[go] tab final: user.tab_final()
tab duplicate: user.tab_duplicate()
