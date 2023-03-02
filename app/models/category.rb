class Category < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :author_id
  has_many :category_transacts
  has_many :transacts, through: :category_transacts
  validates :name, presence: true, length: { maximum: 255 }
  validates :icon, presence: true
  has_one_attached :icon

  def total_amount
    sum = 0
    transacts.each do |transaction|
      sum += transaction.amount.to_i
    end
    sum
  end

  def all_transacts
    transacts.order(created_at: :desc)
  end
end
