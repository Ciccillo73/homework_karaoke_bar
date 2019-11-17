require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../karaoke_bar")
require_relative("../song")
require_relative("../guest")
require_relative("../room")
require('pry-byebug')

class KaraokeTest < MiniTest::Test
  def setup ()
    @karaoke = Karaoke.new("Kbar", 150.00)



    @guest1 = Guest.new("John", 40.00)
    @guest2 = Guest.new("Lidya", 50.00)
    @guest3 = Guest.new("Mark", 60.00)


    @room1 = Room.new("Red", 5, 10.00)
    @room2 = Room.new("Blue", 6, 12.00)
    @room3 = Room.new("Yellow", 7, 14.00)
    @room = []
  end

    def test_karaoke_has_name
      assert_equal("Kbar", @karaoke.name())
    end

    def test_karaoke_has_till
      assert_equal(150.00, @karaoke.till())
    end

    def add_room
      @karaoke.add_room(@room1)
      assert_equal("Red", @room1.name)
    end










end
