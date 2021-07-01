require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) {User.create email: "gg@gg.com", password: '123456', password_confirmation: '123456'}
  describe "GET /index" do
  it ' gets a list of all apartments'do
  apartment = Apartment.create(
    street:'10880 Malibu point',
    city: 'Malibu',
    state: 'CA',
    manager:'TS',
    email: 'ts@im.com',
    price: '5000',
    bedrooms: 10,
    bathrooms: 8,
    pets: 'yes',
    user_id: user.id
  )
    get '/apartments'
    apartment = JSON.parse(response.body)
    expect(response).to have_http_status(200)
    expect(apartment.length).to eq 1
  end
end
end