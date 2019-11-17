require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../room")
require_relative("../song")
require_relative("../guest")

require('pry-byebug')

class RoomTest < MiniTest::Test
  def setup ()
    @room = Room.new("Red", 5, 10)
  end


  def test_pub_has_name
    assert_equal("Red", @room.name)
  end

  def test_room_space
    assert_equal(5, @room.space)
  end

  def test_room_has_price
    assert_equal(10, @room.price)
  end

  def can_add_song_to_room
    @song.can_add_song(@room)
    assert_equal("La Isla Bonita", @song.name)
  end


end
