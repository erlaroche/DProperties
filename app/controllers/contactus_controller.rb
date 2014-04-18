class ContactusController < ApplicationController
  
 

  def index
    @contacts = Contact.all
    @hash = Gmaps4rails.build_markers(@contacts) do |contact, marker|
      marker.lat contact.latitude
      marker.lng contact.longitude
      marker.infowindow contact.description
    end
  end


end
