-- Insertar datos en la tabla Autores
INSERT INTO Autores (Nombre, Apellido) VALUES
    ('Gabriel', 'García Márquez'),
    ('J.K.', 'Rowling'),
    ('George R.R.', 'Martin');

-- Insertar datos en la tabla Editoriales
INSERT INTO Editoriales (Nombre, Direccion) VALUES
    ('Random House', '123 Main St, City'),
    ('Bloomsbury', '456 Oak St, Town'),
    ('HarperCollins', '789 Maple St, Village');

-- Insertar datos en la tabla Libros
INSERT INTO Libros (Titulo, ISBN, AnioPublicacion, AutorID, EditorialID) VALUES
    ('Cien años de soledad', '978-0-140-45377-2', 1967, 1, 1),
    ('Harry Potter and the Philosopher''s Stone', '978-0-7475-3269-6', 1997, 2, 2),
    ('A Game of Thrones', '978-0-553-10354-0', 1996, 3, 3),
    ('Love in the Time of Cholera', '978-0-14-012389-0', 1985, 1, 1),
    ('Harry Potter and the Chamber of Secrets', '978-0-7475-3849-0', 1998, 2, 2),
    ('A Clash of Kings', '978-0-553-10803-3', 1998, 3, 3);

-- Verificar los datos insertados
SELECT * FROM Autores;
SELECT * FROM Editoriales;
SELECT * FROM Libros;
