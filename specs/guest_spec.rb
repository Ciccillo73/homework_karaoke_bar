require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guest")
require_relative("../room")
require_relative("../song")

require('pry-byebug')

class GuestTest < MiniTest::Test
  def setup()

    @guest = Guest.new("John", 40.00)

    @room = Room.new("Red", 5, 10.00)
  end


  def test_guest_has_name
    assert_equal("John", @guest.name())
  end

  def test_guest_has_wallet
    assert_equal(40, @guest.wallet())
  end

  def test_sufficient_funds__true_if_enough
    assert_equal(true, @guest.sufficient_funds?(@room))
  end

  def test_sufficient_funds__false_if_not_enough
    customer = Guest.new("Lidya", 8.00)
    assert_equal(false, customer.sufficient_funds?(@room))
  end

  def test_guest_can_rent_a_room_decrease_money
    @guest.rent_a_room(@room)
    assert_equal(30.00, @guest.wallet())
  end

  

  end

end
