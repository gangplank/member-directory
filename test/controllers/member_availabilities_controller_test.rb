require 'test_helper'

class MemberAvailabilitiesControllerTest < ActionController::TestCase
  setup do
    @member_availability = member_availabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_availabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_availability" do
    assert_difference('MemberAvailability.count') do
      post :create, member_availability: { availability_id: @member_availability.availability_id, member_id: @member_availability.member_id }
    end

    assert_redirected_to member_availability_path(assigns(:member_availability))
  end

  test "should show member_availability" do
    get :show, id: @member_availability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_availability
    assert_response :success
  end

  test "should update member_availability" do
    patch :update, id: @member_availability, member_availability: { availability_id: @member_availability.availability_id, member_id: @member_availability.member_id }
    assert_redirected_to member_availability_path(assigns(:member_availability))
  end

  test "should destroy member_availability" do
    assert_difference('MemberAvailability.count', -1) do
      delete :destroy, id: @member_availability
    end

    assert_redirected_to member_availabilities_path
  end
end
