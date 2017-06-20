require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get game_map_url
    assert_response :success
  end

  test "should get menu" do
    get game_menu_url
    assert_response :success
  end

end
