module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes, as: :likeable, dependent: :destroy
  end

  def like_for(user)
    return nil unless user
    likes.detect { |like| like.user_id == user.id }
  end

  def likes_count
    likes.count
  end
end
