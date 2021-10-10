DROP DATABASE IF EXISTS tareas_db;
CREATE DATABASE tareas_db;
USE tareas_db;

DROP TABLE IF EXISTS Usuarios;
CREATE TABLE Usuarios(
id int AUTO_INCREMENT NOT NULL,
nombre varchar(50) NOT NULL, 
email varchar(50) NOT NULL,
PRIMARY KEY(id)
)engine = InnoDB;

DROP TABLE IF EXISTS Notas;
CREATE TABLE Notas(
id int AUTO_INCREMENT NOT NULL,
idUsuario int NOT NULL,
titulo varchar(100) NOT NULL,
fechaCreacion date NOT NULL,
fechaModifcacion date NOT NULL,
descripcion text,
PRIMARY KEY(id),
CONSTRAINT usuario_id_fk FOREIGN KEY (idUsuario) REFERENCES Usuarios(id)
)engine = InnoDB;

DROP TABLE IF EXISTS Categorias;
CREATE TABLE Categorias(
id int AUTO_INCREMENT NOT NULL, 
nombre varchar(50) NOT NULL,
PRIMARY KEY(id)
)engine = InnoDB;

DROP TABLE IF EXISTS Notas_Categorias;
CREATE TABLE Notas_Categorias(
id int AUTO_INCREMENT NOT NULL,
idNota int NOT NULL,
idCategoria int NOT NULL,
PRIMARY KEY(id),
CONSTRAINT id_nota_fk FOREIGN KEY (idNota) REFERENCES Notas(id),
CONSTRAINT id_categoria_fk FOREIGN KEY (idCategoria) REFERENCES Categorias(id)
)engine = InnoDB;

/*INSERTS*/
/*Usuarios*/
INSERT INTO Usuarios(nombre, email) VALUES
('Antonio Oropeza Ugalde', 'antonio.oroug@gmail.com'),
('Mariela Villalobos Sauza', 'mv33n@gmail.com'),
('Horacio Diaz Hernandez', 'horacio_diaz_hdz@github.com'),
('Areli Terrez Mendoza', 'terrezmdz.are@outlook.com'),
('Germán Lopez Juárez', 'lpzgerman_h@gmail.com'),
('Fernanda Rivas Sánchez', 'fer.rivassan@protonmail.com'),
('Carlos Oropeza Ugalde', 'c.oropezamx@gmail.com'),
('Juan Felix Soto', 'soto_juanito@hotmail.com'),
('Liliana Arango Jones', 'arangojones@github.com'),
('José Miguel Hank Simon', 'hank_josemiguel@gmail.com');

/*Notas*/
INSERT INTO Notas(idUsuario,titulo, fechaCreacion, fechaModifcacion, descripcion) VALUES
(3,'Titulo 1', '2021-09-01', '2021-09-07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(6,'Titulo 2', '2021-09-03', '2021-09-08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(1,'Titulo 3', '2021-09-08', '2021-10-11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(3,'Titulo 4', '2021-09-12', '2021-09-16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(5,'Titulo 5', '2021-09-16', '2021-09-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(10,'Titulo 6', '2021-09-20', '2021-09-25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(9,'Titulo 7', '2021-09-22', '2021-09-25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(2,'Titulo 8', '2021-09-26', '2021-09-30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(7,'Titulo 9', '2021-10-01', '2021-10-09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(4,'Titulo 10', '2021-10-05', '2021-10-10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

/*Categorias*/
INSERT INTO Categorias(nombre) VALUES
('Actualidad'),
('Trabajo'),
('Finanzas'),
('Escuela'),
('Curso'),
('Medicina'),
('Comercio'),
('Cultura'),
('Deporte'),
('Entretenimiento');

/*Notas_Categorias*/
INSERT INTO Notas_Categorias(idNota, idCategoria) VALUES
(2, 5),
(3, 6),
(1, 10),
(10, 5),
(6, 9),
(1, 3),
(9, 7),
(5, 6),
(2, 6),
(4, 7);
 

