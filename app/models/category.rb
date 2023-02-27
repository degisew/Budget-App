class Category < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :author_id
  has_many :group_categories
  has_many :groups, through: :group_categories
  validates :name, presence: true, length: { maximum: 255 }
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
