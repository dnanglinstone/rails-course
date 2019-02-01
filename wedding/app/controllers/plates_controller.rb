class PlatesController < ApplicationController
    def new
    end
    
    def create
        plate = Plate.new
        plate.protein = params[:protein]
        plate.side = params[:side]
        plate.vegetable = params[:vegetable]
        plate.save
        redirect_to '/plates'
    end
    
    def index
        @plates= Plate.all
    end
    
    def edit
        @plate= Plate.find(params[:id])
    end
    
    def update
        plate = Plate.find(params[:id])
        plate.protein = params[:protein]
        plate.side = params[:side]
        plate.vegetable = params[:vegetable]
        plate.save
        redirect_to '/plates'
    end
    
    def delete
        plate = Plate.find(params[:id])
        plate.destroy
        redirect_to '/plates'
    end
    
    def show
        @plate = Plate.find(params[:id])
    end
end
