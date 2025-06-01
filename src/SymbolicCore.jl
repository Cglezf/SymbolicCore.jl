# SymbolicCore.jl – Punto de entrada del módulo

module SymbolicCore

export AbstractSymbolic, Constant, Variable, BinaryOp, show, evaluate, simplify

include("types.jl")
include("show.jl")
include("evaluate.jl")
include("simplify.jl")
include("../utils/MiniLogger.jl")

MiniLogger.init_logger()

end # MOD
