require 'tracerius'

# Except some number of lines to be written in standart output
describe Tracerius::Runner do

  context "code under the trace do not raise any exception" do
    it "shows me some trace where I can see 'hello'" do
      expect{ subject.run { puts "hello" } }.to output(/hello/).to_stdout
    end
  end

  context "stop tracing and reraise exception if any" do
    it "stops tracing and throws exeption" do
      expect { subject.run { raise "Catch me" } }.to raise_error StandardError
    end
  end
end
