require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def self.all
        @@all
    end

 def initialize(song_name)
  @name=song_name
  @@all << self
 end 

  def self.new_by_filename(filename)
        artist = filename.split(" - ")[0]
        song = filename.split(" - ")[1]
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
end 