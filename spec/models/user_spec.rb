require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should validate username presence' do
    should validate_presence_of(:name)
  end
  it 'should validate password presence' do
    should validate_presence_of(:password)
  end
  it 'should validate password length' do
    should validate_length_of(:password).is_at_least(6)
  end
  it 'should validate password confirmation' do
    should validate_confirmation_of(:password)
  end
  it 'should validate email uniqueness' do
    should validate_uniqueness_of(:email).case_insensitive
  end
  it 'should have many categories' do
    should have_many(:categories)
  end
  it 'should have many transactions' do
    should have_many(:transacts)
  end
end
