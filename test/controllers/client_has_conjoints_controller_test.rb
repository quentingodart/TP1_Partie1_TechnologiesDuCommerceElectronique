require 'test_helper'

class ClientHasConjointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_has_conjoint = client_has_conjoints(:one)
  end

  test "should get index" do
    get client_has_conjoints_url
    assert_response :success
  end

  test "should get new" do
    get new_client_has_conjoint_url
    assert_response :success
  end

  test "should create client_has_conjoint" do
    assert_difference('ClientHasConjoint.count') do
      post client_has_conjoints_url, params: { client_has_conjoint: { Client_Has_Conjoint_id: @client_has_conjoint.Client_Has_Conjoint_id, Client_id: @client_has_conjoint.Client_id, DateDebut: @client_has_conjoint.DateDebut, DateFin: @client_has_conjoint.DateFin } }
    end

    assert_redirected_to client_has_conjoint_url(ClientHasConjoint.last)
  end

  test "should show client_has_conjoint" do
    get client_has_conjoint_url(@client_has_conjoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_has_conjoint_url(@client_has_conjoint)
    assert_response :success
  end

  test "should update client_has_conjoint" do
    patch client_has_conjoint_url(@client_has_conjoint), params: { client_has_conjoint: { Client_Has_Conjoint_id: @client_has_conjoint.Client_Has_Conjoint_id, Client_id: @client_has_conjoint.Client_id, DateDebut: @client_has_conjoint.DateDebut, DateFin: @client_has_conjoint.DateFin } }
    assert_redirected_to client_has_conjoint_url(@client_has_conjoint)
  end

  test "should destroy client_has_conjoint" do
    assert_difference('ClientHasConjoint.count', -1) do
      delete client_has_conjoint_url(@client_has_conjoint)
    end

    assert_redirected_to client_has_conjoints_url
  end
end
