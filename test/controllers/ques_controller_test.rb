require 'test_helper'

class QuesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ques_index_url
    assert_response :success
  end

  test "should get show" do
    get ques_show_url
    assert_response :success
  end

  test "should get create" do
    get ques_create_url
    assert_response :success
  end

  test "should get edit" do
    get ques_edit_url
    assert_response :success
  end

  test "should get update" do
    get ques_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ques_destroy_url
    assert_response :success
  end

end
