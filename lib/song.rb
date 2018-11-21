class Song

@@count = 0

@@genres = []

@@artists = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
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
    Hash.new(0).tap do |h|
      @@genres.each do |v|
        h[v] +=1
      end
    end
  end

  def self.artist_count
    Hash.new(0).tap do |h|
      @@artists.each do |v|
        h[v] +=1
      end
    end
  end

end
