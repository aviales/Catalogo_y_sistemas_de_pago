require "test_helper"

class TransbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transbank = transbanks(:one)
  end

  test "should get index" do
    get transbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_transbank_url
    assert_response :success
  end

  test "should create transbank" do
    assert_difference('Transbank.count') do
      post transbanks_url, params: { transbank: {  } }
    end

    assert_redirected_to transbank_url(Transbank.last)
  end

  test "should show transbank" do
    get transbank_url(@transbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_transbank_url(@transbank)
    assert_response :success
  end

  test "should update transbank" do
    patch transbank_url(@transbank), params: { transbank: {  } }
    assert_redirected_to transbank_url(@transbank)
  end

  test "should destroy transbank" do
    assert_difference('Transbank.count', -1) do
      delete transbank_url(@transbank)
    end

    assert_redirected_to transbanks_url
  end
end
