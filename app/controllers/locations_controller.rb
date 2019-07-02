class LocationsController < ApplicationController
    before_action :authorized, only: [:new, :create, :edit, :update]
    
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
            redirect_to location_path(@location)
        else
            flash.now[:error] = @location.errors.full_messages
            render :new
        end
    end

    def edit
        set_location
    end

    def update
        set_location
        @location.update(location_params)
        if @location.valid?
            redirect_to location_path(@location)
        else
            flash.now[:error] = @location.errors.full_messages
            render :new
        end
    end

    private

    def set_location
        @location = Location.find(params[:id])
    end

    def location_params
        params.require(:location).permit(:name, :description, :country_id, :user_id)
    end
end
