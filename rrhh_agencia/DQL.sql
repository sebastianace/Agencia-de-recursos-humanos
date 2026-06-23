-- ============================================================
-- DQL (Data Query Language) -- Consulta de datos
-- Proyecto: Agencia de Recursos Humanos
-- Ejecutar TERCERO (después de DDL y DML).
--
-- Reporte que estandariza la información personal usando
-- cuatro funciones SQL, con cada columna renombrada con alias (AS).
-- ============================================================

USE rrhh_agencia;

SELECT
    CONCAT(nombre, ' ', apellido)         AS nombre_completo,    -- Une nombre + apellido
    LENGTH(CONCAT(nombre, ' ', apellido)) AS longitud_nombre,    -- Longitud (en bytes)
    UPPER(nombre)                         AS nombre_mayusculas,  -- Nombre en MAYÚSCULAS
    SUBSTRING_INDEX(correo, '@', -1)      AS dominio_correo      -- Dominio (después del @)
FROM empleados;
