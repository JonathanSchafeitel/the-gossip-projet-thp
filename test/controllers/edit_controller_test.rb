require "test_helper"

class EditControllerTest < ActionDispatch::IntegrationTest
  test "should get gossip_edit" do
    get edit_gossip_edit_url
    assert_response :success
  end
end
