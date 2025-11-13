class Like < ApplicationRecord
  belongs_to :user
  belongs_to :likeable, polymorphic: true

  # Broadcast likes count updates on create/destroy
  after_commit :broadcast_like_count, on: [:create, :destroy]

  private

  def broadcast_like_count
    Rails.logger.debug "AFTER_COMMIT like##{id} for #{likeable.class}##{likeable_id}"

    Turbo::StreamsChannel.broadcast_replace_to(
      likeable,
      target: ActionView::RecordIdentifier.dom_id(likeable, :likes_count),
      partial: "likes/likes_count",
      locals: { likeable: likeable }
    )
  end
end
