require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'Should validate presence of name' do
    should validate_presence_of(:name)
  end
  it 'Should validate presence of icon' do
    should validate_presence_of(:icon)
  end
  it 'should validate length of name' do
    should validate_length_of(:name).is_at_most(255)
  end
  it 'should belongs to user' do
    should belong_to(:author)
  end
  it 'should have many transactions' do
    should have_many(:transacts)
  end
  it 'should have many category transactions' do
    should have_many(:category_transacts)
  end
  it 'should have one attached icon' do
    should have_one_attached(:icon)
  end
end
