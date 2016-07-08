class PagesController < ApplicationController
  def game
    @user = User.new
  end

  def leaderboard
    @user = User.new
    @users = User.all.order('points DESC')
  end
end
