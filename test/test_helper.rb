ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'

Word.source = File.expand_path(File.join(Rails.root, "tmp", "definitions"))

class ActiveSupport::TestCase
  def prepare_word(word, definition)
    FileUtils.mkdir_p(Word.source) unless File.directory?(Word.source)
    File.open("#{Word.source}/#{URI::unescape(word)}", 'w') do |f|
      f.print('<div class="pbk">' + definition + '</div>')
    end
  end
end
