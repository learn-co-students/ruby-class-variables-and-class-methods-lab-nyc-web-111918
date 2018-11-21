class Song 
  attr_accessor :artist, :genre, :name
  
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize (name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count 
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    uniq_genre = @@genres.uniq
    genre_hash = {}
    
    uniq_genre.each do |genre| 
      genre_hash[genre] = @@genres.count(genre)
    end
    genre_hash
  end
  
  def self.artist_count
    uniq_artist = @@artists.uniq
    artist_hash = {}
    
    uniq_artist.each do |artist| 
      artist_hash[artist] = @@artists.count(artist)
    end
    artist_hash
  end
  
end