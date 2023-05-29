// Replication:
// - master-slave (two async)
// - replication factor 3
//
// Sharding:
// - key based by id

enum media_type
{
  image
  video
  audio
}

Table media
{
  id varchar [primary key]
  object binary
  type media_type
}