experiment: anchor-file
mode: user.screenshare
-

settings(): 
    speech.record_all = 1
    speech.record_labels = 1

push id:
	key(esc c c)
	sleep(0.05)
	user.get_id(clip.text())

drop id$:
	user.go_id(clip.text())
	
push under$:
	mouse_click(0)
	mouse_click(0)
	edit.copy()

drop under$:
	mouse_click(0)
	mouse_click(0)
	edit.paste()

add hour stamp$:
	insert(user.time_format("%d.%m.%Y %H:%M:%S PLI: "))

todo <number> tag <user.text>$:
	edit.jump_line(number)
	sleep(0.05)
	edit.line_end()
	key(enter)
	insert(user.time_format("// #ToDo by Peter Linder %Y/%m/%d : {text}"))


keep on top$: 
	key(super-ctrl-t)

(deck neck | shuffle)$: 
	key(super-pagedown)

deck prev$:
	key(super-pageup)

splitt horizon$:
	key(super-ctrl-alt-5)

splitt base$:
	key(super-ctrl-alt-1)

splitt threefold$:
	key(super-ctrl-alt-3)

splitt second$:
	key(super-ctrl-alt-2)

splitt quad$:
	key(super-ctrl-alt-4)

sliver$:
	key(ctrl-shift-d)

go link$:
	key(ctrl-shift-b)

file search$:
	key(ctrl-shift-j)

silver$:
	key(super-ctrl-j)

clap$:
	key(super-ctrl-,)

settings$:
	key(super-ctrl-.)
open app$:
	key(super-ctrl-a)

todo$:
	key(super-ctrl-h)

crest$:
	key(super-ctrl-r)

translator$:
	key(super-ctrl-i)

memory$:
	key(super-ctrl-w)

meta$:
	key(super-ctrl-g)

local search$:
	key(ctrl-f)

show favourites$:
	key(ctrl-shift-b)

show collections$:
	key(ctrl-shift-y)

zoom in$:
	key(ctrl-+)

zoom out$:
	key(ctrl--)
	
reset zoom$:
	key(ctrl-0)
	
inspect element$:
	key(ctrl-shift-c)

dev mode$:
	key(ctrl-shift-)

(prep|prepare) doc entry$:
	key(esc c t)
	sleep(0.05)
	user.prepareDocEntry(clip.text())

link$:
	key(esc shift-f)
	
set global <user.letter>$:
	key(esc m)
	sleep(0.05)
	insert(letter)
	key(enter)

go global <user.letter>$:
	key(esc g)
	sleep(0.05)
	insert(letter)
	key(enter)

westen$:
    key(super-right)

osten$:
    key(super-left)

norden$:
    key(super-up)

sueden$:
    key(super-down)

(minimize | mini)$: 
    key(alt-space)
    sleep(0.05)
    key(n)

    #app.window_hide()
(maximize | maxi)$: 
    key(alt-space)
    sleep(0.05)
    key(x)    
    #user.maximize()

normal$:
    key(alt-space)
    sleep(0.05)
    key(r)

open in <user.navigationurls>$:
    key(esc c c)
    sleep(0.05)
    uuid = user.get_objectId(clip.text())
    sleep(0.05)
    user.open_website("{navigationurls}{uuid}")

# Jump to object Id in selected CrossLoom application instance.
seek in <user.navigationurls>$:
    uuid = edit.selected_text()
    sleep(0.05)
    user.open_website("{navigationurls}{uuid}")

seek clip in <user.navigationurls>$:
    uuid = clip.text()
    sleep(0.05)
    user.open_website("{navigationurls}{uuid}")

my umt user id$:
    "c8555f79-ef0d-44d9-8659-788b53eaf9d7"

go to wasp ticket list$:  user.open_website("https://nordex.sharepoint.com/:x:/r/sites/WS-01514/wasp/_layouts/15/Doc.aspx?sourcedoc=%7B502097F4-77AA-4A3F-B633-A0377AE38503%7D&file=Test_Matrix_WASP_UMT_PROD_System.xlsx&action=default&mobileredirect=true")
go to wasp open issue list$:  user.open_website("https://nordex.sharepoint.com/:x:/r/sites/WS-01514/wasp/_layouts/15/Doc.aspx?sourcedoc=%7B493B08FB-578E-4B30-BD32-1B3F5381189C%7D&file=Tasks%20and%20Issues%20WASP-Project.xlsx&action=default&mobileredirect=true")
go to nordex vpn ticket$: user.open_website("http://helpdesk/OTWG/Login.aspx?id=8721789&singleton=3&tzo=-60&validate=637793905296977373")

global search$:
	key(ctrl-shift->)
	

global search that$:
	user.global_search_text(edit.selected_text())
	
		
global search this <user.text>$: 
	user.global_search_text(text)
	

global search id$: 
	key(esc c c)
	sleep(0.05)
	user.get_id(clip.text())
	sleep(0.05)
	user.global_search_text(clip.text())
	

global search clip$:
	user.get_id(clip.text())
	sleep(0.1)
	key(esc)
	sleep(0.05)
	user.global_search_text(clip.text())
	


root$: 
	insert('00000000-0000-0000-0000-000000000000')

save test$:
	key(ctrl-.)
	

find prev$:
	key(ctrl-shift-g)

find clip$:
	key(ctrl-f)
	sleep(0.05)
	key(ctrl-v)
	sleep(0.05)
	key(enter)
	
	

find unique$:
	key(ctrl-f)	
	insert('/\\b[0-9a-fA-F]{{8}}\\b-[0-9a-fA-F]{{4}}-[0-9a-fA-F]{{4}}-[0-9a-fA-F]{{4}}-\\b[0-9a-fA-F]{{12}}\\b/')
	key(enter)
	

find function$:
	user.find_function(edit.selected_text())

find script$:
	key(ctrl-f)	
	insert('<script>')
	key(enter)
	
	

find this <user.text>$: 
	edit.find(text)
	
	
replace one$:
	key(ctrl-shift-f)

replace all$:
	key(ctrl-shift-r)

replace that$:
	key(ctrl-shift-r)
	insert(edit.selected_text())
	
follow that$:
	key(ctrl-shift-a)

hunt$:
	user.go_id(edit.selected_text())
	
make pretty$:
	key(ctrl-a shift-tab)
	

go to <user.navigationurls>$:
    uuid = edit.selected_text()
    user.open_website("{navigationurls}00000000-0000-0000-0000-000000000000")


cheat dev portal$:
    user.open_website("https://devwscceu01.uma-soft.ch/view?x=y")

crack dev portal$:
    key(ctrl-l)
    "https://devwscceu01.uma-soft.ch/view/app/18027c26-f8c8-4ff3-8875-119e480336e6/object/00000000-0000-0000-0000-000000000000"
    key(enter)

back to <user.text>$:
    key(esc c c)
	sleep(0.05)
    user.open_website(user.get_path_includingWord(clip.text(), text))

(prep|prepare) change set$:
    user.open_website("https://de.3txpert.com/SIAM3T/view/app/984254af-5199-43cc-a00b-96bc16d385c8/object/a6880ac5-b45e-44fa-a387-938949db34c6")

drowse [<phrase>]$: 
    user.sleep_all()
    user.hud_add_log('command', 'Asleep')

drowse <phrase> resume$: skip()

parrot(pop):
    mouse_click(0)

parrot(palate_click): 
    user.quick_macro_run()

