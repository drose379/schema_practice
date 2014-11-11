create table `phone`(
	`phone` varchar(15) primary key
)engine=innodb charset=utf8;

create table `hobbies` (
	`id` bigint primary key,
	`hobbie` bigint
)engine=innodb charset=utf8;

create table `person` (
	`id` serial primary key,
	`name` varchar(50),
	`phone` varchar(16),
	foreign key(`phone`) references `phone`(`phone`)
)engine=innodb charset=utf8;

create table `person_hobbies` (
	`person` bigint unsigned not null,
	`hobbies` bigint,
	primary key (`person`,`hobbies`),
	foreign key (`person`) references `person`(`id`),
	foreign key (`hobbies`) references `hobbies`(`id`)
)engine=innodb charset=utf8;