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
    value = 1
    genres.each do |genre|
      if @@genre_count.key?(genre) #already a key
        value += 1
        @@genre_count[genre] = value
      else
        #value+= 1
        @@genre_count[genre] = value
      end
    end
    @@genre_count
  end


end
