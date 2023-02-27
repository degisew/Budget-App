class Group < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: author_id
  has_many :group_categories
  has_many :categories, through: :group_categories
  validates :name, presence: true, length: { maximum: 255 }
  validates :icon, presence: true
end
