class Artist
    @@all = []

    attr_accessor :name, :artist, :genre


    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
        self.songs.last
    end   

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs.map {|song| song.genre}
    end

end

