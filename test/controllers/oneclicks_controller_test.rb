require "test_helper"

class OneclicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oneclick = oneclicks(:one)
  end

  test "should get index" do
    get oneclicks_url
    assert_response :success
  end

  test "should get new" do
    get new_oneclick_url
    assert_response :success
  end

  test "should create oneclick" do
    assert_difference('Oneclick.count') do
      post oneclicks_url, params: { oneclick: {  } }
    end

    assert_redirected_to oneclick_url(Oneclick.last)
  end

  test "should show oneclick" do
    get oneclick_url(@oneclick)
    assert_response :success
  end

  test "should get edit" do
    get edit_oneclick_url(@oneclick)
    assert_response :success
  end

  test "should update oneclick" do
    patch oneclick_url(@oneclick), params: { oneclick: {  } }
    assert_redirected_to oneclick_url(@oneclick)
  end

  test "should destroy oneclick" do
    assert_difference('Oneclick.count', -1) do
      delete oneclick_url(@oneclick)
    end

    assert_redirected_to oneclicks_url
  end
end
