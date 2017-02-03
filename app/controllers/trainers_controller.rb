class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
    @planets = Planet.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def create
    @trainer = Trainer.new(trainer_params)
    @trainer.save
    render 'show'
  end

  def update
    @trainer = Trainer.find(params[:id])
    @trainer.update_attributes(trainer_params)
    @trainer.save
    render 'show'
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @deleted = @trainer
    @trainer.destroy
    render :json => @deleted.to_json(:only => [:id, :name])
  end

  private
    def trainer_params
      params.require(:trainer).permit(:name, :age, :planet_id)
    end
end
