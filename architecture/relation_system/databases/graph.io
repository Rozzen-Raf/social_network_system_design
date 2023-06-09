// Replication:
// - master-slave (async)
// - replication factor 2

enum reliationship_type
{
  friend
  subscribe
  love
}

Table reliationship
{
  sender_id varchar
  receiver_id varchar
  type reliationship_type [note: 'graph edge']
}
