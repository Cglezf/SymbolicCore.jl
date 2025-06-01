# evaluate_test.jl
using Test
using SymbolicCore

using Test
using SymbolicCore

function test_evaluate()
    @testset "Evaluación simbólica" begin
        @test evaluate(Constant(3.0), Dict{Symbol,Float64}()) == 3.0
        @test evaluate(Variable(:x), Dict{Symbol,Float64}(:x => 2.0)) == 2.0

        expr1 = BinaryOp(:+, Variable(:x), Constant(1.0))
        @test evaluate(expr1, Dict{Symbol,Float64}(:x => 3.0)) == 4.0

        expr2 = BinaryOp(:*, Constant(2.0), Constant(5.0))
        @test evaluate(expr2, Dict{Symbol,Float64}()) == 10.0

        expr3 = BinaryOp(:-, Constant(10.0), Constant(4.0))
        @test evaluate(expr3, Dict{Symbol,Float64}()) == 6.0

        expr4 = BinaryOp(:+, Variable(:x), Variable(:y))
        @test evaluate(expr4, Dict{Symbol,Float64}(:x => 1.0, :y => 2.0)) == 3.0

        expr5 = BinaryOp(:/, Constant(10.0), Constant(2.0))
        @test evaluate(expr5, Dict{Symbol,Float64}()) == 5.0

        expr6 = BinaryOp(:^, Constant(2.0), Constant(3.0))
        @test_throws ErrorException evaluate(expr6, Dict{Symbol,Float64}())

        @test_throws ErrorException evaluate(Variable(:z), Dict{Symbol,Float64}(:x => 1.0))
    end
end
