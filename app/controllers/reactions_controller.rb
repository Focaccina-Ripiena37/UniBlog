class ReactionsController < ApplicationController
  allow_unauthenticated_access only: %i[create]
  def create
    @post = Post.find(params.expect(:post_id))
    reaction = @post.reactions.create(kind: params.expect(:kind))
    respond_to do |format|
      if reaction.persisted?
        format.turbo_stream
        format.html { redirect_to @post }
      else
        format.html { redirect_to @post, alert: "Errore reazione" }
      end
    end
  end
end
