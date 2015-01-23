CREATE TABLE CATEGORIE (ID INTEGER NOT NULL, NOM VARCHAR(255), PRIMARY KEY (ID))
CREATE TABLE IMAGE (ID INTEGER NOT NULL, NOM VARCHAR(255), SOURCE VARCHAR(255), categorieId INTEGER, proprietaire INTEGER, PRIMARY KEY (ID))
CREATE TABLE UTILISATEUR (ID INTEGER NOT NULL, LOGIN VARCHAR(255), PASSWORD VARCHAR(255), PRIMARY KEY (ID))
ALTER TABLE IMAGE ADD CONSTRAINT FK_IMAGE_categorieId FOREIGN KEY (categorieId) REFERENCES CATEGORIE (ID)
ALTER TABLE IMAGE ADD CONSTRAINT FK_IMAGE_proprietaire FOREIGN KEY (proprietaire) REFERENCES UTILISATEUR (ID)
