# Acuerdo de Integración · Sprint 1 (ASIR - DAM)

- **Equipo del Proyecto Integrado:** 6
- **Responsable ASIR:** Manuel Blesa Estepa
- **Responsable DAM:** PENDIENTE (Asignar interlocutor del subequipo DAM)
- **Fecha:** 17/11/2026

## 1. Formato del identificador (`id_contenido`)
- **Propuesta inicial ASIR:** Cadena `VARCHAR(20)` con prefijo por tipo y 4 dígitos (`vid-0001`, `com-0001`, `img-0001`, `jue-0001`).
- **Estado:** PENDIENTE de validar con DAM antes del 27/11/2026.

## 2. Tipos de contenido y nombres
- **Valores provisionales:** `VIDEO`, `COMIC`, `IMAGEN`, `JUEGO`.
- **Estado:** PENDIENTE de confirmar con DAM si se añaden más tipos.

## 3. Campos de intercambio entre DAM y la BD
- **Tabla provisional `contenidos`:** `id_contenido`, `titulo`, `tipo`, `ruta_repositorio`, `fecha_alta`.
- **Estado:** PENDIENTE de revisión por DAM para añadir posibles metadatos extra.

## 4. Estructura de carpetas y patrón de rutas
- **Propuesta inicial:** `contenidos/videos/<id>.mp4`, `contenidos/comics/<id>/`, `contenidos/imagenes/<id>.png`.
- **Estado:** PENDIENTE de acordar con DAM la estructura final del repositorio de estáticos.
