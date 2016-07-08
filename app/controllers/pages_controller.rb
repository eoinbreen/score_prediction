class PagesController < ApplicationController
  def game
    @user = User.new
  end

  def leaderboard
    @user = User.new
  end
end
