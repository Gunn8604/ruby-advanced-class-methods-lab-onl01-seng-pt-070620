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
  #self.new_by_name means song.new_by_name
  #takes string of song and returns a song instance with that name as its name property
  
  def self.create_by_name(song_name)
    song = self.create     
    song.name = song_name
    song
  end
  #self.create_by_name means song.create_by_name
  #takes string of song and returns a song instance with that name as its name property AND the song saved into @@all
  #calls the self.create instance method on the song because we want to save the song which is done in the self.create method
  
  def self.find_by_name(song_name)
    self.all.detect { |song| song.name == song_name }
  end
  #takes string name of a song and returns matching instance of the song with that song name.
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end
  
end   #Class End 
