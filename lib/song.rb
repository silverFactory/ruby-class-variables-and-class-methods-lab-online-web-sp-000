class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
  #  if @@artists.include?(artist) != true#artists doesn't already inclue artist
      @@artists << artist
  #  end
    @genre = genre
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if unique_artists.include?(artist) != true
          unique_artists << artist
      end
    end
    unique_artists
  end
  def self.genres
  end
end
