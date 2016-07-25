class PagesController < ApplicationController
  def game
    @user = User.new
    @currentUser =  current_user
    @predictions = Prediction.new
    @players=Player.all
  end
  
  def home
    @user = User.new
    @currentUser =  current_user
  end

  def leaderboard
    @user = User.new
    @currentUser =  current_user
    @users = User.all.order('points DESC')
  end
end
