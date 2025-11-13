class CommentsController < ApplicationController
  allow_unauthenticated_access only: %i[create]
  before_action :set_post

  # POST /posts/:post_id/comments
  def create
    @comment = @post.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.turbo_stream # append the new comment and reset the form
        format.html { redirect_to @post, notice: "Comment was successfully created." }
      else
        format.html { redirect_to @post, alert: "Failed to create comment." }
      end
    end
  end

  # DELETE /posts/:post_id/comments/:id
  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.turbo_stream # remove the comment from the list
      format.html { redirect_to @post, notice: "Comment was successfully destroyed.", status: :see_other }
    end
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
