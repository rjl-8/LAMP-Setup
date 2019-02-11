CREATE DATABASE plog;
USE plog;
CREATE TABLE item (
  item_id int unsigned not null auto_increment,
  desc varchar(20) not null,
  the_date datetime null,
  creation_date datetime not null,
  last_mod_date datetime not null,
  plog_id int null,
  constraint pk_example primary key (item_id)
);

CREATE TABLE join (
  join_id int unsigned not null auto_increment,
  item_id int not null,
  parent_id int not null,
  plog_id int null,
  plog_parent_id int null,
  creation_date datetime not null,
  constraint pk_example primary key (join_id)
);
