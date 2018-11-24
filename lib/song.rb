class Song
  attr_reader :name, :artist, :genre

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
    @@count += 1
    @@artists << artist #if !@@artists.include?(artist)
    @@genres << genre #if !@@genres.include?(genre)
  end

<<<<<<< HEAD
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |genre|
=======
  def count
    @@count
  end

  def artists
    @@artists.uniq
  end

  def genres
    @@genres.uniq
  end

  def genre_count
    genre_hash = hash.new(0)
    genres.each do |genre|
>>>>>>> 3fb3a70960908531c3b15f7ae4933663ac4ac0c3
      genre_hash[genre] += 1
    end
    genre_hash
  end

<<<<<<< HEAD
  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |artist|
      artist_hash[artist] += 1
=======
  def artist_count
    artist_hash = hash.new(0)
    artists.each do |artist|
      genre_hash[artist] += 1
>>>>>>> 3fb3a70960908531c3b15f7ae4933663ac4ac0c3
    end
    artist_hash
  end

end # End of Song class
