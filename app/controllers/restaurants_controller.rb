class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant
  end

  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating, :category, :phone_number)
  end
end
