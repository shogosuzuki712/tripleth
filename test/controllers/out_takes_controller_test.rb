require 'test_helper'

class OutTakesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get out_takes_new_url
    assert_response :success
  end

  test "should get show" do
    get out_takes_show_url
    assert_response :success
  end

end
