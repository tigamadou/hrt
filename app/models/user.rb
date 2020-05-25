class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :full_name, presence: true

  has_many :posts, foreign_key: "author_id"
  has_many :received_follows, foreign_key: :followed_id, class_name: "Following"
  has_many :followers, through: :received_follows, source: :follower
  
  has_many :given_follows, foreign_key: :follower_id, class_name: "Following"  
  has_many :followings, through: :given_follows, source: :followed

  def follow(user)
    
    Following.create(followed_id: user.id, follower_id: id )
  end

  def following?(user)
    followings.include?(user)
  end

  def follower?(user)
    followers.include?(user)
  end

  
end
