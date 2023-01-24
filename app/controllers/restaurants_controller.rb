# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def list
    @restaurants = Restaurant.all
  end
end
