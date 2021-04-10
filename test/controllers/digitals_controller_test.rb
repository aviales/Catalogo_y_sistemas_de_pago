require "test_helper"

class DigitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @digital = digitals(:one)
  end

  test "should get index" do
    get digitals_url
    assert_response :success
  end

  test "should get new" do
    get new_digital_url
    assert_response :success
  end

  test "should create digital" do
    assert_difference('Digital.count') do
      post digitals_url, params: { digital: {  } }
    end

    assert_redirected_to digital_url(Digital.last)
  end

  test "should show digital" do
    get digital_url(@digital)
    assert_response :success
  end

  test "should get edit" do
    get edit_digital_url(@digital)
    assert_response :success
  end

  test "should update digital" do
    patch digital_url(@digital), params: { digital: {  } }
    assert_redirected_to digital_url(@digital)
  end

  test "should destroy digital" do
    assert_difference('Digital.count', -1) do
      delete digital_url(@digital)
    end

    assert_redirected_to digitals_url
  end
end
