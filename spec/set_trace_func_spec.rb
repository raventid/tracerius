require_relative "../lib/tracer/set_trace_func"

# Except some number of lines to be written in standart output
describe SetTraceFunc do
  context "trace function do not raise exception" do
    it "should show me some trace" do
      SetTraceFunc.new.run { puts "hello" }
    end
  end

  context "stop tracing and reraise exception if any" do
    it "stop tracing" do
      expect { SetTraceFunc.new.run { raise "Catch me" } }.to raise_error StandardError
    end
  end
end
