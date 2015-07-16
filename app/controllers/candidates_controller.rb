class CandidatesController < ApplicationController

  def index
    @position = Position.find(params[:position_id])
  end

  def new
    @position = Position.find(params[:position_id])
    @candidate = Candidate.new
  end

  def create
    position = Position.find(params[:position_id]);
    candidate = Candidate.new(candidate_params)
    position.candidates << candidate

    if position.save
      redirect_to position, notice: 'New candidate has been added'
    else
      redirect_to position, alert: 'Something went wrong :('
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  private

    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :slogan)
    end
end
