require 'test_helper'

class EmployeemodelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeemodel = employeemodels(:one)
  end

  test "should get index" do
    get employeemodels_url
    assert_response :success
  end

  test "should get new" do
    get new_employeemodel_url
    assert_response :success
  end

  test "should create employeemodel" do
    assert_difference('Employeemodel.count') do
      post employeemodels_url, params: { employeemodel: { age: @employeemodel.age, designation: @employeemodel.designation, gender: @employeemodel.gender, name: @employeemodel.name } }
    end

    assert_redirected_to employeemodel_url(Employeemodel.last)
  end

  test "should show employeemodel" do
    get employeemodel_url(@employeemodel)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeemodel_url(@employeemodel)
    assert_response :success
  end

  test "should update employeemodel" do
    patch employeemodel_url(@employeemodel), params: { employeemodel: { age: @employeemodel.age, designation: @employeemodel.designation, gender: @employeemodel.gender, name: @employeemodel.name } }
    assert_redirected_to employeemodel_url(@employeemodel)
  end

  test "should destroy employeemodel" do
    assert_difference('Employeemodel.count', -1) do
      delete employeemodel_url(@employeemodel)
    end

    assert_redirected_to employeemodels_url
  end
end
