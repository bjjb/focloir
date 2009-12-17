require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  def test_show
    get :show, :id => 'dog'
    assert_equal Word.find_by_word('dog'), assigns(:word)
    assert_template 'show'
  end

  def test_show_an_existing_word_creates_it
    assert_no_difference 'Word.count' do
      get :show, :id => 'dog'
    end
  end
  
  def setup
    prepare_word "dog", 'a barky thing'
    get :show, :id => 'dog'
    prepare_word "cat", 'a scratchy thing'
  end
end
