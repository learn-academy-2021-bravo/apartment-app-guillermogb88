# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create email: 'gg@gg3.com', password: '123456', password_confirmation: '123456'

apartments = [

{
    street:'10880 Malibu point',
    city:'Malibu',
    state:'CA',
    manager: 'TS',
    email:'email',
    price:'5000',
    bedrooms:10,
    bathrooms:8,
    pets:'yes',
    user_id:user.id,
},
{
    street:"249 sullivan st",
    city:'New York',
    state:'NY',
    manager:'lx',
    email:'email',
    price:'500',
    bedrooms:1,
    bathrooms:2,
    pets:'yes',
    user_id:user.id,
}
]


apartments.each do |value|
    Apartment.create value 
    puts "creating apartment: #{value}"
end