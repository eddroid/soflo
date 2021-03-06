class Location < ActiveRecord::Base
  has_many :location_event
  has_many :events, through: :location_event

  def streetAddress
    self.streetnumber + ' ' + self.street
  end

  def cityState
    self.city + ', ' + self.state
  end
  def googlemapsurl
    'http://maps.google.com/?q=' + self.long_address
  end

  def to_s
    self.name ||= ''
  end
end
