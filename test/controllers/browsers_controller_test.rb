require 'test_helper'

class BrowsersControllerTest < ActionController::TestCase
  setup do
    @browser = browsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:browsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create browser" do
    assert_difference('Browser.count') do
      post :create, browser: { issue_id: @browser.issue_id, name: @browser.name, version: @browser.version }
    end

    assert_redirected_to browser_path(assigns(:browser))
  end

  test "should show browser" do
    get :show, id: @browser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @browser
    assert_response :success
  end

  test "should update browser" do
    patch :update, id: @browser, browser: { issue_id: @browser.issue_id, name: @browser.name, version: @browser.version }
    assert_redirected_to browser_path(assigns(:browser))
  end

  test "should destroy browser" do
    assert_difference('Browser.count', -1) do
      delete :destroy, id: @browser
    end

    assert_redirected_to browsers_path
  end
end
