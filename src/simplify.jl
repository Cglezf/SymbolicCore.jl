# simplify.jl - Simplification of expressions

"""
    simplify(expr::Constant) -> Constant

Retorna la constante sin cambios. Las constantes ya están en su forma más simple.
"""
function simplify(expr::Constant)
    return expr
end

"""
    simplify(expr::Variable) -> Variable

Retorna la variable sin cambios. Las variables no pueden simplificarse sin un valor.
"""
function simplify(expr::Variable)
    return expr
end

"""
    simplify(expr::BinaryOp) -> Expr

Simplifica recursivamente los operandos de una expresión binaria.

- Si ambos operandos son constantes, evalúa el resultado directamente.
- Si se trata de una suma con `0` o multiplicación por `1`, retorna el otro operando.
- Si se trata de multiplicación por `0`, retorna `Constant(0.0)`.

Devuelve una nueva expresión simplificada o el resultado evaluado si es posible.
"""
function simplify(expr::BinaryOp)
    left = simplify(expr.left)
    right = simplify(expr.right)

    if isa(left, Constant) && isa(right, Constant)
        return Constant(evaluate(BinaryOp(expr.op, left, right), Dict{Symbol,Float64}()))
    end

    if expr.op == :+
        if left == Constant(0.0)
            return right
        end
        if right == Constant(0.0)
            return left
        end
    elseif expr.op == :*
        if left == Constant(0.0) || right == Constant(0.0)
            return Constant(0.0)
        end
        if left == Constant(1.0)
            return right
        end
        if right == Constant(1.0)
            return left
        end
    end

    return BinaryOp(expr.op, left, right)
end
