using SymbolicCore
using Documenter

DocMeta.setdocmeta!(SymbolicCore, :DocTestSetup, :(using SymbolicCore); recursive=true)

makedocs(;
    modules=[SymbolicCore],
    authors="sglez",
    sitename="SymbolicCore.jl",
    format=Documenter.HTML(;
        canonical="https://Cglezf.github.io/SymbolicCore.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/Cglezf/SymbolicCore.jl", devbranch="main")
