class User < ApplicationRecord
  before_save :downcase_username
  validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 15 }, format: { with: /\A[a-z0-9]+\z/ }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  # attr_accessor :username
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  private

  # Converts email to all lower-case.
  def downcase_username
    self.username = username.downcase
  end
end
