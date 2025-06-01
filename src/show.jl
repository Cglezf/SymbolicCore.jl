# show.jl – Impresión simbólica de expresiones

import Base: show

"""
    show(io::IO, c::Constant)

Imprime el valor numérico de la constante, por ejemplo: `3.14`
"""
function show(io::IO, c::Constant)
    return print(io, c.value)
end

"""
    show(io::IO, v::Variable)

Imprime el nombre de la variable simbólica, por ejemplo: `x`
"""
function show(io::IO, v::Variable)
    return print(io, v.name)
end

"""
    show(io::IO, b::BinaryOp)

Imprime la operación binaria en notación infija con paréntesis.
Ejemplo: `(x + 2.0)`
"""
function show(io::IO, b::BinaryOp)
    print(io, "(")
    show(io, b.left)
    print(io, " ", b.op, " ")
    show(io, b.right)
    return print(io, ")")
end
