require 'test_helper'

class AsideControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get aside_team_url
    assert_response :success
  end

end
