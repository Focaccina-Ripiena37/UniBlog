class Reaction < ApplicationRecord
  belongs_to :post
  validates :kind, presence: true
end
