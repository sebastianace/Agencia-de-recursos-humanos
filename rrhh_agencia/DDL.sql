-- ============================================================
-- DDL (Data Definition Language) -- Definición de la estructura
-- Proyecto: Agencia de Recursos Humanos
-- Ejecutar PRIMERO.
-- ============================================================

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS rrhh_agencia;
USE rrhh_agencia;

-- Limpieza previa (permite re-ejecutar el script sin errores)
DROP TABLE IF EXISTS empleados;

-- Crear la tabla empleados
CREATE TABLE empleados (
    id       INT PRIMARY KEY,
    nombre   VARCHAR(30),
    apellido VARCHAR(30),
    correo   VARCHAR(50)
);
