require "test_helper"

class VouchersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vouchers_index_url
    assert_response :success
  end

  test "should get show" do
    get vouchers_show_url
    assert_response :success
  end

  test "should get new" do
    get vouchers_new_url
    assert_response :success
  end
end
