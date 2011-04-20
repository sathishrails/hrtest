require 'test_helper'

class MandatesControllerTest < ActionController::TestCase
  setup do
    @mandate = mandates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mandates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mandate" do
    assert_difference('Mandate.count') do
      post :create, :mandate => @mandate.attributes
    end

    assert_redirected_to mandate_path(assigns(:mandate))
  end

  test "should show mandate" do
    get :show, :id => @mandate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mandate.to_param
    assert_response :success
  end

  test "should update mandate" do
    put :update, :id => @mandate.to_param, :mandate => @mandate.attributes
    assert_redirected_to mandate_path(assigns(:mandate))
  end

  test "should destroy mandate" do
    assert_difference('Mandate.count', -1) do
      delete :destroy, :id => @mandate.to_param
    end

    assert_redirected_to mandates_path
  end
end
