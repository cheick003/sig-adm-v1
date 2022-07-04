require "test_helper"

class GestionCourrierControllerTest < ActionDispatch::IntegrationTest
  test "should get g_courrier" do
    get gestion_courrier_g_courrier_url
    assert_response :success
  end
end
