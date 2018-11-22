require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []  #should be unique
  @@artists = [] #should be unique

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre #will add, but no duplicates
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    #returns a hash of genres and the number
    #of songs that have those genres {genre, quantity}
  #if the hash already contains a key of a particular genre.
  #If so, increment the value of that key by one, otherwise,
  # create a new key/value pair.
    counting_genres = {}
  #iterate over @@genres
  #if the genre exists
  #adds to the quantity (value)
  #each time it finds that genre
    @@genres.each do |genre|
      if counting_genres[genre]
        counting_genres[genre] += 1
      else
        counting_genres[genre] = 1
      end

    end
    counting_genres
  end

  def self.artist_count
    #returns a hash of artists and the number of songs that have
    # those artists {artist, quantity}
    #same as genre count except for artists
    counting_artists = {}
    @@artists.each do |artist|
      if counting_artists[artist]
        counting_artists[artist] += 1
      else
        counting_artists[artist] = 1
      end

    end
    counting_artists
  end


end
