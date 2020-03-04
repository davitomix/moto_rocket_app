class User < ApplicationRecord
  before_save :downcase_username
  validates :username, presence: true, length: { minimum: 5, maximum: 15 },
                       format: { with: /\A[a-z0-9]+\z/ },
                       uniqueness: { case_sensitive: false }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  # attr_accessor :username
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :active_relationships, class_name: 'Relationship',
                                  foreign_key: 'follower_id',
                                  dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :passive_relationships, class_name: 'Relationship',
                                   foreign_key: 'followed_id',
                                   dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower

  def feed
    following_ids = "SELECT followed_id FROM relationships
                    WHERE  follower_id = :user_id"
    Post.where("user_id IN (#{following_ids})
                    OR user_id = :user_id", user_id: id).includes(:user).take(40)
  end

  def whotofollow
    following_ids = "SELECT followed_id FROM relationships
                    WHERE  follower_id = :user_id"
    User.where("id NOT IN (#{following_ids})
                    AND id != :user_id", user_id: id).take(10)
  end

  def followed_by
    followed_ids = "SELECT follower_id FROM relationships
                    WHERE  followed_id = :user_id"
    User.where("id IN (#{followed_ids})
                    AND id != :user_id", user_id: id).take(10)
  end

  # Follows a user.
  def follow(other_user)
    following << other_user
  end

  # Unfollow a user.
  def unfollow(other_user)
    following.delete(other_user)
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end

  private

  # Converts email to all lower-case.
  def downcase_username
    self.username = username.downcase
  end
end
