class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], researcher_id: comment_params[:researcher_id], user_id: current_user.id)
    redirect_to "/researchers/#{@comment.researcher_id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end

  private
  def comment_params
    params.permit(:text, :researcher_id)
  end
end
