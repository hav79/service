create sequence hibernate_sequence start 1 increment 1;

create table device (
    id int8 not null,
    device_model varchar(255),
    serial_number varchar(255) not null,
    place varchar(255),
    primary key (id)
);

create table repair_card (
    id int8 not null,
    end_date date,
    problem varchar(255),
    solution varchar(255),
    closed boolean not null,
    printed boolean not null,
    sent boolean not null,
    signed boolean not null,
    start_date date not null,
    device_id int8,
    primary key (id)
 );

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table repair_card
  add constraint repair_card_device_fk
  foreign key (device_id) references device;

alter table user_role
  add constraint user_role_user_fk
  foreign key (user_id) references usr;
