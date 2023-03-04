class CategoryTransact < ApplicationRecord
  belongs_to :category
  belongs_to :transact
end
