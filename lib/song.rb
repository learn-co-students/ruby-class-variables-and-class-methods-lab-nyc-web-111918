require 'pry'
class Song

# read and write methods
attr_accessor :name, :artist, :genre
#class variables. acceable withing the scope of the whole class
@@count = 0 #this is counting the number of songs added.
@@artists = []
@@genres = []



def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
#when do we want to keep track of these?
#when we create, when we initialize... a new artist or new genre.
  @@genres << @genre
  @@artists << @artist
#we want the count to increase by 1 every time I initialize as new song
  @@count += 1
  #here I add a hash key of the genre name and give that key a value of count.
  # @@genre_count[genre] = @@count
  # @@artists[artist] = @@count
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
      genre_count = {}
    @@genres.each do |genre|
      # if the hash has the key string
      if genre_count.has_key?(genre)
        #make the key string add by 1
         genre_count[genre] += 1
       else
         #if the hash key does not exist, set it to 1.
         genre_count[genre] = 1
       end
        #binding.pry
    end
    genre_count
  end #end of genre_count

  def self.artist_count
    artist_count = {}
  @@artists.each do |artist|
    # if the hash has the key string
    if artist_count.has_key?(artist)
      #make the key string add by 1
       artist_count[artist] += 1
     else
       #if the hash key does not exist, set it to 1.
       artist_count[artist] = 1
     end
      #binding.pry
  end
  artist_count
end #end of genre_count


end #end of class Song

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems_dup = Song.new("99 Problems", "Jay-Z", "rap")
lucifer =  Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

#binding.pry
