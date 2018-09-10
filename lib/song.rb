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

  def count
    @@count
  end

  def genres
    @@genres.uniq
  end

  def artists
    @@artists.unique
  end

  def genre_count
    @@genres.each do |type|
      @@genre_count[type] = @@genres.count(type)
    end
    @@genre_count
  end

  def artists_count
    @@artists.each do |art|
      @@artists_count[art] = @@artists.count(art)
    end
    @@artists_count
  end
end
