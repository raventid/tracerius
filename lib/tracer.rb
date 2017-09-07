require "tracer/version"
require "tracer/set_trace_func"
require "tracer/formatters/basic"

module Tracer
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
