require_relative 'song.rb'
require_relative 'artist.rb'

class Genre

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def songs
        Song.all.find_all do |songs|
            songs.genre == self
        end 
    end

    def artists
        songs.collect do |song| 
            song.artist 
        end 
    end

end 
