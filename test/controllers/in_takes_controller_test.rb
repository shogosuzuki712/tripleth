require 'test_helper'

class InTakesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get in_takes_new_url
    assert_response :success
  end

  test "should get show" do
    get in_takes_show_url
    assert_response :success
  end

end
