NO ESTA COMPLETOOOOOO



DELIMITER//
CREATE OR REPLACE TRIGGER check_cantidad_max_min_de_pedido BEFORE INSERT ON linea_pedidos
FOR EACH ROW 
BEGIN

   DECLARE cantidadPermitida BOOLEAN ;

   SELECT COUNT(*) FROM linea_pedidos 
   WHERE cantidadId=NEW.cantidadId;
   IF cantidadId<0 OR cantidadId>100 THEN
   SIGNAL SQLSTATE '45000'
   SET MESSAGE_TEXT =' LA CANTIDAD DEL PRODUCTO NO ES PERMITIDA '
   END IF;
END//
DELIMITER;
