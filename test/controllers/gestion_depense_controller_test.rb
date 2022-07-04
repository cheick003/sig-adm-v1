require "test_helper"

class GestionDepenseControllerTest < ActionDispatch::IntegrationTest
  test "should get g_depense" do
    get gestion_depense_g_depense_url
    assert_response :success
  end
end
