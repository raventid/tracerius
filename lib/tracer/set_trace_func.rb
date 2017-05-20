class SetTraceFunc
  def initialize
    start = DateTime.now.strftime('%Q').to_i / 1000.0
    set_trace_func proc { |event, file, line, id, binding, classname|
      now_ms = DateTime.now.strftime('%Q').to_i / 1000.0
      duration = '%.3f' % (now_ms - start)
      start = DateTime.now.strftime('%Q').to_i / 1000.0
      printf "%s %s %8s %s:%-2d %10s %8s\n", DateTime.now.strftime("%S.%L"), duration, event, file, line, id, classname
    }

    begin
      yield
    rescue
      raise
    ensure
      set_trace_func(nil)
    end
  end
end
