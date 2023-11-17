-- Crear la función
DELIMITER //

CREATE FUNCTION CalcularPrecioTotal(
    p_LibrosSeleccionados VARCHAR(255) -- Lista de LibroID separados por comas (por ejemplo, '1,2,3')
)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2) DEFAULT 0;

    -- Iterar sobre los libros seleccionados y sumar los precios
    DECLARE libro_id INT;
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE cur CURSOR FOR SELECT CAST(value AS UNSIGNED) FROM STRING_SPLIT(p_LibrosSeleccionados, ',');

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO libro_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Sumar el precio del libro al total
        SELECT Precio INTO total FROM Libros WHERE LibroID = libro_id;
    END LOOP;
    CLOSE cur;

    RETURN total;
END;
//

DELIMITER ;
