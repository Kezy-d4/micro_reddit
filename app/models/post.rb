class Post < ApplicationRecord
  validates :title, :body, :user_id, presence: true
  validates :title, length: { maximum: 200 }
  validates :body, length: { maximum: 1000 }

  belongs_to :user
end
