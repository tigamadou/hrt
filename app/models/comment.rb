class Comment < ApplicationRecord
    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    belongs_to :post

    validates :author_id,:post_id, :text, presence: true
end
