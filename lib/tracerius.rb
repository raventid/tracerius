require "tracerius/version"
require "tracerius/set_trace_func"
require "tracerius/formatters/basic"

module Tracerius
  class Runner
    def initialize(adapter=nil)
      @adapter = adapter || SetTraceFunc.new
    end

    def run
      @adapter.run { yield }
    end

    def self.run
      self.new.run { yield }
    end
  end
end
