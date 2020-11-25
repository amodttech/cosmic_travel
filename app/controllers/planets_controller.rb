class PlanetsController < ApplicationController
  def index 
    @planets = Planet.all
  end 

  def show
    find_planet
  end 

  private

  def find_planet
    @planet = Planet.find(params[:id])
  end
end
