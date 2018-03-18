require 'test_helper'

class BocconisControllerTest < ActionController::TestCase
  setup do
    @bocconi = bocconis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bocconis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bocconi" do
    assert_difference('Bocconi.count') do
      post :create, bocconi: { cover: @bocconi.cover, description: @bocconi.description, price: @bocconi.price, titolo: @bocconi.titolo }
    end

    assert_redirected_to bocconi_path(assigns(:bocconi))
  end

  test "should show bocconi" do
    get :show, id: @bocconi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bocconi
    assert_response :success
  end

  test "should update bocconi" do
    patch :update, id: @bocconi, bocconi: { cover: @bocconi.cover, description: @bocconi.description, price: @bocconi.price, titolo: @bocconi.titolo }
    assert_redirected_to bocconi_path(assigns(:bocconi))
  end

  test "should destroy bocconi" do
    assert_difference('Bocconi.count', -1) do
      delete :destroy, id: @bocconi
    end

    assert_redirected_to bocconis_path
  end
end
