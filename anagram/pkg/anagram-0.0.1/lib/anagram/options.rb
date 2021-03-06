require 'optparse'

module Anagram
  class Options
    DEFAULT_DICTIONARY = "/usr/share/dict/words"
    attr_reader :dictionary
    attr_reader :words_to_find
    def initialize(argv)
      @dictionary = DEFAULT_DICTIONARY
      parse(argv)
      @words_to_find = argv
    end

    private
    def parse(argv)
      OptionParser.new do |opts|
        opts.banner = "Usage: anagram [options] words......"
        opts.on( "-d", "--dict path", String,"Path of dictionary") do |dict|
          @dictionary = dict
        end
        opts.on("-h", "--help",String,"Show this message") do
          puts opts
          exit
        end

        begin
          argv = ["-h"] if argv.empty?
          opts.parse!(argv)
        rescue Option::ParseError => e
          STDERR.puts e.message,"\n",opts
          exit(-1)
        end
      end
    end
  end
end


