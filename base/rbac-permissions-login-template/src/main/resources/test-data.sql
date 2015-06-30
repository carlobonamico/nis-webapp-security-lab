INSERT INTO users(id,username,password,enabled)
VALUES (1,'john','john', TRUE);
INSERT INTO users(id,username,password,enabled)
VALUES (2,'alex','alex', TRUE);

INSERT INTO roles(id,role_name)
VALUES (1,'ROLE_USER');
INSERT INTO roles (id,role_name)
VALUES (2,'ROLE_ADMIN');

INSERT INTO permissions(id,permission_name)
 VALUES (1,'access');
 INSERT INTO permissions(id,permission_name)
 VALUES (2,'administration');

INSERT INTO role_users(roles_id,users_id)
VALUES (1,2);
INSERT INTO role_users(roles_id,users_id)
VALUES (2,1);

INSERT INTO role_permissions(roles_id,permissions_id)
VALUES (1,1);
INSERT INTO role_permissions(roles_id,permissions_id)
VALUES (2,1);
INSERT INTO role_permissions(roles_id,permissions_id)
VALUES (2,2);
