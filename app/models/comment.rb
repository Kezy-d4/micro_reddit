class Comment < ApplicationRecord
  validates :body, length: { maximum: 500 }, presence: true
  validates :user_id, :post_id, presence: true
end
