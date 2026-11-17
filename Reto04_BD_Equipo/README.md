# Reto 4 (Evaluable) · Preparación inicial de la base de datos del equipo

## Metadatos del operador

| Campo | Valor |
|---|---|
| Alumno/a | Manuel Blesa Estepa |
| Usuario de GitHub | @Manuel78945 |
| Equipo del Proyecto Integrado | 6 |
| IP de la VM (servidor de laboratorio) | 192.168.198.141 |
| IP del PC físico (cliente) | 192.168.198.1 (desktop-ralbmfc) |
| Fecha | 17/11/2026 |

## Evidencias del laboratorio

1. **Estructura y datos iniciales (`admin_udit`):** `capturas/01_estructura_y_datos.png`
2. **Conexión y privilegios (`admin_equipo`):** `capturas/02_conexion_admin_equipo.png`
3. **Pruebas de alcance y denegación (`1142`):**
   - `capturas/03_pruebas_permisos_1.png`
   - `capturas/03_pruebas_permisos_2.png`
   - `capturas/03_pruebas_permisos_3.png`
   - `capturas/03_pruebas_permisos_4.png`
4. **Repositorio en GitHub sin credenciales:** `capturas/04_repositorio_github.png`

## Parte F · Justificación técnica

**a) Diferencia entre `admin_udit` y `admin_equipo`, y por qué evitar privilegios globales:**
admin_udit es la cuenta admin global y admin_equipo tiene sus privilegios restringidos a proyecto_udit. Limitar sus permisos aplica el principio de mínimo privilegio y aisla el impacto de cualquier problema a proyecto_udit.

**b) Por qué la base de datos almacena una ruta en lugar de guardar dentro de la tabla el fichero de vídeo o la imagen:**
Porque guardar archivos multimedia directamente en las tablas hace que la bdd aumente demasiado su tamaño, empeora el rendimiento y vuelve lentas las copias de seguridad y restauraciones.

**c) Por qué el identificador y la ruta del contenido deben acordarse con DAM antes de cerrar la integración del Sprint 1:**
La bdd es el punto que une la infraestructura de asir y la app de dam. Si cada uno trabaja de forma diferente las cosas, la aplicación no podrá localizar los recursos multimedia y obligará a rehacer el esquema SQL y el código posteriormente.
