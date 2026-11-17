-- 1. Ejecutar uno a uno con MySQL - admin_equipo (deben funcionar):
SELECT * FROM proyecto_udit.contenidos;

CREATE TABLE proyecto_udit.comprobacion_admin (
    id INT PRIMARY KEY,
    nota VARCHAR(50) NOT NULL
);

DROP TABLE proyecto_udit.comprobacion_admin;

-- 2. Ejecutar con MySQL - admin_equipo (debe fallar con error 1142):
SELECT COUNT(*) FROM mysql.user;

-- 3. Ejecutar uno a uno con MySQL - usuario_restringido (la última falla con error 1142):
SELECT CURRENT_USER();
SHOW GRANTS;
SELECT * FROM proyecto_udit.contenidos;
