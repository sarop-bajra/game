require 'test_helper'

class FantasyteamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fantasyteams_new_url
    assert_response :success
  end

  test "should get create" do
    get fantasyteams_create_url
    assert_response :success
  end

  test "should get index" do
    get fantasyteams_index_url
    assert_response :success
  end

  test "should get show" do
    get fantasyteams_show_url
    assert_response :success
  end

  test "should get edit" do
    get fantasyteams_edit_url
    assert_response :success
  end

  test "should get update" do
    get fantasyteams_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fantasyteams_destroy_url
    assert_response :success
  end

end
