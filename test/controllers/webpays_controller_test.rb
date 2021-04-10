require "test_helper"

class WebpaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webpay = webpays(:one)
  end

  test "should get index" do
    get webpays_url
    assert_response :success
  end

  test "should get new" do
    get new_webpay_url
    assert_response :success
  end

  test "should create webpay" do
    assert_difference('Webpay.count') do
      post webpays_url, params: { webpay: {  } }
    end

    assert_redirected_to webpay_url(Webpay.last)
  end

  test "should show webpay" do
    get webpay_url(@webpay)
    assert_response :success
  end

  test "should get edit" do
    get edit_webpay_url(@webpay)
    assert_response :success
  end

  test "should update webpay" do
    patch webpay_url(@webpay), params: { webpay: {  } }
    assert_redirected_to webpay_url(@webpay)
  end

  test "should destroy webpay" do
    assert_difference('Webpay.count', -1) do
      delete webpay_url(@webpay)
    end

    assert_redirected_to webpays_url
  end
end
