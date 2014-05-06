require 'test_helper'

class PostControllerTest < ActionController::TestCase
  test "should get index,create,new,edit" do
    get :index,create,new,edit
    assert_response :success
  end

end
