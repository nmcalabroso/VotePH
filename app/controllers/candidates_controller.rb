class CandidatesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :all]

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
    @position = Position.find(params[:position_id])
    @candidate = Candidate.find(params[:id])
  end

  def update
    candidate = Candidate.find(params[:id])

    if candidate.update(candidate_params)
      redirect_to candidate.position, notice: 'Success!'
    else
      redirect_to candidate.position, alert: 'Something went wrong :('
    end
  end

  def destroy
    candidate = Candidate.find(params[:id])
    position = candidate.position
    candidate.destroy
    redirect_to position, status: :see_other, notice: 'Candidate the associated votes are deleted!'
  end

  def show
    @candidate = Candidate.find(params[:id])
    @vote = Vote.new
  end

  def all
    @positions = Position.all
  end

  private

    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :slogan)
    end
end
