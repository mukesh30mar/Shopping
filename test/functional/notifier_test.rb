require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(:one))
    assert_equal "online book store confirmation", mail.subject
    assert_equal ["mukesh.kumar@vinsol.com"], mail.to
    assert_equal ["mukesh.sumit20@gmail.com"], mail.from
   # assert_match /1 * Programming Ruby 1.9/, mail.body.encoded
  end

  test "order_shipped" do
      mail = Notifier.order_received(orders(:one))
      assert_equal "online book store confirmation", mail.subject
      assert_equal ["mukesh.kumar@vinsol.com"], mail.to
      assert_equal ["mukesh.sumit20@gmail.com"], mail.from
  #  assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/, mail.body.encoded
  end

end
