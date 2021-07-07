class Api::LocationsController < ApplicationController

    def index
       @locations = Location.all.includes(:host)
       render 'api/locations/index'
    end

    def create
        # @location = Location.new(location_params)
        # if @location.save
        #     render '/api/locations/show'
        # else
        #     render json: @location.errors.full_messages, status: 400
        # end
    end

    def show
        @location = Location.find_by(id: params[:id])
        if @location
            render '/api/locations/show'
        else
            render json: ['cannot find location'], status: 400
        end
    end

    def location_params
        params.require(:location).permit(:title, :description, :price, :longitude, :latitude, :host_id)
    end

end