class Contact < ActiveRecord::Base

  # with an attribute
  geocoded_by :address #address is an attribute of Contact

  # the callback to set longitude and latitude
  after_validation :geocode
  
end
