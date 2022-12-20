class Post < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :user
  validates :title, presence: true
  validates :text, presence: true
end