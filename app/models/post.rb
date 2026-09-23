class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { maximum: 200 }
  validates :body, length: { maximum: 1000 }
end
