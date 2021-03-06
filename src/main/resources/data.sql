INSERT INTO USERS(ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (null, 'ADMIN', 'ADMIN', 'John', 'Doe', 'johnDoe@email.com', true);
INSERT INTO USERS(ID, USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ACTIVATED) VALUES (null, 'USER', 'USER', 'Jan', 'Doe', 'janDoe@email.com', true);


INSERT INTO ROLES(ID, NAME) VALUES (null, 'ADMIN');
INSERT INTO ROLES(id, NAME) VALUES (null, 'USER');
INSERT INTO ROLES(id, NAME) VALUES (null, 'LEADER');

INSERT INTO PERMISSIONS(id, NAME) VALUES (null, 'ADMIN_PROFILE');
INSERT INTO PERMISSIONS(id, NAME) VALUES (null, 'USER_MANAGEMENT');




INSERT INTO USER_ROLES(USER_ID,ROLE_ID) VALUES (SELECT ID FROM USERS WHERE USERNAME='ADMIN',SELECT ID FROM ROLES WHERE NAME='ADMIN');
INSERT INTO USER_ROLES(USER_ID,ROLE_ID) VALUES (SELECT ID FROM USERS WHERE USERNAME='ADMIN',SELECT ID FROM ROLES WHERE NAME='USER');
INSERT INTO USER_ROLES(USER_ID,ROLE_ID) VALUES (SELECT ID FROM USERS WHERE USERNAME='ADMIN',SELECT ID FROM ROLES WHERE NAME='LEADER');
INSERT INTO USER_ROLES(USER_ID,ROLE_ID) VALUES (SELECT ID FROM USERS WHERE USERNAME='USER',SELECT ID FROM ROLES WHERE NAME='USER');

INSERT INTO ROLE_PERMISSIONS(ROLE_ID, PERMISSION_ID) VALUES (SELECT ID FROM ROLES WHERE NAME='ADMIN', SELECT ID FROM PERMISSIONS WHERE NAME='ADMIN_PROFILE');
INSERT INTO ROLE_PERMISSIONS(ROLE_ID, PERMISSION_ID) VALUES (SELECT ID FROM ROLES WHERE NAME='ADMIN', SELECT ID FROM PERMISSIONS WHERE NAME='USER_MANAGEMENT');