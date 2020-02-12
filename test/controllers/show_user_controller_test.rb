require 'test_helper'

class ShowUserControllerTest < ActionDispatch::IntegrationTest
  test "should get profil" do
    get show_user_profil_url
    assert_response :success
  end

end
