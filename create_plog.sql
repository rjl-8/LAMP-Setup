CREATE DATABASE plog;
USE plog;
CREATE TABLE item (
  item_id int unsigned not null auto_increment,
  desc varchar(20) not null,
  the_date datetime not null,
  creation_date datetime not null,
  last_mod_date datetime not null,
  constraint pk_example primary key (item_id)
);

CREATE TABLE join (
  join_id int unsigned not null auto_increment,
  item_id int not null,
  parent_id int not null,
  creation_date datetime not null,
  constraint pk_example primary key (join_id)
);
