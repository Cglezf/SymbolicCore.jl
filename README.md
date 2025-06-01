# SymbolicCore

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Cglezf.github.io/SymbolicCore.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Cglezf.github.io/SymbolicCore.jl/dev/)
[![Build Status](https://github.com/Cglezf/SymbolicCore.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/Cglezf/SymbolicCore.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/Cglezf/SymbolicCore.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/Cglezf/SymbolicCore.jl)

**SymbolicCore.jl** es un paquete educativo escrito en Julia para la manipulación simbólica básica. Su diseño está orientado al aprendizaje del paradigma *Julia Way*, aplicando tipos personalizados, *multiple dispatch* y pruebas formativas desde las primeras etapas del desarrollo.

## Características

- Representación de expresiones simbólicas usando:
  - `Constant`
  - `Variable`
  - `BinaryOp`
- Evaluación numérica de expresiones simbólicas (`evaluate`)
- Impresión simbólica en formato algebraico (`show`)
- Simplificación de expresiones con reglas algebraicas básicas (`simplify`)
- Pruebas organizadas y cobertura planificada

## 📦 Instalación

Para desarrollo local, usa:

```julia
] dev .
```

Para incluirlo en otro proyecto (cuando esté publicado):

```julia
] add https://github.com/usuario/SymbolicCore.jl
```

## 🚀 Uso básico

```julia
using SymbolicCore

# Definir una expresión: x + 0
expr = BinaryOp(:+, Variable(:x), Constant(0.0))

# Simplificar
simplified = simplify(expr)  # → Variable(:x)

# Evaluar con un entorno
evaluate(expr, Dict(:x => 5.0))  # → 5.0
```

## 🧪 Ejecutar tests

Desde el entorno del paquete:

```bash
julia --project -e 'using Pkg; Pkg.test()'
```

Todos los tests se encuentran organizados en `test/`.

## 🔜 Próximamente

- Derivación simbólica (`differentiate`)
- Benchmarking con `BenchmarkTools.jl`
- Cobertura de código con `Coverage.jl`
- Documentación con `Documenter.jl`
- Versión v0.1.0 y publicación oficial
