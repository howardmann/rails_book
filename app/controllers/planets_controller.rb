class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
    @monsters = Monster.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.save
    render 'show'
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update_attributes(planet_params)
    @planet.save
    render 'show'
  end

  def destroy
    @planet = Planet.find(params[:id])
    @deleted = @planet
    @planet.destroy
    render :json => @deleted.to_json(:only => [:id, :name])
  end

  private
    def planet_params
      params.require(:planet).permit(:name, :description)
    end

end
