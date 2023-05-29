// Replication:
// master-slave (one sync + async)
// replication factor 3
//
// Sharding:
// 	users, posts, interesing, hashtags:
//		- key based by id
//	comments:
//		- key based by post_id
//	

Table users {
  id varchar [primary key]
  description varchar
  created_at timestamp
  first_name varchar
  last_name varchar
  photo_id media_id
  city varchar
  age uint8
  interesing array[interesing_id]
}

Table posts {
  id varchar [primary key]
  title varchar
  body text [note: 'Content of the post']
  user_id varchar
  status varchar
  created_at timestamp
  media array[media_id]
  hashtags array[hashtag_id]
}

Table interesing
{
  id varchar [primary key]
  name varchar
}

Table comments
{
  id varchar [primary key]
  post_id varchar
  content varchar
  user_id varchar
  reply_on_id varchar
}

Table hashtags
{
  id varchar [primary key]
  name varchar
}

Ref: posts.user_id > users.id 

Ref: comments.post_id > posts.id

Ref: comments.user_id > users.id

Ref: comments.reply_on_id > comments.id
