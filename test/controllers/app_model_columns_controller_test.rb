require 'test_helper'

class AppModelColumnsControllerTest < ActionController::TestCase
  setup do
    @app_model_column = app_model_columns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_model_columns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_model_column" do
    assert_difference('AppModelColumn.count') do
      post :create, app_model_column: { allow_nil: @app_model_column.allow_nil, app_model_id: @app_model_column.app_model_id, index: @app_model_column.index, name: @app_model_column.name, type: @app_model_column.type, unique: @app_model_column.unique }
    end

    assert_redirected_to app_model_column_path(assigns(:app_model_column))
  end

  test "should show app_model_column" do
    get :show, id: @app_model_column
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_model_column
    assert_response :success
  end

  test "should update app_model_column" do
    patch :update, id: @app_model_column, app_model_column: { allow_nil: @app_model_column.allow_nil, app_model_id: @app_model_column.app_model_id, index: @app_model_column.index, name: @app_model_column.name, type: @app_model_column.type, unique: @app_model_column.unique }
    assert_redirected_to app_model_column_path(assigns(:app_model_column))
  end

  test "should destroy app_model_column" do
    assert_difference('AppModelColumn.count', -1) do
      delete :destroy, id: @app_model_column
    end

    assert_redirected_to app_model_columns_path
  end
end
