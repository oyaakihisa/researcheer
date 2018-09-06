class ResearchersController < ApplicationController
  before_action :move_to_index, except: :index
    
    
  def index
    @researchers = Researcher.all
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end 
  
  def create
#    binding.pry

    Researcher.create(user_id: current_user.id, firstname: User.find_by(id: current_user.id).firstname, familyname: User.find_by(id: current_user.id).familyname, firstnamekana: User.find_by(id: current_user.id).firstnamekana, familynamekana: User.find_by(id: current_user.id).familynamekana, image: researcher_params[:image], belonging: researcher_params[:belonging], field: researcher_params[:field], fielddata: researcher_params[:fielddata])
  end 
  
  
  def new
#    @researcher = Researcher.find(params[:id])
  end

  def show 
    @researcher = Researcher.find(params[:id])
    @cheers = @researcher.cheers.includes(:user)
    @comments = @researcher.comments.includes(:user)
    @advertisements = @researcher.advertisements
  end
  
  def edit
    @researcher = Researcher.find(params[:id])
  end
  
  
  def update
    researcher = Researcher.find(params[:id])
    if researcher.user_id == current_user.id
      researcher.update(researcher_params)
    end
  end
  
  private
  def researcher_params
    params.permit(:image, :belonging, :field, :fielddata)
  end 
  

  
end