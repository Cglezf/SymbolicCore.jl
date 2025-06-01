#!/usr/bin/env julia

"""
clean_coverage.jl – Elimina archivos `.cov` generados por Coverage.jl en src/ y test/
"""

using Logging

function delete_cov_files(dir::String)
    isdir(dir) || return nothing
    for file in readdir(dir)
        endswith(file, ".cov") && rm(joinpath(dir, file); force=true)
    end
end

function main()
    root = @__DIR__     # asume que el script está en scripts/
    test_dir = joinpath(root, "../test")
    src_dir = joinpath(root, "../src")

    @info "Limpiando archivos .cov..."
    delete_cov_files(abspath(test_dir))
    delete_cov_files(abspath(src_dir))
    @info ".cov eliminados de test/ y src/"
end

main()
