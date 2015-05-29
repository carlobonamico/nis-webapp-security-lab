INSERT INTO users(username,password,enabled)
VALUES ('john','john', TRUE);
INSERT INTO users(username,password,enabled)
VALUES ('alex','alex', TRUE);

INSERT INTO authorities (username, authority)
VALUES ('john', 'ROLE_USER');
INSERT INTO authorities (username, authority)
VALUES ('john', 'ROLE_ADMIN');
INSERT INTO authorities (username, authority)
VALUES ('alex', 'ROLE_USER');