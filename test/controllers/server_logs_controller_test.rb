require "test_helper"

class ServerLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get server_logs_index_url
    assert_response :success
  end
end
