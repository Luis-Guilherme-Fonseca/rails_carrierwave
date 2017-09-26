class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  validates :image, file_size: { less_than: 1.megabytes } 
  mount_uploader :image, ImageUploader
end
