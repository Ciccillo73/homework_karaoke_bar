require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../song")
require_relative("../room")
require('pry-byebug')

class SongTest < MiniTest::Test
  def setup()
    @song = Song.new("Like a Prayer", "Madonna")
    @song2 = Song.new("I Wanna Dance With Somebody", "Whitney Houston")
    @song3 = Song.new("I Will Survive", "Gloria Gaynor")
    @song4 = Song.new("We Will Rock You", "Queen")

  @song_collection = [@song1, @song2, @song3, @song4]
  end

  def test_can_have_name
    assert_equal("Like a Prayer", @song.name())
  end

  def test_can_have_author
    assert_equal("Madonna", @song.author())
  end




end
