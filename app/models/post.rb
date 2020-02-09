class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  is_impressionable
end
