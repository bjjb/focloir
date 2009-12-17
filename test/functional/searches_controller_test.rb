require 'test_helper'

class SearchesControllerTest < ActionController::TestCase
  test "searches redirect to words" do
    get :show, :q => 'dog'
    assert_redirected_to '/words/dog'
  end
end
