require "test_helper"

class GestionProjetControllerTest < ActionDispatch::IntegrationTest
  test "should get g_projet" do
    get gestion_projet_g_projet_url
    assert_response :success
  end
end
