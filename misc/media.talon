volume up: key(volup)
volume down: key(voldown)
set volume <number>: user.media_set_volume(number)

(volume|media) mute: key(mute)
song <user.term_navigate_right> : key(next)
song <user.term_navigate_left> : key(prev)
media (play | pause): user.play_pause()
