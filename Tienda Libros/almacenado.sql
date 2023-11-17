-- Crear el procedimiento almacenado
DELIMITER //

CREATE PROCEDURE RealizarCompra(
    IN p_LibroID INT,
    IN p_CantidadComprada INT
)
BEGIN
    -- Verificar si hay suficiente stock disponible
    DECLARE stock_actual INT;
    SELECT StockDisponible INTO stock_actual FROM Libros WHERE LibroID = p_LibroID;

    IF stock_actual >= p_CantidadComprada THEN
        -- Actualizar el stock después de la compra
        UPDATE Libros SET StockDisponible = stock_actual - p_CantidadComprada WHERE LibroID = p_LibroID;

        -- Puedes agregar aquí la lógica para registrar la compra en otra tabla si es necesario
        -- Por ejemplo, una tabla de historial de compras.

        SELECT 'Compra exitosa. Stock actualizado.' AS Mensaje;
    ELSE
        SELECT 'Error: Stock insuficiente para completar la compra.' AS Mensaje;
    END IF;
END;
//

DELIMITER ;
