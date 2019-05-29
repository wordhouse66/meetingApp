require 'test_helper'

class RugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rug = rugs(:one)
  end

  test "should get index" do
    get rugs_url
    assert_response :success
  end

  test "should get new" do
    get new_rug_url
    assert_response :success
  end

  test "should create rug" do
    assert_difference('Rug.count') do
      post rugs_url, params: { rug: { name: @rug.name } }
    end

    assert_redirected_to rug_url(Rug.last)
  end

  test "should show rug" do
    get rug_url(@rug)
    assert_response :success
  end

  test "should get edit" do
    get edit_rug_url(@rug)
    assert_response :success
  end

  test "should update rug" do
    patch rug_url(@rug), params: { rug: { name: @rug.name } }
    assert_redirected_to rug_url(@rug)
  end

  test "should destroy rug" do
    assert_difference('Rug.count', -1) do
      delete rug_url(@rug)
    end

    assert_redirected_to rugs_url
  end
end
