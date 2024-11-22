# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Review.destroy_all
Boat.destroy_all
User.destroy_all

user = User.create!(email: 'test@test.com', password: 'azerty')

boats = [
  {
    name: "Sea Spirit",
    content: "Luxury yacht perfect for day cruises and special events",
    location: "Miami, FL",
    capacity: 12,
    size: 3,
    daily_price: 1200,
    user_id: user,
    url_img: "https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?ixlib=rb-4.0.3"
  },
  {
    name: "Wave Runner",
    content: "Sporty speedboat ideal for water sports and coastal adventures",
    location: "San Diego, CA",
    capacity: 6,
    size: 3,
    daily_price: 450,
    user_id: user,
    url_img: "https://images.unsplash.com/photo-1569263979104-865ab7cd8d13?ixlib=rb-4.0.3"
  },
  {
    name: "Island Hopper",
    content: "Comfortable catamaran great for island exploration",
    location: "Honolulu, HI",
    capacity: 8,
    size: 3,
    daily_price: 800,
    user_id: user,
    url_img: "https://images.unsplash.com/photo-1593351415075-3bac9f45c877?ixlib=rb-4.0.3"
  },
  {
    name: "Coastal Explorer",
    content: "Traditional sailing boat perfect for peaceful voyages",
    location: "Seattle, WA",
    capacity: 4,
    size: 3,
    daily_price: 300,
    user_id: user,
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_3.png"
  },
  {
    name: "Ocean King",
    content: "Premium yacht with full amenities and crew",
    location: "Los Angeles, CA",
    capacity: 15,
    size: 3,
    daily_price: 2000,
    user_id: user,
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_2.png"
  },
  {
    name: "Bay Cruiser",
    content: "Ideal boat for bay tours and fishing trips",
    location: "San Francisco, CA",
    capacity: 6,
    size: 3,
    daily_price: 500,
    user_id: user,
    url_img: "https://images.unsplash.com/photo-1605281317010-fe5ffe798166?ixlib=rb-4.0.3"
  },
  {
    name: "Caribbean Dream",
    content: "Perfect for Caribbean island hopping and snorkeling",
    location: "Key West, FL",
    capacity: 10,
    size: 3,
    daily_price: 900,
    user_id: user,
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_1.png"
  },
  {
    name: "Lake Master",
    content: "Comfortable pontoon boat for lake activities",
    location: "Lake Tahoe, NV",
    capacity: 8,
    size: 3,
    daily_price: 350,
    user_id: user,
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_0.png"
  },
  {
    name: "Harbor Light",
    content: "Classic sailboat for harbor cruises",
    location: "Newport, RI",
    capacity: 4,
    size: 3,
    daily_price: 275,
    user_id: user,
    url_img: "https://images.unsplash.com/photo-1540946485063-a40da27545f8?ixlib=rb-4.0.3"
  },
  {
    name: "Gulf Star",
    content: "Modern yacht with fishing equipment and sun deck",
    location: "Tampa, FL",
    capacity: 8,
    size: 3,
    daily_price: 750,
    user_id: user,
    url_img: "https://cdn.midjourney.com/2679368b-170d-4ab4-95d8-c0e8470abc08/0_3.png"
  }
]
boats.each do |boat|
  Boat.create!(
    name: boat[:name],
    content: boat[:content],
    location: boat[:location],
    capacity: boat[:capacity],
    size: boat[:size],
    daily_price: boat[:daily_price],
    user: boat[:user_id],
    url_img: boat[:url_img]
  )
end
