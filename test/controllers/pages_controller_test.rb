require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get game" do
    get :game
    assert_response :success
  end

  test "should get leaderboard" do
    get :leaderboard
    assert_response :success
  end

end
