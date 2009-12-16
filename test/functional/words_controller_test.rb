require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  def test_show
    get :show, :id => Word.first
    assert_template 'show'
  end
  
  def test_destroy
    word = Word.first
    delete :destroy, :id => word
    assert_redirected_to root_url
    assert !Word.exists?(word.id)
  end

  def setup
    Word.find_or_create_by_word "dog", :definition => 'a barky thing'
  end
end
