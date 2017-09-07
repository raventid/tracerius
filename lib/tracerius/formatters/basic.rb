require 'date'

module Tracerius
  module Formatters
    class Basic
      def self.call
        start = ::DateTime.now.strftime('%Q').to_i / 1000.0

        proc do |event, file, line, id, binding, classname|
          now_ms = ::DateTime.now.strftime('%Q').to_i / 1000.0
          duration = '%.3f' % (now_ms - start)
          start = ::DateTime.now.strftime('%Q').to_i / 1000.0
          printf "%s %s %8s %s:%-2d %10s %8s\n", ::DateTime.now.strftime("%S.%L"), duration, event, file, line, id, classname
        end
      end
    end
  end
end
