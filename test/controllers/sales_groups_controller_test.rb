require 'test_helper'

class SalesGroupsControllerTest < ActionController::TestCase
  setup do
    @sales_group = sales_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_group" do
    assert_difference('SalesGroup.count') do
      post :create, sales_group: {  }
    end

    assert_redirected_to sales_group_path(assigns(:sales_group))
  end

  test "should show sales_group" do
    get :show, id: @sales_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_group
    assert_response :success
  end

  test "should update sales_group" do
    patch :update, id: @sales_group, sales_group: {  }
    assert_redirected_to sales_group_path(assigns(:sales_group))
  end

  test "should destroy sales_group" do
    assert_difference('SalesGroup.count', -1) do
      delete :destroy, id: @sales_group
    end

    assert_redirected_to sales_groups_path
  end
end
