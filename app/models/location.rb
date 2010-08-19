class Location < ActiveRecord::Base

  attr_accessible :label, :latitude, :longitude, :current

  validates :label, :presence => true, :uniqueness => { :case_sensitive => false }, :length => { :maximum => 50 }
  validates :latitude, :presence => true, :numericality => true
  validates :longitude, :presence => true, :numericality => true

end