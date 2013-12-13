require 'test_helper'

class Api::VotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get for_bill" do
    get :for_bill
    assert_response :success
  end

end
