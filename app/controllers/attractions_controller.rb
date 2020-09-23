class AttractionsController < ApplicationController

    def index
        @attractions = Attraction.all
    end

    def show
        @attraction = Attraction.find_by(id: params[:id])
        @ride = Ride.new(ride_params)
    end

    private

    def ride_params
        
end