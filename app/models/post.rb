class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
  validates :text, :author_id, presence: true
  validates :author_id, numericality: { only_integer: true }

  has_many :comments, dependent: :destroy
  
end
