-- ============================================================
-- DML (Data Manipulation Language) -- Manipulación de datos
-- Proyecto: Agencia de Recursos Humanos
-- Ejecutar SEGUNDO (después del DDL).
-- ============================================================

USE rrhh_agencia;

-- Inserción de 5 empleados con nombres y correos realistas
INSERT INTO empleados (id, nombre, apellido, correo) VALUES
(1, 'Juan',   'Pérez',     'juan.perez@gmail.com'),
(2, 'María',  'Rodríguez', 'maria.rodriguez@hotmail.com'),
(3, 'Carlos', 'Gómez',     'carlos.gomez@outlook.com'),
(4, 'Ana',    'Martínez',  'ana.martinez@yahoo.com'),
(5, 'Luis',   'Ramírez',   'luis.ramirez@empresa.com');

-- Verificación de los datos insertados
SELECT * FROM empleados;
