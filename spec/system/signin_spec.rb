require 'rails_helper'
describe 'Users', type: :system do
  it 'Should sign in successfully' do
    visit 'users/sign_in'
    within 'form' do
      fill_in 'Email', with: 'jegisew21@gmail.com'
      fill_in 'Password', with: '123456'
    end
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end
end
