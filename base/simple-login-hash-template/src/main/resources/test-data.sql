INSERT INTO users(username,password,enabled)
VALUES ('john','$2a$10$j/dtGtk.bN77XK39IdkUPe/Ix/SA8t8ElABpTrtHmC.S87lmF5tYm', TRUE);
INSERT INTO users(username,password,enabled)
VALUES ('alex','$2a$10$sejV9MMaWkbDCNehdefQyermRdemA9EuU3k6vdhTRbWZc.ShWsbPe', TRUE);

INSERT INTO authorities (username, authority)
VALUES ('john', 'ROLE_USER');
INSERT INTO authorities (username, authority)
VALUES ('john', 'ROLE_ADMIN');
INSERT INTO authorities (username, authority)
VALUES ('alex', 'ROLE_USER');