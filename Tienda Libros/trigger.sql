-- Crear el trigger
DELIMITER //

CREATE TRIGGER after_insert_libro
AFTER INSERT
ON Libros FOR EACH ROW

BEGIN
    -- Establecer el stock inicial en 0 para nuevos libros
    DECLARE stock_inicial INT DEFAULT 0;

    -- Insertar el nuevo libro en la tabla Libros
    INSERT INTO Libros (LibroID, StockDisponible) VALUES (NEW.LibroID, stock_inicial);
END;
//

DELIMITER ;
