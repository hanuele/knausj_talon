tag: user.splits
-
split right: user.split_window_right()
split left: user.split_window_left()
split down: user.split_window_down()
split up: user.split_window_up()
split (vertically | vertical): user.split_window_vertically()
split (horizontally | horizontal): user.split_window_horizontally()
split flip: user.split_flip()
split window: user.split_window()
split clear: user.split_clear()
split clear all: user.split_clear_all()
split <user.term_navigate_right>: user.split_next()
split <user.term_navigate_left>: user.split_last()
<user.term_go> split <number>: user.split_number(number)
