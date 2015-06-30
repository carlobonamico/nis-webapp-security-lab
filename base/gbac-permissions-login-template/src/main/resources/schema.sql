create table users(
    id integer not null primary key,
    username varchar_ignorecase(100) not null,
    password varchar_ignorecase(100) not null,
    enabled boolean not null
);

create table groups (
    id integer not null primary key,
    group_name varchar_ignorecase(50) not null
);

create table roles(
  id integer not null primary key,
  role_name varchar(100) not null
);

create table permissions(
  id integer not null primary key,
  permission_name varchar(100) not null
);

create table role_groups(
  roles_id integer not null,
  groups_id integer not null
);

create table users_groups(
  users_id integer not null,
  groups_id integer not null
);

create table role_permissions(
  roles_id integer not null,
  permissions_id integer not null
);