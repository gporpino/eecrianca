require 'test_helper'

class AccountablesControllerTest < ActionController::TestCase
  setup do
    @accountable = accountables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accountables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accountable" do
    assert_difference('Accountable.count') do
      post :create, accountable: { birthdate: @accountable.birthdate, company: @accountable.company, cpf: @accountable.cpf, email: @accountable.email, gender: @accountable.gender, identity_number: @accountable.identity_number, issuing: @accountable.issuing, name: @accountable.name, nationality: @accountable.nationality, occupation: @accountable.occupation, phone: @accountable.phone, place_of_birth: @accountable.place_of_birth }
    end

    assert_redirected_to accountable_path(assigns(:accountable))
  end

  test "should show accountable" do
    get :show, id: @accountable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accountable
    assert_response :success
  end

  test "should update accountable" do
    patch :update, id: @accountable, accountable: { birthdate: @accountable.birthdate, company: @accountable.company, cpf: @accountable.cpf, email: @accountable.email, gender: @accountable.gender, identity_number: @accountable.identity_number, issuing: @accountable.issuing, name: @accountable.name, nationality: @accountable.nationality, occupation: @accountable.occupation, phone: @accountable.phone, place_of_birth: @accountable.place_of_birth }
    assert_redirected_to accountable_path(assigns(:accountable))
  end

  test "should destroy accountable" do
    assert_difference('Accountable.count', -1) do
      delete :destroy, id: @accountable
    end

    assert_redirected_to accountables_path
  end
end
