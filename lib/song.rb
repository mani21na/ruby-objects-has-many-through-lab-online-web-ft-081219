#require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  attr_reader
  
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @artist = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def genre
    self.all.find{|song| song.genre == self}
  end

  def artist
    self.all.find{|song| song.artist == self}
  end
end