require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable
  include Paramable


  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end


end
