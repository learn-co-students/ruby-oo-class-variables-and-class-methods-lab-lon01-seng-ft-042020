require "pry"
class Song

    
    attr_accessor :name ,:artist ,:genre
    @@count = 0
    @@artists = []
    @@genres = []

 def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists<<artist
    @@genres<<genre
 end 

def self.count
    @@count
end 

def self.artists
    @@artists.uniq
end 

def self.genres
    @@genres.uniq
end 

def self.genre_count
    hash={} 
    counter = 0
    @@genres.each do |genre|
        hash[genre] ||= 0
        counter = @@genres.select{|word| word==genre}.size
        hash[genre] = counter
    end
    hash
end 

def self.artist_count
    hash = {}
    counter = 0
    @@artists.each do |value|
        hash[value] ||= 0
        counter = @@artists.select {|w| w == value}.size
        hash[value] = counter
    end
    hash
end



end 

