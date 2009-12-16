require 'test_helper'

class LookupWordTest < ActionController::IntegrationTest
  test "lookup dog" do
    visit root_path
    fill_in 'Word', :with => 'dog'
    click_button 'Search'
    assert_contain 'dog'
    assert_contain 'Canis familiaris'
  end
end
