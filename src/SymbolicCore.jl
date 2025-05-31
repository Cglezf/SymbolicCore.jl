# ─────────────────────────────────────────────
# SymbolicCore.jl – Punto de entrada del módulo
# ─────────────────────────────────────────────

module SymbolicCore

export AbstractSymbolic, Constant, Variable, BinaryOp

include("types.jl")
include("show.jl")

end # MOD
