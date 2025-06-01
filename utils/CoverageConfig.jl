module CoverageConfig

using Coverage
using Logging

function run_coverage()
    src_dir = joinpath(@__DIR__, "../src")
    test_dir = @__DIR__

    try
        cov = with_logger(SimpleLogger(stderr, Logging.Warn)) do
            process_folder(src_dir)
        end
        LCOV.writefile(joinpath(test_dir, "lcov.info"), cov)

    finally
        function delete_cov_files(dir)
            for f in readdir(dir)
                endswith(f, ".cov") && rm(joinpath(dir, f); force=true)
            end
        end
        delete_cov_files(src_dir)
        delete_cov_files(test_dir)
    end
end

end # module
