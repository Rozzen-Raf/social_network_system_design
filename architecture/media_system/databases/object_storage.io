// Replication:
// - master-slave (two async)
// - replication factor 3
//
// Sharding:
// - key based by id

Table media
{
  id varchar [primary key]
  object binary
  format varchar
}