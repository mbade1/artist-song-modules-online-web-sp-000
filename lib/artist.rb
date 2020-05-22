require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable
  extend Findable

  @@all = []

  def initialize
    @@all << self
    @songs = []
  end

  def self.find_by_name(name)
    @@all.detect{|a| a.name == name}
  end

  def self.count
    self.all.count
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
