# ─────────────────────────────────────────────
# types.jl – Definición de tipos simbólicos base
# ─────────────────────────────────────────────

"""
    AbstractSymbolic

Tipo abstracto para representar cualquier expresión simbólica.
Todas las estructuras simbólicas deben derivar de este tipo.
"""
abstract type AbstractSymbolic end

"""
    Constant(value::Float64)

Representa una constante numérica simbólica.
Ejemplo: `Constant(3.14)`
"""
struct Constant <: AbstractSymbolic
    value::Float64
end

"""
    Variable(name::Symbol)

Representa una variable simbólica identificada por un nombre.
Ejemplo: `Variable(:x)`
"""
struct Variable <: AbstractSymbolic
    name::Symbol
end

"""
    BinaryOp(op::Symbol, left::AbstractSymbolic, right::AbstractSymbolic)

Representa una operación binaria simbólica.
Ejemplos: `x + y`, `a * b`, `Variable(:x) + Constant(2.0)`
"""
struct BinaryOp <: AbstractSymbolic
    op::Symbol
    left::AbstractSymbolic
    right::AbstractSymbolic
end
