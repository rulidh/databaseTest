CREATE TABLE users (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE hobbies (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    level NUMERIC(10)
);

CREATE TABLE map_user_hobby (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    id_user BIGSERIAL REFERENCES users(id),
    id_hobby BIGSERIAL REFERENCES hobbies(id),
    status VARCHAR(20) NOT NULL
);

INSERT INTO users(name, gender, status) VALUES ('Frasch', 'F', 'active');
INSERT INTO users(name, gender, status) VALUES ('Garmuth', 'M', 'active');
INSERT INTO users(name, gender, status) VALUES ('Goliath', 'M', 'active');
INSERT INTO users(name, gender, status) VALUES ('Luna', 'F', 'active');
INSERT INTO users(name, gender, status) VALUES ('Zeus', 'M', 'active');
INSERT INTO users(name, gender, status) VALUES ('Aprodhite', 'F', 'active');
INSERT INTO users(name, gender, status) VALUES ('Ares', 'M', 'active');
INSERT INTO users(name, gender, status) VALUES ('Lina', 'F', 'active');
INSERT INTO users(name, gender, status) VALUES ('Lanaya', 'F', 'active');
INSERT INTO users(name, gender, status) VALUES ('Hades', 'M', 'active');

INSERT INTO hobbies(name, level) VALUES ('Running', 8);
INSERT INTO hobbies(name, level) VALUES ('Skipping', 5);
INSERT INTO hobbies(name, level) VALUES ('Push Up', 10);

INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (1, 1, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (3, 1, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (8, 3, 'deleted');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (2, 2, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (4, 1, 'deleted');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (6, 2, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (5, 3, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (8, 1, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (7, 2, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (4, 2, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (9, 3, 'deleted');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (10, 2, 'deleted');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (3, 2, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (2, 3, 'active');
INSERT INTO map_user_hobby(id_user, id_hobby, status) VALUES (10, 2, 'active');