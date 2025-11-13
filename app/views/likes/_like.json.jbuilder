json.likes_count likeable.likes.count
json.liked_by_current_user !!(current_user && likeable.likes.exists?(user: current_user))
