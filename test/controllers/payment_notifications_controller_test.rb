require 'test_helper'

class PaymentNotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get payment_notifications_create_url
    assert_response :success
  end

end
