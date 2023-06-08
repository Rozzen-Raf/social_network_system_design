// Replication:
// master-slave (one sync + async)
// replication factor 3
//
// Sharding:
// 	users, interesing:
//		- key based by id

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

Table interesing
{
  id varchar [primary key]
  name varchar
}