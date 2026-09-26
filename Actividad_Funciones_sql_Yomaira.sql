-- Funcion REPLACE busca todas las apariciones de una subcadena dentro de un texto y reemplaza por un nuevo texto 

SELECT 
    cam_nombre, 
    REPLACE(cam_nombre, '2026', '2027') AS nombre_actualizado
FROM campania;

-- Funcion REVERSE invierte el orden de todos los caracteres de una cadena de texto (el primer carácter pasa a ser el último y viceversa)
SELECT 
    cam_nombre, 
    REVERSE(cam_nombre) AS nombre_invertido
FROM campania
LIMIT 5;

-- Funcion RIGHT extrae un número determinado de caracteres empezando desde el extremo derecho (final) de una cadena de texto
SELECT 
    cli_nombre, 
    cli_telefono, 
    RIGHT(cli_telefono, 4) AS ultimos_digitos
FROM cliente;

-- Funcion SPACE especifica espacios en blanco repitiéndolos secuencialmente

SELECT 
    CONCAT(cli_nombre, SPACE(2), cli_apellido, SPACE(5), cli_correo) AS cliente_formateado
FROM cliente
LIMIT 5;

-- Funcion SUBSTR extrae una sección o fragmento específico de una cadena de texto a partir de una posición determinada
SELECT 
    cam_nombre, 
    cam_fecha_inicio,
    SUBSTR(cam_fecha_inicio, 1, 4) AS anio_inicio
FROM campania
LIMIT 5;

-- Funcion SUBSTRING extrae una porción o fragmento específico de una cadena de texto
SELECT 
    cli_nombre, 
    cli_telefono, 
    SUBSTRING(cli_telefono, 1, 3) AS prefijo_operador
FROM cliente;

-- Funcion UPPER convierte todos los caracteres de una cadena de texto a mayúsculas
SELECT 
    UPPER(cli_nombre) AS nombre_mayus, 
    UPPER(cli_apellido) AS apellido_mayus,
    cli_ciudad
FROM cliente
LIMIT 5;
