require 'pry'
class Genre
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def save
    @@all << self
  end

  def self.create(genre)
    new(name).tap {|genre| genre.save}
  end

  def artists
    songs.collect {|song| song.artist}.uniq
  end
end