class DogHousesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
    dog_house = DogHouse.where(id: params[:id])
    render json: dog_house, include: :reviews
end

def index
  dog_house = DogHouse.all
  render json: dog_house, include: :reviews
  end

  private

  def render_not_found_response
    render json: { error: "Dog house not found" }, status: :not_found
  end

end
