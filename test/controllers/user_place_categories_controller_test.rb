require 'test_helper'

class UserPlaceCategoriesControllerTest < ActionController::TestCase
  setup do
    @user_place_category = user_place_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_place_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_place_category" do
    assert_difference('UserPlaceCategory.count') do
      post :create, user_place_category: { placecat_id: @user_place_category.placecat_id, userplace_id: @user_place_category.userplace_id }
    end

    assert_redirected_to user_place_category_path(assigns(:user_place_category))
  end

  test "should show user_place_category" do
    get :show, id: @user_place_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_place_category
    assert_response :success
  end

  test "should update user_place_category" do
    patch :update, id: @user_place_category, user_place_category: { placecat_id: @user_place_category.placecat_id, userplace_id: @user_place_category.userplace_id }
    assert_redirected_to user_place_category_path(assigns(:user_place_category))
  end

  test "should destroy user_place_category" do
    assert_difference('UserPlaceCategory.count', -1) do
      delete :destroy, id: @user_place_category
    end

    assert_redirected_to user_place_categories_path
  end
end
