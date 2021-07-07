require 'pry'
class Song
    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}

    attr_accessor :name, :artist, :genre 

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
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
        @@genres.each do |genre|
            if !@@genre_count[genre]
                @@genre_count[genre] = 1
            else
            @@genre_count[genre] +=1
            #binding.pry
            end
        end
        @@genre_count
    end
    def self.artist_count
        # @@artists.each do |artist|
        #     if !@@artist_count[artist]
        #         @@artist_count[artist] = 1
        #     else
        #     @@artist_count[artist] +=1
        #     #binding.pry
        #     end
        # end
        # @@artist_count
        @@artists.reduce(Hash.new(0)) do |hash, key| 
            hash[key] += 1 
            hash
            #binding.pry
        end
    end
    #binding.pry
end