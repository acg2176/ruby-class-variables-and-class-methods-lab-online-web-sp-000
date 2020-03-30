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
    #genre_count = {}
    genres.each do |genre|
      if @@genre_count[genre] #already a key
        @@genre_count[genre] += 1
      else
        #value+= 1
        @@genre_count[genre] = value
      end
    end
    @@genre_count
  end


end
