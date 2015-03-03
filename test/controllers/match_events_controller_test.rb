require 'test_helper'

class MatchEventsControllerTest < ActionController::TestCase
  setup do
    @match_event = match_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_event" do
    assert_difference('MatchEvent.count') do
      post :create, match_event: { event_id: @match_event.event_id, match_id: @match_event.match_id }
    end

    assert_redirected_to match_event_path(assigns(:match_event))
  end

  test "should show match_event" do
    get :show, id: @match_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_event
    assert_response :success
  end

  test "should update match_event" do
    patch :update, id: @match_event, match_event: { event_id: @match_event.event_id, match_id: @match_event.match_id }
    assert_redirected_to match_event_path(assigns(:match_event))
  end

  test "should destroy match_event" do
    assert_difference('MatchEvent.count', -1) do
      delete :destroy, id: @match_event
    end

    assert_redirected_to match_events_path
  end
end
