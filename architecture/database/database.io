enum media_type
{
  image
  video
  audio
}

enum chat_type
{
  chat
  dialog
}

enum reliationship_type
{
  friend
  subscribe
  love
}

Table users {
  id varchar [primary key]
  login varchar
  password varchar
  description varchar
  created_at timestamp
  first_name varchar
  last_name varchar
  photo binary
  city varchar
  age uint8
  interesing varchar
}

Table reliationship
{
  sender_id varchar
  receiver_id varchar
  type reliationship_type
  confirmed boolean
}

Table posts {
  id varchar [primary key]
  title varchar
  body text [note: 'Content of the post']
  user_id varchar
  status varchar
  created_at timestamp
  media array[media_id]
}

Table comments
{
  id varchar [primary key]
  post_id varchar
  content varchar
  user_id varchar
}

Table posts_data
{
  post_id varchar
  views integer
  likes integer
}

Table hashtags
{
  id varchar [primary key]
  name varchar
}

Table attached_hashtags
{
  id varchar [primary key]
  hashtag_id varchar
  post_id varchar
}

Table chats{
  id varchar [primary key]
  type chat_type
  members array[user_id]
  last_message_timestamp timestamp
  last_messages array[messages_id]
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

Table media
{
  id varchar [primary key]
  url varchar
  type media_type
}

Ref: posts.user_id > users.id // many-to-one

Ref: messages.sender_id > users.id

Ref: messages.chat_id > chats.id

Ref: reliationship.sender_id > users.id

Ref: reliationship.receiver_id > users.id

Ref: posts_metadata.post_id > posts.id

Ref: comments.post_id > posts.id

Ref: comments.user_id > users.id

Ref: attached_hashtags.hashtag_id > hashtags.id

Ref: attached_hashtags.post_id > posts.id

Ref: user_chat.user_id > users.id

Ref: user_chat.chat_id > chats.id
