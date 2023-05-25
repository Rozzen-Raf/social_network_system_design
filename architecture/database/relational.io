enum chat_type
{
  chat
  dialog
}

Table chats{
  id varchar [primary key]
  type chat_type
}

Table user_chat
{
  user_id varchar
  chat_id varchar
}

Table messages
{
  id varchar [primary key]
  sender_id varchar
  chat_id varchar
  content varchar
  send_timestamp timestamp
  read boolean
}

Table not_read_message
{
  message_id varchar [note: 'ID of the message that has not yet been read. As soon as one of the recipients reads it, the entry will be deleted.']
}

Ref: user_chat.chat_id > chats.id

Ref: messages.chat_id > chats.id

Ref: not_read_message.message_id > messages.id