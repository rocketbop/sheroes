require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select 'div#columns div#side a', minimum: 3 # Fails unless there are three a elements that match the selector.
    assert_select 'h1' # checks that there is a h1 element
  end

end
