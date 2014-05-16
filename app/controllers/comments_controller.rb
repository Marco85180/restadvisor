class CommentsController < ApplicationController
  before_action :resto_params, only: [:create]

  def create
    resto = Resto.find(params[:comment][:resto_id])
    resto.comments.create(resto_params)

    redirect_to resto
  end

  def destroy
    comment = Comment.find(params[:id])
    resto = Resto.find(comment.resto_id)
    comment.destroy

    redirect_to resto
  end

  private
  def resto_params
    params.require(:comment).permit(:body)
  end
end
