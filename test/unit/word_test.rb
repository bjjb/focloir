require 'test_helper'

class WordTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Word.new(:word => 'dog').valid?
  end

  def test_word_is_sanitised_before_save
    word = Word.create(:word => ' Dog ', :definition => "woof!")
    assert_equal('dog', word.word)
  end

  def test_definition_is_looked_up_on_create
    prepare_word("cat", "miaow")
    word = Word.create(:word => 'cat')
    assert word.definition =~ /miaow/
  end

  def test_definition_is_not_looked_up_if_set
    assert_nothing_raised do
      Word.create(:word => "bat", :definition => "screech")
    end
  end
end
