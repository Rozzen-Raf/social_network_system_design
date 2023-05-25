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