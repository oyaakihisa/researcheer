class AdvertisementsController < ApplicationController
  def create
    @advertisement = Advertisement.create(text: advertisement_params[:text], researcher_id: advertisement_params[:researcher_id])
    redirect_to "/researchers/#{@advertisement.researcher_id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end

  private
  def advertisement_params
    params.permit(:text, :researcher_id)
  end
  
end
