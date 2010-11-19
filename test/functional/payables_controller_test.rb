require 'test_helper'

class PayablesControllerTest < ActionController::TestCase
  setup do
    @payable = payables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payable" do
    assert_difference('Payable.count') do
      post :create, :payable => @payable.attributes
    end

    assert_redirected_to payable_path(assigns(:payable))
  end

  test "should show payable" do
    get :show, :id => @payable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @payable.to_param
    assert_response :success
  end

  test "should update payable" do
    put :update, :id => @payable.to_param, :payable => @payable.attributes
    assert_redirected_to payable_path(assigns(:payable))
  end

  test "should destroy payable" do
    assert_difference('Payable.count', -1) do
      delete :destroy, :id => @payable.to_param
    end

    assert_redirected_to payables_path
  end
end
