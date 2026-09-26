-- TALLER PARTE DIEGO FERNANDO MUÑOZ

-- • CONCAT
/*
Esta función une (concatena) dos o más cadenas de texto 
en una sola. Es muy útil cuando tienes datos separados que tienen más 
sentido visualmente si se muestran juntos.
*/
-- Une el nombre, añade un espacio en blanco, y luego el apellido
SELECT 
    cli_id_cliente, 
    CONCAT(cli_nombre, ' ', cli_apellido) AS nombre_completo 
FROM cliente;


-- • FIELD
/*Devuelve la posición (índice) de un valor específico 
dentro de una lista de valores que tú defines. Se usa frecuentemente 
en la cláusula ORDER BY para crear ordenamientos personalizados que 
no son ni alfabéticos ni numéricos.
*/
-- Ordena las conversiones obligando a que 'compra' aparezca primero, 'registro' de segundo, etc.
SELECT 
    con_id_conversion, 
    con_tipo, 
    con_valor 
FROM conversion 
ORDER BY FIELD(con_tipo, 'compra', 'registro', 'suscripcion');


-- • FORMAT
/*
Convierte un número a un formato de texto más legible, 
añadiendo separadores de miles (generalmente comas) y redondeando 
a la cantidad de decimales que le indiques.
*/
-- Formatea el presupuesto para que tenga separadores de miles y 2 decimales
SELECT 
    cam_nombre, 
    FORMAT(cam_presupuesto, 2) AS presupuesto_comercial 
FROM campania;


-- • LCASE
/*
Es la abreviatura de "Lower Case". Convierte todos los 
caracteres de una cadena de texto a minúsculas.
*/
-- Convierte el nombre de la ciudad a minúsculas
SELECT 
    cli_nombre, 
    LCASE(cli_ciudad) AS ciudad_minuscula 
FROM cliente;


-- • LEFT
/*
Extrae un número específico de caracteres de una cadena 
de texto, empezando desde la izquierda (el inicio de la palabra).
*/
-- Extrae los primeros 3 caracteres del teléfono empezando desde la izquierda
SELECT 
    cli_nombre, 
    cli_telefono, 
    LEFT(cli_telefono, 3) AS prefijo_operador 
FROM cliente;


-- • LENGTH
/*
Cuenta y devuelve la cantidad de caracteres (longitud) 
que tiene una cadena de texto (incluyendo espacios).
*/
-- Cuenta la cantidad de letras/espacios que tiene el nombre de cada campaña
SELECT 
    cam_nombre, 
    LENGTH(cam_nombre) AS total_caracteres 
FROM campania;


-- • LOWER
/*
Hace exactamente lo mismo que LCASE. Es el estándar SQL 
para convertir texto a minúsculas.
*/
-- Estandariza los correos electrónicos mostrándolos en minúscula
SELECT 
    cli_nombre, 
    LOWER(cli_correo) AS correo_estandarizado 
FROM cliente;


-- • REPEAT
/*
Toma una cadena de texto y la repite el número de veces 
que le indiques.
*/
-- Muestra los primeros 3 números del teléfono y repite un asterisco 7 veces para censurar el resto
SELECT 
    cli_nombre, 
    CONCAT(LEFT(cli_telefono, 3), REPEAT('*', 7)) AS telefono_censurado 
FROM cliente;
