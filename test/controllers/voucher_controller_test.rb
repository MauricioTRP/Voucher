require "test_helper"

class VoucherControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get voucher_index_url
    assert_response :success
  end

  test "should get show" do
    get voucher_show_url
    assert_response :success
  end

  test "should get new" do
    get voucher_new_url
    assert_response :success
  end

  test "should get edit" do
    get voucher_edit_url
    assert_response :success
  end
end
