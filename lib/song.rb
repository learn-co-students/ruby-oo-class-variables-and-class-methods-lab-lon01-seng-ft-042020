class Song

    @@count = 0
    @@artists =[]
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist    
    end

    attr_reader :name, :artist, :genre

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        result = Hash.new(0)
        @@genres.each{|genre| result[genre] += 1}
        result
    end

    def self.artist_count
        result = Hash.new(0)
        @@artists.each{|artist| result[artist] += 1}
        result
    end

end
