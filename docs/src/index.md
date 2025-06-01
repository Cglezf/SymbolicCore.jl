# SymbolicCore

```@meta
CurrentModule = SymbolicCore
```

_Módulo básico para manipulación simbólica de expresiones algebraicas en Julia._

Este paquete forma parte del curso profesional de desarrollo en Julia. Incluye una representación simbólica mínima y extensible con soporte para evaluación, impresión y simplificación de expresiones aritméticas.

---

## Tabla de Contenidos

```@contents
Pages = ["index.md"]
Depth = 2
```

---

## 🧠 Tipos simbólicos

Los siguientes tipos representan expresiones simbólicas:

```@docs
SymbolicCore.Constant
SymbolicCore.Variable
SymbolicCore.BinaryOp
```

---

## ⚙️ Evaluación numérica

Funciones para evaluar expresiones simbólicas con un entorno numérico (`Dict{Symbol, Float64}`):

```@docs
SymbolicCore.evaluate
```

---

## 🖨️ Impresión simbólica

Sobrecarga de `Base.show` para imprimir expresiones de forma legible:

```@docs
Base.show(::IO, ::SymbolicCore.Constant)
Base.show(::IO, ::SymbolicCore.Variable)
Base.show(::IO, ::SymbolicCore.BinaryOp)
```

---

## 🧹 Simplificación simbólica

Reducción de expresiones cuando existen constantes computables:

```@docs
SymbolicCore.simplify
```

---

## 🔗 Enlaces

- 📦 Repositorio: [SymbolicCore](https://github.com/Cglezf/SymbolicCore.jl)
