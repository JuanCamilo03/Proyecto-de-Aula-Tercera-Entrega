-- Seleccionar la base de datos
USE TiendaLibros;

-- Asumiendo que ya existe la tabla Libros
-- Agrega un campo de número de factura único
ALTER TABLE Libros
ADD COLUMN NumeroFactura INT AUTO_INCREMENT;
