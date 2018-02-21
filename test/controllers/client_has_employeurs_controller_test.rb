require 'test_helper'

class ClientHasEmployeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_has_employeur = client_has_employeurs(:one)
  end

  test "should get index" do
    get client_has_employeurs_url
    assert_response :success
  end

  test "should get new" do
    get new_client_has_employeur_url
    assert_response :success
  end

  test "should create client_has_employeur" do
    assert_difference('ClientHasEmployeur.count') do
      post client_has_employeurs_url, params: { client_has_employeur: { Client_id: @client_has_employeur.Client_id, DateDebut: @client_has_employeur.DateDebut, DateFin: @client_has_employeur.DateFin, Employeur_id: @client_has_employeur.Employeur_id } }
    end

    assert_redirected_to client_has_employeur_url(ClientHasEmployeur.last)
  end

  test "should show client_has_employeur" do
    get client_has_employeur_url(@client_has_employeur)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_has_employeur_url(@client_has_employeur)
    assert_response :success
  end

  test "should update client_has_employeur" do
    patch client_has_employeur_url(@client_has_employeur), params: { client_has_employeur: { Client_id: @client_has_employeur.Client_id, DateDebut: @client_has_employeur.DateDebut, DateFin: @client_has_employeur.DateFin, Employeur_id: @client_has_employeur.Employeur_id } }
    assert_redirected_to client_has_employeur_url(@client_has_employeur)
  end

  test "should destroy client_has_employeur" do
    assert_difference('ClientHasEmployeur.count', -1) do
      delete client_has_employeur_url(@client_has_employeur)
    end

    assert_redirected_to client_has_employeurs_url
  end
end
