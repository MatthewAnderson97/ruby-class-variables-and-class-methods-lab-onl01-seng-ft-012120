class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@artists = []
  @@genres = []
  
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
    @@genre.uniq
  end
  
  def self.artist
    @@artist.uniq
  end
  
   def self.genre_count
    genre_count = Hash.new(0)
    @@genre.each {|genre| genre_count[genre] += 1}
    genre_count
  end
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artist.each {|artist| artist_count[artist] += 1}
    artist_count
  end

end 