require 'test_helper'

class ClientEtatsCivilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_etats_civil = client_etats_civils(:one)
  end

  test "should get index" do
    get client_etats_civils_url
    assert_response :success
  end

  test "should get new" do
    get new_client_etats_civil_url
    assert_response :success
  end

  test "should create client_etats_civil" do
    assert_difference('ClientEtatsCivil.count') do
      post client_etats_civils_url, params: { client_etats_civil: { Client_id: @client_etats_civil.Client_id, DateDebut: @client_etats_civil.DateDebut, DateFin: @client_etats_civil.DateFin, EtasCivil_id: @client_etats_civil.EtasCivil_id } }
    end

    assert_redirected_to client_etats_civil_url(ClientEtatsCivil.last)
  end

  test "should show client_etats_civil" do
    get client_etats_civil_url(@client_etats_civil)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_etats_civil_url(@client_etats_civil)
    assert_response :success
  end

  test "should update client_etats_civil" do
    patch client_etats_civil_url(@client_etats_civil), params: { client_etats_civil: { Client_id: @client_etats_civil.Client_id, DateDebut: @client_etats_civil.DateDebut, DateFin: @client_etats_civil.DateFin, EtasCivil_id: @client_etats_civil.EtasCivil_id } }
    assert_redirected_to client_etats_civil_url(@client_etats_civil)
  end

  test "should destroy client_etats_civil" do
    assert_difference('ClientEtatsCivil.count', -1) do
      delete client_etats_civil_url(@client_etats_civil)
    end

    assert_redirected_to client_etats_civils_url
  end
end
