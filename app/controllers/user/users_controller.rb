class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @introductions = Introduction.where(user_id: params[:id])
  end
  

end
