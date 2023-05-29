// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - key based by post_id

Table posts_data
{
  post_id varchar
  views integer
  likes integer
}