Pry::Commands.block_command "showlog", "Print DB queries into the terminal via the ActiveRecord logger" do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

# Usage time(100) { some_method }
def time(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bm{ |b| b.report{ repetitions.to_i.times(&block) } }
end

require "awesome_print"
AwesomePrint.pry!
