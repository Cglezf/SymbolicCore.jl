using Test
using SymbolicCore

function test_simplify()
    @testset "Simplificación simbólica" begin
        @test simplify(Constant(3.0)) == Constant(3.0)
        @test simplify(Variable(:x)) == Variable(:x)

        @test simplify(BinaryOp(:+, Constant(2.0), Constant(3.0))) == Constant(5.0)
        @test simplify(BinaryOp(:+, Variable(:x), Constant(0.0))) == Variable(:x)
        @test simplify(BinaryOp(:+, Constant(0.0), Variable(:x))) == Variable(:x)

        @test simplify(BinaryOp(:*, Variable(:x), Constant(1.0))) == Variable(:x)
        @test simplify(BinaryOp(:*, Constant(1.0), Variable(:x))) == Variable(:x)
        @test simplify(BinaryOp(:*, Constant(0.0), Variable(:x))) == Constant(0.0)

        expr = BinaryOp(:+, Variable(:x), BinaryOp(:+, Constant(0.0), Constant(2.0)))
        simplified = simplify(expr)
        @test simplified == BinaryOp(:+, Variable(:x), Constant(2.0))
    end
end
