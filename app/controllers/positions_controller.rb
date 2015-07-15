class PositionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @positions = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    position = Position.new(position_params)

    if position.save
      redirect_to position, notice: 'Success!'
    else
      redirect_to positions_path, alert: 'Something went wrong :('
    end
  end

  def show
    @position = Position.find(params[:id])
  end

  private

    def position_params
      params.require(:position).permit(:name)
    end
end
