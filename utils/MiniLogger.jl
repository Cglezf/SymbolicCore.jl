# MiniLogger.jl – configuración mínima y segura del logger

module MiniLogger

using Logging

function init_logger()
    if typeof(current_logger()) == NullLogger
        level = lowercase(get(ENV, "JULIA_LOG_LEVEL", "info"))
        lvl_sym = Symbol(uppercase(level))
        try
            global_logger(ConsoleLogger(stderr, Logging.__dict__[lvl_sym]))
        catch
            @warn "Nivel de log desconocido '$level', usando `Info`"
            global_logger(ConsoleLogger(stderr, Logging.Info))
        end
    end
end

end # module
