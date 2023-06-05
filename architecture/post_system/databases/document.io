// Replication:
// master-slave (one sync + async)
// replication factor 3
//
// Sharding:
// 	posts, hashtags:
//		- key based by id
//	comments:
//		- key based by post_id
//	

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

Table hashtags
{
  id varchar [primary key]
  name varchar
}
