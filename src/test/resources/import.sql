DROP TABLE IF EXISTS Personne_Numero;
DROP TABLE IF EXISTS Numero;
DROP TABLE IF EXISTS Personne;


CREATE TABLE  Personne  ( id  int(11) NOT NULL AUTO_INCREMENT,  dateNaissance  datetime DEFAULT NULL,  nom  varchar(255) DEFAULT NULL, prenom  varchar(255) DEFAULT NULL,PRIMARY KEY ( id )) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

CREATE TABLE  Numero  ( id  int(11) NOT NULL AUTO_INCREMENT,  tel  varchar(255) DEFAULT NULL, type  varchar(255) DEFAULT NULL, PRIMARY KEY ( id )) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

CREATE TABLE  Personne_Numero  ( personnes_id  int(11) NOT NULL,  numeros_id  int(11) NOT NULL, PRIMARY KEY ( personnes_id , numeros_id ), KEY  FK_cusfwchttki6j0byer3vrbv5e  ( numeros_id ), KEY  FK_oevjpoinp9kjyuq5q3l7rj42q  ( personnes_id ), CONSTRAINT  FK_cusfwchttki6j0byer3vrbv5e  FOREIGN KEY ( numeros_id ) REFERENCES  Numero  ( id ), CONSTRAINT  FK_oevjpoinp9kjyuq5q3l7rj42q  FOREIGN KEY ( personnes_id ) REFERENCES  Personne  ( id )) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO  Personne  VALUES (1,'2016-05-15 19:33:10','Colada','Pina'), (2,'2016-05-15 19:34:21','Derp','Dolan'), (3,'2016-05-16 10:05:55','Bono','Jean'),(10,'2016-05-16 13:55:44','trash','can'),(11,'2016-05-16 14:06:04','TOTO','cop'), (12,'2016-05-16 14:08:25','popopooo','gerard'),(13,'2016-05-17 11:33:40','Po','paul'), (14,'2016-05-17 11:39:48','Bond','James'),(15,'2016-05-17 11:46:12','Bond','James'), (16,'2016-05-17 11:50:07','popole','popile'),(17,'2016-05-17 11:53:29','coladaa','pina');

INSERT INTO  Numero  VALUES (1,'3','na'), (2,'2','void'), (3,'1','na'), (4,'4','void'), (5,'5','na'), (6,'05','na'), (7,'5','na'), (8,'9','void'), (10,'8','na'), (11,'9','void'),(12,'005','na'), (13,'15','super'), (14,'01','super'), (15,'58','genial'), (16,'56','super'), (17,'050','void'), (18,'007','agentsecret'), (19,'007','agentsecret'), (20,'00500','void'), (21,'666','satan');


INSERT INTO  Personne_Numero  VALUES (1,1), (1,2), (1,3), (2,4), (2,5), (3,6), (10,14), (11,15), (12,16), (13,17), (16,20);















