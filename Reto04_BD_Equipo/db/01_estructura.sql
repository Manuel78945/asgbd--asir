CREATE DATABASE IF NOT EXISTS proyecto_udit
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE proyecto_udit;

CREATE TABLE IF NOT EXISTS contenidos (
    id_contenido VARCHAR(20) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    ruta_repositorio VARCHAR(255) NOT NULL,
    fecha_alta DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_tipo_contenido CHECK (tipo IN ('VIDEO', 'COMIC', 'IMAGEN', 'JUEGO'))
);

INSERT IGNORE INTO contenidos (id_contenido, titulo, tipo, ruta_repositorio) VALUES
('vid-0001', 'Trailer inicial del proyecto', 'VIDEO', 'contenidos/videos/vid-0001.mp4'),
('com-0001', 'Capítulo 1 · Origen', 'COMIC', 'contenidos/comics/com-0001/'),
('img-0001', 'Arte conceptual principal', 'IMAGEN', 'contenidos/imagenes/img-0001.png');

SHOW TABLES FROM proyecto_udit;

SELECT *
FROM proyecto_udit.contenidos
ORDER BY id_contenido;
