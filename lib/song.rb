require "pry"

class Song

  attr_reader :name, :artist, :genre

  @@song_count = 0
  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
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

    genre_count = {}

    @@genres.each do |genre|

      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end

    genre_count
  end

def self.artist_count

  count = {}

  @@artists.each do |artist|

    if count[artist]
      count[artist] += 1
    else
      count[artist] = 1
    end

  end

  count
end







end
