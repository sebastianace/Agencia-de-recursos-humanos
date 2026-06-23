# Agencia de Recursos Humanos — Transformación de Datos con Funciones SQL

Proyecto que estandariza la visualización de información personal de la tabla `empleados` para los reportes internos de una agencia de recursos humanos, aplicando funciones SQL.

---

## Realizado por:

| Vladimir Sebastian Acelas Rodriguez

---

## Estructura del Repositorio

Los scripts están separados según el tipo de instrucción SQL y numerados en el orden en que deben ejecutarse:

| Archivo | Tipo | Descripción |
| :--- | :--- | :--- |
| `DDL.sql` | **DDL** (Data Definition Language) | Crea la base de datos `rrhh_agencia` y la tabla `empleados`. |
| `DML.sql` | **DML** (Data Manipulation Language) | Inserta los 5 empleados de prueba. |
| `DQL.sql` | **DQL** (Data Query Language) | Consulta que transforma los datos con funciones SQL. |

---

## Orden de Ejecución

1. Ejecutar `DDL.sql` — crea la estructura.
2. Ejecutar `DML.sql` — carga los datos.
3. Ejecutar `DQL.sql` — muestra el reporte transformado.

---

## Consulta Principal (DQL)

La consulta usa cuatro funciones SQL, cada columna renombrada con `AS`:

- `CONCAT()` -> une nombre y apellido en `nombre_completo`.
- `LENGTH()` -> longitud del nombre completo en `longitud_nombre`.
- `UPPER()` -> nombre en mayúsculas en `nombre_mayusculas`.
- `SUBSTRING_INDEX()` -> dominio del correo (lo que va después de `@`) en `dominio_correo`.

---

## Resultado Esperado

| nombre_completo | longitud_nombre | nombre_mayusculas | dominio_correo |
| :--- | :---: | :--- | :--- |
| Juan Pérez | 11 | JUAN | gmail.com |
| María Rodríguez | 17 | MARÍA | hotmail.com |
| Carlos Gómez | 13 | CARLOS | outlook.com |
| Ana Martínez | 13 | ANA | yahoo.com |
| Luis Ramírez | 13 | LUIS | empresa.com |

> **Nota técnica:** `LENGTH()` mide la longitud en **bytes**. Como las vocales acentuadas (í, é, ó...) ocupan 2 bytes en UTF-8, suman 1 unidad extra (por eso "Juan Pérez" da 11 y no 10). Si se quisiera contar **caracteres** exactos, se usaría `CHAR_LENGTH()`.

src = 