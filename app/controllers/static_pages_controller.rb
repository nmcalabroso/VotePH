class StaticPagesController < ApplicationController

  def index
    @positions = Position.all
  end
end
