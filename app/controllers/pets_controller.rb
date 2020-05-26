class PetsController < ApplicationController
  def index
    @pets = Pet.all.order(:name)

    render json: pets, status: :ok


  end
end
