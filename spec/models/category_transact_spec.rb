require 'rails_helper'

RSpec.describe CategoryTransact, type: :model do
  it 'should belongs to category' do
    should belong_to(:category)
  end
  it 'should belongs to transact' do
    should belong_to(:transact)
  end
end
