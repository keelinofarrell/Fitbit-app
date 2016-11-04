require 'test_helper'

class MyFitbitsControllerTest < ActionController::TestCase
  setup do
    @my_fitbit = my_fitbits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_fitbits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_fitbit" do
    assert_difference('MyFitbit.count') do
      post :create, my_fitbit: { fitbit_id: @my_fitbit.fitbit_id, member_id: @my_fitbit.member_id, steps: @my_fitbit.steps }
    end

    assert_redirected_to my_fitbit_path(assigns(:my_fitbit))
  end

  test "should show my_fitbit" do
    get :show, id: @my_fitbit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_fitbit
    assert_response :success
  end

  test "should update my_fitbit" do
    patch :update, id: @my_fitbit, my_fitbit: { fitbit_id: @my_fitbit.fitbit_id, member_id: @my_fitbit.member_id, steps: @my_fitbit.steps }
    assert_redirected_to my_fitbit_path(assigns(:my_fitbit))
  end

  test "should destroy my_fitbit" do
    assert_difference('MyFitbit.count', -1) do
      delete :destroy, id: @my_fitbit
    end

    assert_redirected_to my_fitbits_path
  end
end
