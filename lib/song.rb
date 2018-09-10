class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artists_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @artist = artist
    @genre = genre
    @name = name
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
    @@genres.each do |gen|
      @@genre_count[genre] = @@genres.count(gen)
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |art|
      @@artists_count[artist] = @@artists.count(art)
    end
    @@artists_count
  end
end
