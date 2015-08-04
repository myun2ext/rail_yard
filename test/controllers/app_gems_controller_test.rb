require 'test_helper'

class AppGemsControllerTest < ActionController::TestCase
  setup do
    @app_gem = app_gems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_gems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_gem" do
    assert_difference('AppGem.count') do
      post :create, app_gem: { name: @app_gem.name, version: @app_gem.version }
    end

    assert_redirected_to app_gem_path(assigns(:app_gem))
  end

  test "should show app_gem" do
    get :show, id: @app_gem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_gem
    assert_response :success
  end

  test "should update app_gem" do
    patch :update, id: @app_gem, app_gem: { name: @app_gem.name, version: @app_gem.version }
    assert_redirected_to app_gem_path(assigns(:app_gem))
  end

  test "should destroy app_gem" do
    assert_difference('AppGem.count', -1) do
      delete :destroy, id: @app_gem
    end

    assert_redirected_to app_gems_path
  end
end
