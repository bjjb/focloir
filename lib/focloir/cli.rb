require 'focloir'
require 'optparse'
require 'forwardable'

module Focloir
  class CLI < OptionParser
    class << self
      extend Forwardable
      def instance
        @instance ||= new
      end
      delegate [:on, :start] => :instance
    end

    on "-h", "--help", "Print this", &method(:help)

    def start(args = ARGV)
      catch(:done) do
        order!(args)
        args.each { |arg| out.puts(focloir.lookup(arg)) }
      end
    end
  end
end
