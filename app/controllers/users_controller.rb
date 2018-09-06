class UsersController < ApplicationController
  def show
    @firstname = current_user.firstname
    @cheeringresearchers = Cheer.where(user_id: current_user.id)
    @whichresearcher = Researcher.find_by(user_id: current_user.id)
    @cheers = @whichresearcher.cheers
  end 
  
end
