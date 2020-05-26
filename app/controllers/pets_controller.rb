class PetsController < ApplicationController
  def index
    @pets = Pet.all.order(:name)

    render json: { ok: "Yes"}, status: :ok
  end
end
