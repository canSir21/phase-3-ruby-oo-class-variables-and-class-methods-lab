require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    def initialize name, artist, genre
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

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end 

    def self.genre_count
        self.object_count @@genres
    end

    def self.object_count array
        obj_count = {}
        array.each do |item|
            if obj_count[item]
                obj_count[item] += 1
            else
                obj_count[item] = 1
            end
        end
        obj_count
    end

    def self.artist_count
        self.object_count @@artists
    end
end