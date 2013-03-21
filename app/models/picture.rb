class Picture < ActiveRecord::Base
  # Allow mass-assignment for the attributes title and artist
  attr_accessible :title, :artist, :url
  # Don't confuse this with attr_accessor

  validate :url, :presence => true
end