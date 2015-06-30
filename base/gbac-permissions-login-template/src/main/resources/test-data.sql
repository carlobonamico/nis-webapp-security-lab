INSERT INTO users(id,username,password,enabled)
VALUES (1,'john','john', TRUE);
INSERT INTO users(id,username,password,enabled)
VALUES (2,'alex','alex', TRUE);

INSERT INTO groups(id,group_name)
VALUES (1,'Users');
INSERT INTO groups(id,group_name)
VALUES (2,'Administrators');

INSERT INTO roles(id,role_name)
VALUES (1,'ROLE_USER');
INSERT INTO roles (id,role_name)
VALUES (2,'ROLE_ADMIN');

INSERT INTO permissions(id,permission_name)
VALUES (1,'access');
INSERT INTO permissions(id,permission_name)
VALUES (2,'administration');
INSERT INTO permissions(id,permission_name)
VALUES (3,'readConfiguration');
INSERT INTO permissions(id,permission_name)
VALUES (4,'writeConfiguration');

INSERT INTO users_groups(users_id,groups_id)
VALUES (1,2);
INSERT INTO users_groups(users_id,groups_id)
VALUES (2,1);

INSERT INTO role_groups(roles_id,groups_id)
VALUES (1,1);
INSERT INTO role_groups(roles_id,groups_id)
VALUES (1,2);
INSERT INTO role_groups(roles_id,groups_id)
VALUES (2,2);

INSERT INTO role_permissions(roles_id,permissions_id)
VALUES (1,1);
INSERT INTO role_permissions(roles_id,permissions_id)
VALUES (1,3);
INSERT INTO role_permissions(roles_id,permissions_id)
VALUES (2,2);
INSERT INTO role_permissions(roles_id,permissions_id)
VALUES (2,4);
