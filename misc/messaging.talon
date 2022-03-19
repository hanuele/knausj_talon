tag: user.messaging
-
# Navigation
<user.term_navigate_left> (workspace | server): user.messaging_workspace_previous()
<user.term_navigate_right> (workspace | server): user.messaging_workspace_next()
channel: user.messaging_open_channel_picker()
channel <user.text>:
    user.messaging_open_channel_picker()
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
channel <user.term_navigate_left>: user.messaging_channel_previous()
channel <user.term_navigate_right>: user.messaging_channel_next()
([channel] unread <user.term_navigate_left> | <user.term_go> <user.term_navigate_left>): user.messaging_unread_previous()
([channel] unread <user.term_navigate_right> | <user.term_go> <user.term_navigate_right>): user.messaging_unread_next()
<user.term_go> <user.term_find>: user.messaging_open_search()
mark (all | workspace | server) read: user.messaging_mark_workspace_read()
mark channel read: user.messaging_mark_channel_read()
upload file: user.messaging_upload_file()