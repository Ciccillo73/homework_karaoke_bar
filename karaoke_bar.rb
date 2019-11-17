class Karaoke
  attr_reader :name, :till, :song_database
  def initialize(name, till)
    @name = name
    @till = till
    @room_avail = []
    @song_coll = Hash.new(0)
  end

  







end
