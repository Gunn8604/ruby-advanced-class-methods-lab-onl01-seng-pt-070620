class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new 
    song.save 
    song
  end
  # self.create means song.create because self is the class Song
  # in this class method, we initialize a song and save it with the .save method. If we look at the .save class method, it's saying that the class itself (song in this case) should be saved to the @@all array.
  
  def self.new_by_name(song_name)
    song = self.new 
    song.name = song_name
    song
  end
  
end   #Class End 
