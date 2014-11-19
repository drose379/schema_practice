--testing schema--

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
	`hobby` varchar(140),
	primary key (`person`,`hobby`),
	foreign key (`person`) references `person`(`id`),
	foreign key (`hobby`) references `hobbies`(`hobby`)
)engine=innodb charset=utf8;

create table `person_address` (
	`person` bigint unsigned not null,
	`address` bigint,
	primary key (`person`,`address`),
	foreign key (`person`) references `person`(`id`),
	foreign key (`address`) references `address`(`id`)
)engine=innodb charset=utf8;

--insert statements--

insert into phone (phone) values ('5088016421');
insert into person (id,name,phone) values ('1','Dylan','5542236549');

--Getting address--
insert into address (id,address) values ('1','7 Long Street');
insert into person_address (person,address) values ('1','1');

--Getting Hobbies--
insert into hobbies (hobby) values ('Computer Programming');
insert into person_hobbies (person,hobby) values ('1','Computer Programming');


