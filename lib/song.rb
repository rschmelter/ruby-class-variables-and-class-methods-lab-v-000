class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
        if genre_hash.has_key?(genre)
          genre.values?.include(genre)
          genre_hash.update(genre_hash) {|genre, value| value +=1}
        else
          genre_hash[genre] = 1
        end
      end

    genre_hash

  end



end
