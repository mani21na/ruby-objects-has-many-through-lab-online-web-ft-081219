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

  def genre#require 'pry'
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
    self.all.find{|song| song.genre == self}
  end

  def artist
    self.all.find{|song| song.artist == self}
  end
end