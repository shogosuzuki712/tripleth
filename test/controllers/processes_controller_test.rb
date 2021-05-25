require 'test_helper'

class ProcessesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get processes_index_url
    assert_response :success
  end

  test "should get new" do
    get processes_new_url
    assert_response :success
  end

  test "should get show" do
    get processes_show_url
    assert_response :success
  end

end
