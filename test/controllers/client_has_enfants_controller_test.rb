require 'test_helper'

class ClientHasEnfantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_has_enfant = client_has_enfants(:one)
  end

  test "should get index" do
    get client_has_enfants_url
    assert_response :success
  end

  test "should get new" do
    get new_client_has_enfant_url
    assert_response :success
  end

  test "should create client_has_enfant" do
    assert_difference('ClientHasEnfant.count') do
      post client_has_enfants_url, params: { client_has_enfant: { Client_id: @client_has_enfant.Client_id, Enfant_id: @client_has_enfant.Enfant_id, Lien: @client_has_enfant.Lien } }
    end

    assert_redirected_to client_has_enfant_url(ClientHasEnfant.last)
  end

  test "should show client_has_enfant" do
    get client_has_enfant_url(@client_has_enfant)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_has_enfant_url(@client_has_enfant)
    assert_response :success
  end

  test "should update client_has_enfant" do
    patch client_has_enfant_url(@client_has_enfant), params: { client_has_enfant: { Client_id: @client_has_enfant.Client_id, Enfant_id: @client_has_enfant.Enfant_id, Lien: @client_has_enfant.Lien } }
    assert_redirected_to client_has_enfant_url(@client_has_enfant)
  end

  test "should destroy client_has_enfant" do
    assert_difference('ClientHasEnfant.count', -1) do
      delete client_has_enfant_url(@client_has_enfant)
    end

    assert_redirected_to client_has_enfants_url
  end
end
