module Tracer
  class SetTraceFunc

    def run
      start_tracing
      yield
    rescue
      raise
    ensure
      stop_tracing
    end

    def start_tracing
      formatter = Tracer::Formatters::Basic.call
      set_trace_func(formatter)
    end

    def stop_tracing
      set_trace_func(nil)
    end
  end
end
