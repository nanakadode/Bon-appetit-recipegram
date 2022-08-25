class Recipe < ApplicationRecord
  belongs_to :user
  attachment :image_id
end
