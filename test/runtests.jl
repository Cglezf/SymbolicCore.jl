# runtests.jl
using Logging

global_logger(ConsoleLogger(stderr, Logging.Info))

ENV["JULIA_DEBUG"] = "SymbolicCore"

using SymbolicCore
using Test

include("evaluate_test.jl")
include("show_test.jl")
include("simplify_test.jl")
include("../utils/CoverageConfig.jl")

function run_all_tests()
    test_evaluate()
    test_show()
    test_simplify()
    return nothing
end

run_all_tests()
CoverageConfig.run_coverage()
