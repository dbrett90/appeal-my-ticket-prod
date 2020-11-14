require 'test_helper'

class TicketComplaintsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ticket_complaints_index_url
    assert_response :success
  end

  test "should get new" do
    get ticket_complaints_new_url
    assert_response :success
  end

  test "should get edit" do
    get ticket_complaints_edit_url
    assert_response :success
  end

  test "should get create" do
    get ticket_complaints_create_url
    assert_response :success
  end

  test "should get update" do
    get ticket_complaints_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ticket_complaints_destroy_url
    assert_response :success
  end

end
