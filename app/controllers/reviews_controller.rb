class ReviewsController < ApplicationController

  def index
    if params[:dog_house_id]
      dog_house = DogHouse.find(params[:dog_house_id])
      reviews = dog_house.reviews
    else
      reviews = Review.all
    end
    render json: reviews, include: :dog_house

end
