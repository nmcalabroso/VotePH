class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def voters
    @voters = User.voters
  end
end
