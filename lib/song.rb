class Song

  attr_accessor :name, :artist, :genre

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # create an empty genre_count hash
    genre_count = {}
    # iterate over the genres array
    @@genres.each do |genre|
      # if the hash doesn't already have the genre
      if !genre_count.include?(genre)
        # add the genre as key and set value to 1
        genre_count[genre] = 1
      else
        # else increment value by 1
        genre_count[genre] += 1
      end
    end
    # return hash
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if !artist_count.include?(artist)
        artist_count[artist] = 1
      else
        artist_count[artist] += 1
      end
    end
    artist_count
  end

end
