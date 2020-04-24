require "pry"
#Define a class song
class Song

   #Has 3 class variables
   @@count = 0
   @@artists = []
   @@genres = []


   attr_accessor :name, :artist, :genre

   #Initialise with a name, artist and genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  #Class method that returns the number of songs created 
  def self.count
    @@count
  end

  #Class method that returns a unique array of artists of existing songs
  def self.artists
    @@artists.uniq
  end

  #Class method that returns a unique array of genres of existing songs 
  def self.genres
    @@genres.uniq
  end
  
  #Class method that returns a hash of genres and the number of songs that have those genres
  def self.genre_count
    g_count = Hash.new(0) #We want the default value to be 0, otherwise will return nil
    #Automatically the 1st hash key has a value of 0
    @@genres.each { |genre| g_count[genre] += 1 }
    g_count
  end

  #Class method that returns a hash of artists and the number of songs that have those genres
  def self.artist_count
    a_count = Hash.new(0) #We want the default value to be 0, otherwise will return nil
    @@artists.each { |song| a_count[song] += 1 }
    a_count
  end
  

end

# @@genres.each do |genre|
    #     #binding.pry
    #     if g_count[genre]
    #    g_count[genre] += 1
    #     else
    #     g_count[genre] = 1 #If it doesn't exist add 1
    #     end
    # end