require 'test_helper'

class EmployeeModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_model = employee_models(:one)
  end

  test "should get index" do
    get employee_models_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_model_url
    assert_response :success
  end

  test "should create employee_model" do
    assert_difference('EmployeeModel.count') do
      post employee_models_url, params: { employee_model: { age: @employee_model.age, designation: @employee_model.designation, gender: @employee_model.gender, name: @employee_model.name } }
    end

    assert_redirected_to employee_model_url(EmployeeModel.last)
  end

  test "should show employee_model" do
    get employee_model_url(@employee_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_model_url(@employee_model)
    assert_response :success
  end

  test "should update employee_model" do
    patch employee_model_url(@employee_model), params: { employee_model: { age: @employee_model.age, designation: @employee_model.designation, gender: @employee_model.gender, name: @employee_model.name } }
    assert_redirected_to employee_model_url(@employee_model)
  end

  test "should destroy employee_model" do
    assert_difference('EmployeeModel.count', -1) do
      delete employee_model_url(@employee_model)
    end

    assert_redirected_to employee_models_url
  end
end
