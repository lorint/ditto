require 'test_helper'

class UserPlaceCategoryMatchesControllerTest < ActionController::TestCase
  setup do
    @user_place_category_match = user_place_category_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_place_category_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_place_category_match" do
    assert_difference('UserPlaceCategoryMatch.count') do
      post :create, user_place_category_match: { match_id: @user_place_category_match.match_id, upc_id: @user_place_category_match.upc_id }
    end

    assert_redirected_to user_place_category_match_path(assigns(:user_place_category_match))
  end

  test "should show user_place_category_match" do
    get :show, id: @user_place_category_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_place_category_match
    assert_response :success
  end

  test "should update user_place_category_match" do
    patch :update, id: @user_place_category_match, user_place_category_match: { match_id: @user_place_category_match.match_id, upc_id: @user_place_category_match.upc_id }
    assert_redirected_to user_place_category_match_path(assigns(:user_place_category_match))
  end

  test "should destroy user_place_category_match" do
    assert_difference('UserPlaceCategoryMatch.count', -1) do
      delete :destroy, id: @user_place_category_match
    end

    assert_redirected_to user_place_category_matches_path
  end
end
