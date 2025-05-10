require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # This will help us monitor emails sent during the test
  # Basically imports assert_emails
  include ActionMailer::TestHelper
  test "sends email notifications when back in stock" do
    product = products(:tshirt)

    product.update(inventory_count: 0)

    # Essentially, this asserts 2 emails are sent when the callback is run
    assert_emails 2 do
      product.update(inventory_count: 99)
    end
  end
end
