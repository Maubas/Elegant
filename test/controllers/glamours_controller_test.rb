require 'test_helper'

class GlamoursControllerTest < ActionController::TestCase
  setup do
    @glamour = glamours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glamours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glamour" do
    assert_difference('Glamour.count') do
      post :create, glamour: { arms: @glamour.arms, chest: @glamour.chest, class: @glamour.class, comment: @glamour.comment, feet: @glamour.feet, head: @glamour.head, legs: @glamour.legs, name: @glamour.name, user_id: @glamour.user_id, world: @glamour.world }
    end

    assert_redirected_to glamour_path(assigns(:glamour))
  end

  test "should show glamour" do
    get :show, id: @glamour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @glamour
    assert_response :success
  end

  test "should update glamour" do
    patch :update, id: @glamour, glamour: { arms: @glamour.arms, chest: @glamour.chest, class: @glamour.class, comment: @glamour.comment, feet: @glamour.feet, head: @glamour.head, legs: @glamour.legs, name: @glamour.name, user_id: @glamour.user_id, world: @glamour.world }
    assert_redirected_to glamour_path(assigns(:glamour))
  end

  test "should destroy glamour" do
    assert_difference('Glamour.count', -1) do
      delete :destroy, id: @glamour
    end

    assert_redirected_to glamours_path
  end
end
