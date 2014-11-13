create table `phone`(
	`phone` varchar(15) primary key
)engine=innodb charset=utf8;

create table `hobbies` (
	`hobby` varchar(140) primary key
)engine=innodb charset=utf8;

create table `address` (
	`id` bigint primary key,
	`address` varchar(65)
)engine=innodb charset=utf8;

create table `person` (
	`id` serial primary key,
	`name` varchar(50),
	`phone` varchar(15),
	foreign key(`phone`) references `phone`(`phone`)
)engine=innodb charset=utf8;

create table `person_hobbies` (
	`person` bigint unsigned not null,
	`hobbies` varchar(140),
	primary key (`person`,`hobbies`),
	foreign key (`person`) references `person`(`id`),
	foreign key (`hobbies`) references `hobbies`(`hobby`)
)engine=innodb charset=utf8;

create table `person_address` (
	`person` bigint unsigned not null,
	`address` bigint,
	primary key (`person`,`address`),
	foreign key (`person`) references `person`(`id`),
	foreign key (`address`) references `address`(`id`)
)engine=innodb charset=utf8;