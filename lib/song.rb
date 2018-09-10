class song
  attr_accessor :name, :artist, :genres

  @@count = 0
  @@genres = []

  def initialize
    @@count += 1
    @@genres << genre
  end

  def count
    @@count
  end

  def genres
    @@genres.uniq
  end
end
