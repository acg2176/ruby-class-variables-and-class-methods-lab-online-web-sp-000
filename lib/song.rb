class Song
  @@artists = []
  @@genres = []
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}

  attr_accessor :name, :artist, :genre


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+= 1
    @@genres << genre
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
    value = 0
    genres.each do |genre|
      if @@genre_count.key?(genre) #already a key
        value += 1
      else
        @@genre_count[genre] = value
        value+= 1
      end
    end
    @@genre_count
  end


end
