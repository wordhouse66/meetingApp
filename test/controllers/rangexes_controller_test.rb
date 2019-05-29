require 'test_helper'

class RangexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rangex = rangexes(:one)
  end

  test "should get index" do
    get rangexes_url
    assert_response :success
  end

  test "should get new" do
    get new_rangex_url
    assert_response :success
  end

  test "should create rangex" do
    assert_difference('Rangex.count') do
      post rangexes_url, params: { rangex: { finish: @rangex.finish, start: @rangex.start } }
    end

    assert_redirected_to rangex_url(Rangex.last)
  end

  test "should show rangex" do
    get rangex_url(@rangex)
    assert_response :success
  end

  test "should get edit" do
    get edit_rangex_url(@rangex)
    assert_response :success
  end

  test "should update rangex" do
    patch rangex_url(@rangex), params: { rangex: { finish: @rangex.finish, start: @rangex.start } }
    assert_redirected_to rangex_url(@rangex)
  end

  test "should destroy rangex" do
    assert_difference('Rangex.count', -1) do
      delete rangex_url(@rangex)
    end

    assert_redirected_to rangexes_url
  end
end
