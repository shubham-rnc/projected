require 'test_helper'

class InstitutehandlersControllerTest < ActionController::TestCase
  setup do
    @institutehandler = institutehandlers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institutehandlers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institutehandler" do
    assert_difference('Institutehandler.count') do
      post :create, institutehandler: { Established: @institutehandler.Established, accomodation: @institutehandler.accomodation, address: @institutehandler.address, affiliation: @institutehandler.affiliation, affiliation: @institutehandler.affiliation, city: @institutehandler.city, country: @institutehandler.country, descacademics: @institutehandler.descacademics, desccampus: @institutehandler.desccampus, desceaa: @institutehandler.desceaa, descinfra: @institutehandler.descinfra, descintroduction: @institutehandler.descintroduction, descmotto: @institutehandler.descmotto, descnotablesuccess: @institutehandler.descnotablesuccess, latitute: @institutehandler.latitute, longitude: @institutehandler.longitude, name: @institutehandler.name, state: @institutehandler.state, type: @institutehandler.type, website: @institutehandler.website }
    end

    assert_redirected_to institutehandler_path(assigns(:institutehandler))
  end

  test "should show institutehandler" do
    get :show, id: @institutehandler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institutehandler
    assert_response :success
  end

  test "should update institutehandler" do
    patch :update, id: @institutehandler, institutehandler: { Established: @institutehandler.Established, accomodation: @institutehandler.accomodation, address: @institutehandler.address, affiliation: @institutehandler.affiliation, affiliation: @institutehandler.affiliation, city: @institutehandler.city, country: @institutehandler.country, descacademics: @institutehandler.descacademics, desccampus: @institutehandler.desccampus, desceaa: @institutehandler.desceaa, descinfra: @institutehandler.descinfra, descintroduction: @institutehandler.descintroduction, descmotto: @institutehandler.descmotto, descnotablesuccess: @institutehandler.descnotablesuccess, latitute: @institutehandler.latitute, longitude: @institutehandler.longitude, name: @institutehandler.name, state: @institutehandler.state, type: @institutehandler.type, website: @institutehandler.website }
    assert_redirected_to institutehandler_path(assigns(:institutehandler))
  end

  test "should destroy institutehandler" do
    assert_difference('Institutehandler.count', -1) do
      delete :destroy, id: @institutehandler
    end

    assert_redirected_to institutehandlers_path
  end
end
