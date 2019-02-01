class AttendeesController < ApplicationController
    def new
        @plates = Plate.all
    end
    
    def create
        attendee= Attendee.new
        attendee.first_name = params[:first_name]
        attendee.last_name = params[:last_name]
        attendee.plate_id = params[:plate_id]
        attendee.save
        redirect_to '/attendees'
    end
    
    def index
        @attendees = Attendee.all
    end
    
    def edit
        @attendee= Attendee.find(params[:id])
    end
    
    def update
        attendee= Attendee.find(params[:id])
        attendee.first_name = params[:first_name]
        attendee.last_name = params[:last_name]
        attendee.plate_id = params[:plate_id]
        attendee.save
        redirect_to '/attendees'
    end
    
    def delete
        attendee = Attendee.find(params[:id])
        attendee.destroy
        redirect_to '/attendees'
    end
end
