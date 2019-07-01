class LocationsController < ApplicationController
    def index
        @locations = Location.all
    end

    def show
        set_location
    end
    
    def new
        @location = Location.new
    end

    def create 
        @location = Location.create(location_params)
        if @location.valid?
            # Possibly create separate join model to keep track of location added by logged in user
            # AddedLocation.create(user_id: user_id, location_id: @location.id)
            redirect_to location_path(@location)
        else
            flash[:error] = @location.errors.full_messages
            render :new
        end
    end

    private 

    def set_location
        @location = Location.find(params[:id])
    end

    def location_params
        params.require(:location).permit(:name, :description, :country_id)
    end
end
