require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) {User.create email: "gg@gg.com", password: '123456', password_confirmation: '123456'}

  it "should have a street" do
   apartment = Apartment.create(
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
    expect(apartment.errors[:street]).to_not be_empty
  end

  it "should have a city" do
    apartment = Apartment.create(
    street:' 10880 Malibu point',
    state: 'CA',
    manager: 'TS',
    email: 'ts@im.com',
    price: '5000',
    bedrooms: 10,
    bathrooms: 8,
    pets: 'yes',
    user_id: user.id
    )
    expect(apartment.errors[:city]).to_not be_empty
  end


  it "should have a manager" do
    apartment = Apartment.create(
    street:'10880 Malibu point',
     city: 'Malibu',
     state: 'CA',
     email: 'ts@im.com',
     price: '5000',
     bedrooms: 10,
     bathrooms: 8,
     pets: 'yes',
     user_id: user.id
    )
     expect(apartment.errors[:manager]).to_not be_empty
   end

  it "a state" do
    apartment = Apartment.create(
    street: '10880 Malibu point',
    city:' Malibu',
    manager: 'TS',
    email: 'email',
    price: '5000',
    bedrooms: 10,
    bathrooms: 8,
    pets: 'yes',
    user_id: user.id
    )
    expect(apartment.errors[:state]).to_not be_empty
  end
  it "should have a email" do
    apartment = Apartment.create(
    street: '10880 Malibu point',
    city: 'Malibu',
    manager: 'TS',
    state: 'CA',
    price: '5000',
    bedrooms: 10,
    bathrooms: 8,
    pets: 'yes',
    user_id: user.id
    )
    expect(apartment.errors[:email]).to_not be_empty
  end
  it "should have price" do
    apartment = Apartment.create(
    street: '10880 Malibu point',
    city: 'Malibu',
    manager: 'TS',
    state: 'CA',
    email: 'ts@im.com',
    bedrooms: 10,
    bathrooms: 8,
    pets: 'yes',
    user_id: user.id
    )
    expect(apartment.errors[:price]).to_not be_empty
  end


  it "should have a bedrooms" do
    apartment = Apartment.create(
    street: '10880 Malibu point',
    city: 'Malibu',
    manager: 'TS',
    state: 'CA',
    email: 'ts@im.com',
    price: '5000',
    bathrooms: 8,
    pets: 'yes',
    user_id: user.id
    )
    expect(apartment.errors[:bedrooms]).to_not be_empty

  end

  it "should have a bathrooms" do
    apartment = Apartment.create(
    street:'10880 Malibu point',
    city: 'Malibu',
    manager: 'TS',
    state: 'CA',
    email: 'ts@im.com',
    price: '5000',
    bedrooms: 10,
    pets: 'yes',
    user_id: user.id
    )
    expect(apartment.errors[:bathrooms]).to_not be_empty
  end
  it "should have a pets" do
    apartment = Apartment.create(
    street: '10880 Malibu point',
    city: 'Malibu',
    manager: 'TS',
    state: 'CA',
    email: 'ts@im.com',
    price: '5000',
    bedrooms: 10,
    bathrooms: 8,
    user_id: user.id
    )
    expect(apartment.errors[:pets]).to_not be_empty
    end
  it "should have a user_id" do
    apartment = Apartment.create(
    street: '10880 Malibu point',
    city: 'Malibu',
    manager: 'TS',
    state: 'CA',
    email: 'ts@im.com',
    price: '5000',
    bedrooms: 10,
    bathrooms: 8,
    pets: 'yes'
    )
    expect(apartment.errors[:user_id]).to_not be_empty
  end

end
