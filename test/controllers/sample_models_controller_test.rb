require 'test_helper'

class SampleModelsControllerTest < ActionController::TestCase
  setup do
    @sample_model = sample_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_model" do
    assert_difference('SampleModel.count') do
      post :create, sample_model: { schedule: @sample_model.schedule }
    end

    assert_redirected_to sample_model_path(assigns(:sample_model))
  end

  test "should show sample_model" do
    get :show, id: @sample_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample_model
    assert_response :success
  end

  test "should update sample_model" do
    patch :update, id: @sample_model, sample_model: { schedule: @sample_model.schedule }
    assert_redirected_to sample_model_path(assigns(:sample_model))
  end

  test "should destroy sample_model" do
    assert_difference('SampleModel.count', -1) do
      delete :destroy, id: @sample_model
    end

    assert_redirected_to sample_models_path
  end
end
