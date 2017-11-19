INSERT INTO phone(area,number,prefix) VALUES(214,333,4422);
INSERT INTO phone(area,number,prefix) VALUES(321,333,4445);
INSERT INTO phone(area,number,prefix) VALUES(256,111,3224);




INSERT INTO credential(username,password,enable) VALUES ('bidder','admin', 1);
INSERT INTO credential(username,password,enable) VALUES ('admin','admin', 1);

INSERT INTO authority (username, authority) VALUES ('bidder', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_USER');

INSERT INTO  user (email,firstName,lastName,userStatus, phone_id,userCredential_username) VALUES ('helen@gmail.com','Helen','George','APPROVED', '1','admin');
INSERT INTO  user (email,firstName,lastName,userStatus, phone_id,userCredential_username) VALUES ('mare@gmail.com','Vivian','Micheal','APPROVED', '2','bidder');

INSERT INTO  address (street,city,state) VALUES ('1000N','Fairfield','IA');
INSERT INTO  address (street,city,state) VALUES ('Avenue Ave','Boston','MA');
INSERT INTO  address (street,city,state) VALUES ('Burlington Road','Washington','WA');
INSERT INTO  address (street,city,state) VALUES ('52St','Stockton','CA');

