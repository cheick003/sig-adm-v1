require "test_helper"

class GestionArchiveControllerTest < ActionDispatch::IntegrationTest
  test "should get g_archive" do
    get gestion_archive_g_archive_url
    assert_response :success
  end
end
