require 'pry'

class Artist
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
    binding.pry
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    self.songs.each{|song| song.genre}
  end
end

jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
ninety_nine_problems = Song.new("Ninety Nine Problems", jay_z, rap)      