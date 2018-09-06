class CheersController < ApplicationController
  def new
    @researcher = Researcher.find(params[:researcher_id])
  end
  
  
  
  def create
    @cheer = Cheer.create(money: cheer_params[:money], message: cheer_params[:message], researcher_id: cheer_params[:researcher_id], user_id: current_user.id)
    @researcher = Researcher.find(params[:researcher_id])
  end

  private
  def cheer_params
    params.permit(:money, :message, :researcher_id)
  end
end
