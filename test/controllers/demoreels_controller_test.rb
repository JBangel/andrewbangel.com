require 'test_helper'

class DemoreelsControllerTest < ActionController::TestCase
  setup do
    @demoreel = demoreels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demoreels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demoreel" do
    assert_difference('Demoreel.count') do
      post :create, demoreel: { breakdown: @demoreel.breakdown, resume: @demoreel.resume, video: @demoreel.video }
    end

    assert_redirected_to demoreel_path(assigns(:demoreel))
  end

  test "should show demoreel" do
    get :show, id: @demoreel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demoreel
    assert_response :success
  end

  test "should update demoreel" do
    patch :update, id: @demoreel, demoreel: { breakdown: @demoreel.breakdown, resume: @demoreel.resume, video: @demoreel.video }
    assert_redirected_to demoreel_path(assigns(:demoreel))
  end

  test "should destroy demoreel" do
    assert_difference('Demoreel.count', -1) do
      delete :destroy, id: @demoreel
    end

    assert_redirected_to demoreels_path
  end
end
