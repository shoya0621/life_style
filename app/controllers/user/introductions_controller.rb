class User::IntroductionsController < ApplicationController
  
  def index
    @introductions = Introduction.where(user_id: params[:user_id])
    @introduction = Introduction.new
  end  
  
  
  def create
    user = User.find(params[:user_id])
    introduction = Introduction.new(introduction_params)
    introduction.user_id = user.id
    introduction.save
    redirect_to user_introductions_path(params[:user_id])
  end
  
  def update
    introduction = Introduction.find(params[:id])
    introduction.update(introduction_params)
    redirect_to user_introductions_path(params[:user_id])
  end
  
  def destroy
    introduction = Introduction.find(params[:id])
    introduction.destroy
    redirect_to user_introductions_path(params[:user_id])
  end
  
  private
  
  def introduction_params
    params.require(:introduction).permit(:introduction_junre_id, :content)
  end
end
