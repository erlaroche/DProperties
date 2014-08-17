class ContactusController < ApplicationController
 def index
    @contacts = Contact.all
    @hash = Gmaps4rails.build_markers(@contacts) do |contact, marker|
      marker.lat contact.latitude
      marker.lng contact.longitude
      marker.infowindow contact.address
    end
  end

  def show
  	@title = Contact.first.title
  end
end
