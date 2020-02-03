class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@artist = []
  @@genre = []
  
 def initialize(song_name,artist,genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count 
    @@count
  end
  
  def self.genre
    def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  