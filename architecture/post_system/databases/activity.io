Table comments
{
  id varchar [primary key]
  post_id varchar
  content varchar
  user_id varchar
  reply_on_id varchar
}

Table likes
{
	id varchar [primary key]
	receiver_id varchar // comment or post
	user_id varchar 
}
