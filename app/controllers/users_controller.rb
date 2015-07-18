class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin!, only: :voters

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def voters
    @voters = User.voters
  end
end
