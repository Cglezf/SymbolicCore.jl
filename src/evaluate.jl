# evaluate.jl – Evaluación numérica de expresiones simbólicas

"""
    evaluate(expr::Constant, env::Dict)

Devuelve el valor numérico de la constante.
"""
function evaluate(expr::Constant, env::Dict{Symbol,Float64})
    return expr.value
end

"""
    evaluate(expr::Variable, env::Dict)

Busca el valor de la variable en el entorno `env`.
Lanza un error si no se encuentra.
"""
function evaluate(expr::Variable, env::Dict{Symbol,Float64})
    haskey(env, expr.name) || error("Variable $(expr.name) no definida en el entorno")
    return env[expr.name]
end

"""
    evaluate(expr::BinaryOp, env::Dict)

Evalúa recursivamente ambos operandos y aplica el operador binario (`+`, `*`, etc.).
"""
function evaluate(expr::BinaryOp, env::Dict{Symbol,Float64})
    left_val = evaluate(expr.left, env)
    right_val = evaluate(expr.right, env)
    if expr.op == :+
        return left_val + right_val
    elseif expr.op == :-
        return left_val - right_val
    elseif expr.op == :*
        return left_val * right_val
    elseif expr.op == :/
        return left_val / right_val
    else
        error("Operador no soportado: $(expr.op)")
    end
end
