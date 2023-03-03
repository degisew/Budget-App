require 'rails_helper'

RSpec.describe 'Splash', type: :request do
  it 'should render index page' do
    get '/'
    expect(response).to have_http_status(:ok)
  end

  it 'should render Welcome!' do
    get '/'
    expect(response.body).to include 'Welcome!'
  end
end
