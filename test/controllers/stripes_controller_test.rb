require "test_helper"

class StripesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stripe = stripes(:one)
  end

  test "should get index" do
    get stripes_url
    assert_response :success
  end

  test "should get new" do
    get new_stripe_url
    assert_response :success
  end

  test "should create stripe" do
    assert_difference('Stripe.count') do
      post stripes_url, params: { stripe: {  } }
    end

    assert_redirected_to stripe_url(Stripe.last)
  end

  test "should show stripe" do
    get stripe_url(@stripe)
    assert_response :success
  end

  test "should get edit" do
    get edit_stripe_url(@stripe)
    assert_response :success
  end

  test "should update stripe" do
    patch stripe_url(@stripe), params: { stripe: {  } }
    assert_redirected_to stripe_url(@stripe)
  end

  test "should destroy stripe" do
    assert_difference('Stripe.count', -1) do
      delete stripe_url(@stripe)
    end

    assert_redirected_to stripes_url
  end
end
