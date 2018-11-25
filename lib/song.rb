require 'pry'
# Objectives
# 1. Use class variables to keep track of data pertaining to a class.
# 3 attributes, name, artist, genre - all initialized and written methods for read/write with accessor
#
#
#
# 2. Define class methods to expose data pertaining to a class.
#
#
#
#
class Song

  attr_accessor :name, :artist, :genre, :genre_counter, :artist_counter

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def genre_counter
    @genre_counter = {}
  end

  def self.count
    @@count
  end # end of count method

  def self.artists
    @@artists.uniq
  end #end of artists method

  def self.genres
    @@genres.uniq
  end # end of genre method

  def self.genre_count
    #need to create a hash using data from the arrays being amended with each initialization
    #I have an array of genres, I need create a unique array (probably uniq!) for keys and their counts as the values
    #return the new Hash
    @genre_counter = {}
    @@genres.each do |genre_name|
      # binding.pry
      if @genre_counter[genre_name] == nil
        @genre_counter[genre_name] = 1
      else
        @genre_counter[genre_name] += 1
      end
      # binding.pry
    end
    @genre_counter
  end # end of genre count method


  def self.artist_count
    #similar structure to genre count Hash.
    #Create a hash using data from the arrays being amended with each initialization
    #I have an array of artists, I need create a unique array (probably uniq!) for keys and their counts as the values
    #return the new Hash
    # @artist_counter = 0
    # @@artists.each do |artist_name|
    #   if self.artist == artist_name
    @artist_counter = {}
    @@artists.each do |artist_name|
      # binding.pry
      if @artist_counter[artist_name] == nil
        @artist_counter[artist_name] = 1
      else
        @artist_counter[artist_name] += 1
      end
      # binding.pry
    end
    @artist_counter
  end

end ## end of song class
