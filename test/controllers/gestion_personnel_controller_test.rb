require "test_helper"

class GestionPersonnelControllerTest < ActionDispatch::IntegrationTest
  test "should get g_personnel" do
    get gestion_personnel_g_personnel_url
    assert_response :success
  end
end
