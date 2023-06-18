class User::UsersController < ApplicationController
  def show
    @user_sign_in = User.find(params[:id])
    @user = User.new
    @introduction = @user.introductions.build
    
  end
end
