class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :content, presence: true, length: { in: 1..400 }
  validates :user_id, presence: true

  private

  # # Validates the size of an uploaded picture.
  # def picture_size
  #   return unless picture.size > 5.megabytes

  #   errors.add(:picture, 'should be less than 5MB')
  # end
end
