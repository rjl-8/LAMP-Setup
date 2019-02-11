CREATE DATABASE plog;
USE plog;

CREATE TABLE items (
  item_id int unsigned not null auto_increment,
  description varchar(20) not null,
  datestamp datetime null,
  sort_idx int null,
  last_mod_date datetime not null default now(),
  plog_pk int null,
  plog_parent_pk int null,
  constraint pk_example primary key (item_id)
);

CREATE TABLE joins (
  join_id int unsigned not null auto_increment,
  item_id int not null,
  parent_id int not null,
  last_mod_date datetime not null default now(),
  constraint pk_example primary key (join_id)
);
