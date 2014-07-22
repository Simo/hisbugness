require 'test_helper'

class EnviromentsControllerTest < ActionController::TestCase
  setup do
    @enviroment = enviroments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enviroments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enviroment" do
    assert_difference('Enviroment.count') do
      post :create, enviroment: { address: @enviroment.address, descrizione: @enviroment.descrizione, issue_id: @enviroment.issue_id, project_id: @enviroment.project_id }
    end

    assert_redirected_to enviroment_path(assigns(:enviroment))
  end

  test "should show enviroment" do
    get :show, id: @enviroment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enviroment
    assert_response :success
  end

  test "should update enviroment" do
    patch :update, id: @enviroment, enviroment: { address: @enviroment.address, descrizione: @enviroment.descrizione, issue_id: @enviroment.issue_id, project_id: @enviroment.project_id }
    assert_redirected_to enviroment_path(assigns(:enviroment))
  end

  test "should destroy enviroment" do
    assert_difference('Enviroment.count', -1) do
      delete :destroy, id: @enviroment
    end

    assert_redirected_to enviroments_path
  end
end
