class ApartmentsController < ApplicationController

    def index
        render json: Apartment.all, status: 200
    end

    def show
        render json: Apartment.find_by(id: params[:id]), status: 200
    end

    def create
        render json: Apartment.create(apartment_params), status: 200
    end

    def update
        a = Apartment.find_by(id: params[:id])
        render json: a.update(apartment_params), status: :ok
    end

    def destroy
        Apartment.find_by(id: params[:id]).destroy
        render head: :no_content
    end

    private

    def apartment_params
        params.permit(:number)
    end
end
