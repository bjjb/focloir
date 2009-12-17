ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'

Word.source = File.expand_path(File.join(Rails.root, "tmp", "definitions"))
FileUtils.mkdir_p(Word.source)

class ActiveSupport::TestCase
  def prepare_word(word, definition)
    FileUtils.mkdir_p(Word.source)
    File.open("#{Word.source}/#{word}", 'w') do |f|
      f.print('<div class="pbk">' + definition + '</div>')
    end
  end

  def teardown
    FileUtils.rm_f(Word.source)
  end
end
