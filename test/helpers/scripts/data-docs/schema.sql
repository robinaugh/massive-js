CREATE SCHEMA public;

create table docs(
  id serial primary key,
  body jsonb not null,
  search tsvector
);


insert into docs(body)
values('{"title":"Document 1","price":22,"description":"lorem ipsum etc","is_good":true,"created_at":"2015-03-04T09:43:41.643Z"}'),
('{"title":"Document 2","price":18,"description":"Macaroni and Cheese","is_good":true,"created_at":"2015-03-04T09:43:41.643Z"}'),
('{"title":"Document 3","price":18,"description":"something or other","is_good":true,"created_at":"2015-03-04T09:43:41.643Z"}'),
('{"title":"Something Else","price":6,"description":"Two buddies fighting crime","is_good":false,"created_at":"1977-03-04T09:43:41.643Z","studios": [{"name" : "Warner"}, {"name" : "Universal"}]}');