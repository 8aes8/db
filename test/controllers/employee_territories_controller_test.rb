require 'test_helper'

class EmployeeTerritoriesControllerTest < ActionController::TestCase
  setup do
    @employee_territory = employee_territories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_territories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_territory" do
    assert_difference('EmployeeTerritorie.count') do
      post :create, employee_territory: {  }
    end

    assert_redirected_to employee_territory_path(assigns(:employee_territory))
  end

  test "should show employee_territory" do
    get :show, id: @employee_territory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_territory
    assert_response :success
  end

  test "should update employee_territory" do
    patch :update, id: @employee_territory, employee_territory: {  }
    assert_redirected_to employee_territory_path(assigns(:employee_territory))
  end

  test "should destroy employee_territory" do
    assert_difference('EmployeeTerritorie.count', -1) do
      delete :destroy, id: @employee_territory
    end

    assert_redirected_to employee_territories_path
  end
end
