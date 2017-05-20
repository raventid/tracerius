class SetTraceFunc
  def initialize
  end

  def run
    start_tracing
    yield
  rescue
    raise
  ensure
    stop_tracing
  end

  def start_tracing
    start = DateTime.now.strftime('%Q').to_i / 1000.0

    function = proc do |event, file, line, id, binding, classname|
      now_ms = DateTime.now.strftime('%Q').to_i / 1000.0
      duration = '%.3f' % (now_ms - start)
      start = DateTime.now.strftime('%Q').to_i / 1000.0
      printf "%s %s %8s %s:%-2d %10s %8s\n", DateTime.now.strftime("%S.%L"), duration, event, file, line, id, classname
    end

    set_trace_func(function) 
  end

  def stop_tracing
    set_trace_func(nil)
  end
end
