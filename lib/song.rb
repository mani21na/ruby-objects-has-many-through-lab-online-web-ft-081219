#require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  #def genre
  #  self.find_all{|song| song.genre == self.genre}
  #end

  #def artist
  #  self.find_all{|song| song.artist == self.artist}
  #end
end