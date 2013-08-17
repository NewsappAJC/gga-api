require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: {  }
    end

    assert_response 201
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should update member" do
    put :update, id: @member, member: {  }
    assert_response 204
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_response 204
  end
end
