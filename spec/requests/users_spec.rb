require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'should render to sign up page' do
      get new_user_registration_path
      should render_template('new')
    end
    it 'should render to sign in page' do
      get user_session_path
      should render_template('new')
    end
    it 'should render to sign in page' do
      get new_user_password_path
      should render_template('new')
    end
  end
end
