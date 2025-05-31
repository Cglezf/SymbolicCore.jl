# runtests.jl
using SymbolicCore
using Test

include("evaluate_test.jl")
include("show_test.jl")

function run_all_tests()
    test_evaluate()
    test_show()
    return nothing
end

run_all_tests()
