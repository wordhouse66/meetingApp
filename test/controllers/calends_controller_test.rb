require 'test_helper'

class CalendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calend = calends(:one)
  end

  test "should get index" do
    get calends_url
    assert_response :success
  end

  test "should get new" do
    get new_calend_url
    assert_response :success
  end

  test "should create calend" do
    assert_difference('Calend.count') do
      post calends_url, params: { calend: { dater: @calend.dater } }
    end

    assert_redirected_to calend_url(Calend.last)
  end

  test "should show calend" do
    get calend_url(@calend)
    assert_response :success
  end

  test "should get edit" do
    get edit_calend_url(@calend)
    assert_response :success
  end

  test "should update calend" do
    patch calend_url(@calend), params: { calend: { dater: @calend.dater } }
    assert_redirected_to calend_url(@calend)
  end

  test "should destroy calend" do
    assert_difference('Calend.count', -1) do
      delete calend_url(@calend)
    end

    assert_redirected_to calends_url
  end
end
