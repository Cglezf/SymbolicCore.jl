# Changelog

Todas las modificaciones importantes en este proyecto se documentarán en este archivo.

El formato sigue las convenciones de [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), y el proyecto sigue [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2025-05-31

### Añadido

- Primer lanzamiento funcional del paquete `SymbolicCore.jl`.
- Definición de tipos algebraicos: `Constant`, `Variable`, `BinaryOp`.
- Implementación del sistema de evaluación simbólica con `evaluate(...)`.
- Soporte para impresión simbólica con sobrecarga de `show(...)`.
- Función `simplify(...)` para simplificación básica de expresiones simbólicas.
- Pruebas unitarias completas para `evaluate`, `show` y `simplify`.
- Configuración de `coverage` con generación automática de `lcov.info`.
- Configuración del logger por entorno (silencioso o informativo).
- Documentación estructurada con Documenter.jl (`index.md` y docstrings).
- Utilidades internas modulares (`CoverageConfig`, `MiniLogger`).
