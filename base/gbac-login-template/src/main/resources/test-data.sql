INSERT INTO users(username,password,enabled)
VALUES ('john','john', TRUE);
INSERT INTO users(username,password,enabled)
VALUES ('alex','alex', TRUE);

-----
-- Create the Groups
insert into groups(group_name) values ('Users');
insert into groups(group_name) values ('Administrators');

-----
-- Map the Groups to Roles
insert into group_authorities(group_id, authority) select id,'ROLE_USER' from groups where group_name='Users';
-- Administrators are both a ROLE_USER and ROLE_ADMIN
insert into group_authorities(group_id, authority) select id,'ROLE_USER' from groups where group_name='Administrators';
insert into group_authorities(group_id, authority) select id,'ROLE_ADMIN' from groups where group_name='Administrators';

-----
-- Map the users to Groups
insert into group_members(group_id, username) select id,'alex' from groups where group_name='Users';
insert into group_members(group_id, username) select id,'john' from groups where group_name='Administrators';
insert into group_members(group_id, username) select id,'john' from groups where group_name='Users';