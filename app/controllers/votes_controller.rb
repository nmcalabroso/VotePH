class VotesController < ApplicationController

  def create
    candidate = Candidate.find(params[:candidate_id])
    vote = Vote.new(vote_params)
    candidate.votes << vote
    if candidate.save
      current_user.votes << vote
      if current_user.save
        redirect_to position_candidate_path(candidate.position, candidate), notice: 'Your vote has been casted'
      end
    else
      redirect_to position_candidate_path(candidate.position, candidate), alert: 'Something went wrong :('
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:comment)
  end
end
