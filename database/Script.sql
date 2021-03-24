
CREATE DATABASE agenda_covid;

USE agenda_covid;

CREATE TABLE Users( idUser INT NOT NULL, name VARCHAR(64), lastName VARCHAR(64), birth DATE, activo TINYINT(1), PRIMARY KEY (idUser));

CREATE TABLE Phones( idUser INT NOT NULL, phone INT NOT NULL, PRIMARY KEY (idUser, phone),FOREIGN KEY (idUser) REFERENCES Users(idUser));

CREATE TABLE Groups( idGroup INT NOT NULL, name VARCHAR(64), activo TINYINT(1), PRIMARY KEY (idGroup));

CREATE TABLE Agenda( idUser INT NOT NULL, idGroup INT NOT NULL, date1 DATE, date2 DATE, PRIMARY KEY (idUser, idGroup), FOREIGN KEY (idUser) REFERENCES Users(idUser), FOREIGN KEY (idGroup) REFERENCES Groups(idGroup));
