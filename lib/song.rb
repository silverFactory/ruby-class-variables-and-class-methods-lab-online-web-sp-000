class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@song_count += 1
    @name = name
    @artist = artist
    @@artists << name
    @genre = genre
    @@genre << genre
  end
end
