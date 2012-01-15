require 'test_helper'

class TravelTypesControllerTest < ActionController::TestCase
  setup do
    @travel_type = travel_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_type" do
    assert_difference('TravelType.count') do
      post :create, :travel_type => @travel_type.attributes
    end

    assert_redirected_to travel_type_path(assigns(:travel_type))
  end

  test "should show travel_type" do
    get :show, :id => @travel_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @travel_type.to_param
    assert_response :success
  end

  test "should update travel_type" do
    put :update, :id => @travel_type.to_param, :travel_type => @travel_type.attributes
    assert_redirected_to travel_type_path(assigns(:travel_type))
  end

  test "should destroy travel_type" do
    assert_difference('TravelType.count', -1) do
      delete :destroy, :id => @travel_type.to_param
    end

    assert_redirected_to travel_types_path
  end
end
