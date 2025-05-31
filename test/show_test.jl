# show_test.jl
using Test
using SymbolicCore

function test_show()
    @testset "Impresión simbólica" begin
        io = IOBuffer()
        show(io, Constant(3.0))
        @test String(take!(io)) == "3.0"

        io = IOBuffer()
        show(io, Variable(:x))
        @test String(take!(io)) == "x"

        io = IOBuffer()
        expr = BinaryOp(:+, Variable(:x), Constant(2.0))
        show(io, expr)
        @test String(take!(io)) == "(x + 2.0)"
    end
end
