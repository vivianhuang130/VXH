class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :picture
  has_many :pictures
  has_many :users
end
