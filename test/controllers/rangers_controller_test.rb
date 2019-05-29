require 'test_helper'

class RangersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranger = rangers(:one)
  end

  test "should get index" do
    get rangers_url
    assert_response :success
  end

  test "should get new" do
    get new_ranger_url
    assert_response :success
  end

  test "should create ranger" do
    assert_difference('Ranger.count') do
      post rangers_url, params: { ranger: { start: @ranger.start } }
    end

    assert_redirected_to ranger_url(Ranger.last)
  end

  test "should show ranger" do
    get ranger_url(@ranger)
    assert_response :success
  end

  test "should get edit" do
    get edit_ranger_url(@ranger)
    assert_response :success
  end

  test "should update ranger" do
    patch ranger_url(@ranger), params: { ranger: { start: @ranger.start } }
    assert_redirected_to ranger_url(@ranger)
  end

  test "should destroy ranger" do
    assert_difference('Ranger.count', -1) do
      delete ranger_url(@ranger)
    end

    assert_redirected_to rangers_url
  end
end
