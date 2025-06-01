# --------------------------------------------
# simplify.jl - Simplification of expressions
# --------------------------------------------

function simplify(expr::Constant)
    return expr
end

function simplify(expr::Variable)
    return expr
end

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
