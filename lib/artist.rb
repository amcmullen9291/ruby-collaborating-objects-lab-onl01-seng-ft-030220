
require 'pry'
class Artist
attr_accessor :name, :song, :artist

@@all = []

  def initialize(name)
    @artist = artist
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self 
    @@all << self
    self
  end
  
  def add_song_by_name(name) 
    name= Song.new(name)
    add_song(name)
    @@all << name
  end 

  # def songs
  #   song = song.new(name genre)
  # end

  def artist_name
    song.artist.name
  end 

  def songs
  Song.all.select do |title| title.artist == self
    end 
  end 
  
  # binding.pry

  def self.find_or_create_by_name(name=nil)
    @@all.find do |singer|
      if @@all.include?(singer) 
      self
    else
      singer = Artist.new(name)
      add_song
      Song.artist = author
    end
    end
  end

  def self.song_count
    Song.all.count
  end 

end 