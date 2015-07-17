class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin!, only: :voters

  def index
  end

  def show
  end

  def voters
    @voters = User.voters
  end
end
