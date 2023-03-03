require 'rails_helper'

RSpec.describe Transact, type: :model do
  it 'should validate presence of transaction name' do
    should validate_presence_of(:name)
  end
  it 'should validate presence of transaction amount' do
    should validate_presence_of(:amount)
  end
  it 'should validate length of name' do
    should validate_length_of(:name).is_at_most(255)
  end
  it 'should accept only integer values greater than 0' do
    should validate_numericality_of(:amount).is_greater_than_or_equal_to(0)
  end
  it 'should belongs to user' do
    should belong_to(:author)
  end
  it 'should have many categories' do
    should have_many(:categories)
  end
  it 'should have many category transactions' do
    should have_many(:category_transacts)
  end
end
