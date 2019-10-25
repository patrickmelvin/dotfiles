Pry::Commands.block_command "showlog", "Print DB queries into the terminal via the ActiveRecord logger" do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

Pry::Commands.block_command 'hidelog', 'Stop printing ActiveRecord queies into the terminal' do
  ActiveRecord::Base.logger = nil
end

# Prints a stacktrace or string when a pattern is encountered in the SQL logs
# Usage:
# `sql_stacktrace('SELECT * FROM')` - Prints a stacktrace when `SELECT * FROM` is encountered
# `sql_stacktrace('SELECT * FROM', 'GET QUERY RUN')` - Prints 'GET QUERY RUN' followed by 50 '*' when `SELECT * FROM` is encountered
def sql_stacktrace(sql_regex, printout = nil)
  ActiveSupport::Notifications.subscribe("sql.active_record") do |_, _, _, _, details|
    if details[:sql] =~ /#{sql_regex}/
      if printout
        puts printout
      else
        puts caller(15).join("\n")
        puts "*" * 50
      end
    end
  end
end

# Print hooks for the current request context, filtered by the callback type
# Usage: `print_hooks(:before)` to print all 'before' callbacks
def print_hooks(kind)
  _process_action_callbacks.map do |c|
    if c.kind == kind && !c.filter.is_a?(Integer)
      {
        c.filter => {
          if: c.instance_variable_get(:@if),
          unless: c.instance_variable_get(:@unless)
        }
      }
    end
  end.compact
end

# Runs a method a number of times (100 by default) and benchmarks the performance
# Usage:
# `time() { some_method }` - Runs some_method a hundred times
# `time(1000) { some_method }` - Runs some_method a thousand times
def time(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bm{ |b| b.report{ repetitions.to_i.times(&block) } }
end

require "awesome_print"
AwesomePrint.pry!

# Changes colour of strings in the pry terminal. The default colour was difficult to read.
CodeRay.scan("example", :ruby).term
module CodeRay
  module Encoders
    class Terminal < Encoder
      TOKEN_COLORS[:string][:self] = "\e[1;31m"
    end
  end
end

