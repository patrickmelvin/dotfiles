Pry::Commands.block_command "showlog", "Print DB queries into the terminal via the ActiveRecord logger" do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

Pry::Commands.block_command 'hidelog', 'Stop printing ActiveRecord queies into the terminal' do
  ActiveRecord::Base.logger = nil
end

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

# Usage time(100) { some_method }
def time(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bm{ |b| b.report{ repetitions.to_i.times(&block) } }
end

require "awesome_print"
AwesomePrint.pry!
