require 'test_helper'

class TicketAuditsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ticket_audits_index_url
    assert_response :success
  end

  test "should get show" do
    get ticket_audits_show_url
    assert_response :success
  end

  test "should get new" do
    get ticket_audits_new_url
    assert_response :success
  end

  test "should get create" do
    get ticket_audits_create_url
    assert_response :success
  end

  test "should get update" do
    get ticket_audits_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ticket_audits_destroy_url
    assert_response :success
  end

end
