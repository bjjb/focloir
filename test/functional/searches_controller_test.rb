require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  test "searches redirect to words" do
    get :show, :q => 'dog'
    assert_redirected_to '/words/dog'
  end

  test "you can use spaces" do
    raise "Ah! (#{Word.source})" unless File.directory?(Word.source)
    prepare_word "hara kiri", "seppuku"
    assert_nothing_raised do
      get :show, :q => 'hara kiri'
    end
  end
end
