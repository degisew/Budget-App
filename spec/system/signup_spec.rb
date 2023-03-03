require 'rails_helper'
describe 'Users', type: :system do
  it 'Should create account and confirm the email' do
    visit 'users/sign_up'
    within 'form' do
      fill_in 'user_name', with: 'Dagi'
      fill_in 'Email', with: 'jegisew21@gmail.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
    end
    click_button 'Sign up'
    expect(page).to have_content 'You have signed up successfully.'
  end
end
