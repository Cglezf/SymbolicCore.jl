#!/usr/bin/env julia
using JuliaFormatter

project_root = dirname(@__DIR__)

folders = ["src", "test", "dev", "benchmark", "scripts", "docs"]

for folder in folders
    dir = joinpath(project_root, folder)
    if isdir(dir)
        @info "Formateando carpeta: $folder"
        format(dir; verbose=true, style=BlueStyle())
    else
        @warn "Carpeta no encontrada: $folder"
    end
end

@info "=== Formateo completado ==="
