-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS TiendaLibros;

-- Usar la base de datos
USE TiendaLibros;

-- Crear la tabla Autores
CREATE TABLE IF NOT EXISTS Autores (
    AutorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL
);

-- Crear la tabla Editoriales
CREATE TABLE IF NOT EXISTS Editoriales (
    EditorialID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255) NOT NULL
);

-- Crear la tabla Libros
CREATE TABLE IF NOT EXISTS Libros (
    LibroID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    AnioPublicacion INT,
    AutorID INT,
    EditorialID INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID),
    FOREIGN KEY (EditorialID) REFERENCES Editoriales(EditorialID)
);
