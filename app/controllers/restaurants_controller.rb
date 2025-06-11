# frozen_string_literal: true

# Restaurants controller
class RestaurantsController < ApplicationController
  def italian
    @restaurants = Restaurant.where(category: 'italian')
  end

  def japanese
    @restaurants = Restaurant.where(category: 'japanese')
  end

  def chinese
    @restaurants = Restaurant.where(category: 'chinese')
  end

  def french
    @restaurants = Restaurant.where(category: 'french')
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
