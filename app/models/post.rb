class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
