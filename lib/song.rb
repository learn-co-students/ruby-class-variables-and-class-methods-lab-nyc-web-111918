require 'pry'

class Song
  @@count=0
  @@artists=[]
  @@genres=[]
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists.push(artist)
    @@genres.push(genre)
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
    payload={}
    @@genres.each do |genre|
      if payload.has_key?(genre)
        payload[genre]+=1
      else
        payload[genre]=1
      end
    end
    return payload
  end
  def self.artist_count
    payload={}
    @@artists.each do |artist|
      if payload.has_key?(artist)
        payload[artist]+=1
      else
        payload[artist]=1
      end
    end
    return payload
  end
end
