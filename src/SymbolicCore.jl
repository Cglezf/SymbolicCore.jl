# ─────────────────────────────────────────────
# SymbolicCore.jl – Punto de entrada del módulo
# ─────────────────────────────────────────────

module SymbolicCore

export AbstractSymbolic, Constant, Variable, BinaryOp, evaluate, show

include("types.jl")
include("show.jl")
include("evaluate.jl")

end # MOD
