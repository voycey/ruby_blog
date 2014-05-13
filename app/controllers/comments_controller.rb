class CommentsController < ApplicationController
  include CommentsHelper

  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]

    @comment.save

    flash.notice = "Comment '#{@comment.author_name}' Created!"
    redirect_to post_path(@comment.post)
  end

end
