class Song
attr_accessor :name, :artist, :genre  

@@count = 0
@@artists = []
@@genres = []

def initialize (name, artist, genre)
@name = name
@artist = artist
@genre = genre

@@genres << genre
@@count += 1
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
  genre_hash = {}
  @@genres.each do |genre|
    if genre_hash[genre] != nil
      genre_hash[genre] += 1
    else 
      genre_hash[genre] = 1
    end
end
genre_hash
end

def self.artist_count
   artist_hash = {}
  @@artists.each do |genre|
    if artist_hash[genre] != nil
      artist_hash[genre] += 1
    else 
      artist_hash[genre] = 1
    end
end
artist_hash
end

end #end of class creation