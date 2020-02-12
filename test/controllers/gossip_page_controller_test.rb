require 'test_helper'

class GossipPageControllerTest < ActionDispatch::IntegrationTest
  test "should get show_gossip" do
    get gossip_page_show_gossip_url
    assert_response :success
  end

end
