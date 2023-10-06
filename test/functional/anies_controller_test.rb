require 'test_helper'

class AniesControllerTest < ActionController::TestCase
  setup do
    @any = anies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create any" do
    assert_difference('Any.count') do
      post :create, any: { any: @any.any }
    end

    assert_redirected_to any_path(assigns(:any))
  end

  test "should show any" do
    get :show, id: @any
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @any
    assert_response :success
  end

  test "should update any" do
    put :update, id: @any, any: { any: @any.any }
    assert_redirected_to any_path(assigns(:any))
  end

  test "should destroy any" do
    assert_difference('Any.count', -1) do
      delete :destroy, id: @any
    end

    assert_redirected_to anies_path
  end
end
