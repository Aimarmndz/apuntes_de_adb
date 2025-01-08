## Character Set y Collations

__Ejercicio 1__

Mostrar todos los conjuntos de caracteres que contengan la palabra _utf_.

`SHOW CHARACTER SET LIKE '%utf%';`

__Ejercicio 2__

Muestra todos los collations disponibles para el conjunto de caracteres _latin1_. ¿Cuál es el collation predeterminado de _latin1_?

_Nota_: hay que generar dos consultas: una por cada pregunta.

`SHOW COLLATION WHERE Charset = 'latin1';`

`SHOW COLLATION WHERE `Charset` = 'latin1' AND `Default` = 'Yes';`

__Ejercicio 3__

Filtra las collations del conjunto `utf8mb4` que sean sensibles a acentos (as). Filtra las collations del conjunto `utf8mb4` que sean sensibles a mayúsculas (cs).

_Nota_: hay que generar dos consultas: una por cada pregunta.

`SHOW COLLATION WHERE Charset = 'utf8mb4' AND Collation LIKE '%_as%';`

`SHOW COLLATION WHERE Charset = 'utf8mb4' AND Collation LIKE '%_cs%';`

__Ejercicio 4__

Compara si `ó` es igual a `o` utilizando el collation `utf8mb4_0900_ai_ci`. Compara si `ó` es diferente de `o` utilizando el collation `utf8mb4_0900_as_ci`.

_Nota_: hay que generar dos consultas: una por cada pregunta.

`SELECT 'ó' = 'o' COLLATE utf8mb4_0900_ai_ci AS Result;`

`SELECT 'ó' != 'o' COLLATE utf8mb4_0900_as_ci AS Result;`

__Ejercicio 5__

Compara si la `ñ` es igual a `n` utilizando los collations `utf8mb4_spanish_ci` y `utf8mb4_spanish2_ci`.

`SELECT 'ñ' = 'n' COLLATE utf8mb4_spanish_ci AS Spanish_CI_Result,
       'ñ' = 'n' COLLATE utf8mb4_spanish2_ci AS Spanish2_CI_Result;`
