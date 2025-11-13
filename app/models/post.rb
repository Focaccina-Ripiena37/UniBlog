class Post < ApplicationRecord
  include Likeable

  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy
  belongs_to :user, optional: true
  has_rich_text :body
  validates :title, presence: true
  validates :body, presence: true
end
