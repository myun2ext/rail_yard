require 'test_helper'

class AppModelsControllerTest < ActionController::TestCase
  setup do
    @app_model = app_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_model" do
    assert_difference('AppModel.count') do
      post :create, app_model: { name: @app_model.name }
    end

    assert_redirected_to app_model_path(assigns(:app_model))
  end

  test "should show app_model" do
    get :show, id: @app_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_model
    assert_response :success
  end

  test "should update app_model" do
    patch :update, id: @app_model, app_model: { name: @app_model.name }
    assert_redirected_to app_model_path(assigns(:app_model))
  end

  test "should destroy app_model" do
    assert_difference('AppModel.count', -1) do
      delete :destroy, id: @app_model
    end

    assert_redirected_to app_models_path
  end
end
