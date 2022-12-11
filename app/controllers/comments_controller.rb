class CommentsController < ApplicationController
  before_action :set_commentable

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(
      commentable: @commentable,
      content: params[:content],
      user: current_user,
    )
    if @comment.save
      # TODO explore alternatives to redirect to the commentable that may or may not be a top-level resource
      redirect_back fallback_location: root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    rediret_back fallback_location: root_path
  end

  private

  def set_commentable
    @commentable = if params[:issue_id].present?
                     Issue.find(params[:issue_id])
                   end
  end
end
