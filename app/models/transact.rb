class Transact < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :author_id
  has_many :category_transacts
  has_many :categories, through: :category_transacts
  validates :name, presence: true, length: { maximum: 255 }
  validates :icon, presence: true
end
