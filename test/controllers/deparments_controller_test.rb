require 'test_helper'

class DeparmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deparment = deparments(:one)
  end

  test "should get index" do
    get deparments_url
    assert_response :success
  end

  test "should get new" do
    get new_deparment_url
    assert_response :success
  end

  test "should create deparment" do
    assert_difference('Deparment.count') do
      post deparments_url, params: { deparment: { deparment_name: @deparment.deparment_name } }
    end

    assert_redirected_to deparment_url(Deparment.last)
  end

  test "should show deparment" do
    get deparment_url(@deparment)
    assert_response :success
  end

  test "should get edit" do
    get edit_deparment_url(@deparment)
    assert_response :success
  end

  test "should update deparment" do
    patch deparment_url(@deparment), params: { deparment: { deparment_name: @deparment.deparment_name } }
    assert_redirected_to deparment_url(@deparment)
  end

  test "should destroy deparment" do
    assert_difference('Deparment.count', -1) do
      delete deparment_url(@deparment)
    end

    assert_redirected_to deparments_url
  end
end
