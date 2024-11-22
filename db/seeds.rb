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
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_3.png",
    url_img_two: "https://cdn.midjourney.com/19160b4a-7e8d-44b5-a7f1-9f257c251462/0_2.png",
    url_img_three: "https://cdn.midjourney.com/c5c0e255-2b23-4f9b-bcee-9d8644b9bcc2/0_1.png"
  },
  {
    name: "Wave Runner",
    content: "Sporty speedboat ideal for water sports and coastal adventures",
    location: "San Diego, CA",
    capacity: 6,
    size: 3,
    daily_price: 450,
    user_id: user,
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_2.png",
    url_img_two: "https://cdn.midjourney.com/c5c0e255-2b23-4f9b-bcee-9d8644b9bcc2/0_3.png",
    url_img_three: "https://cdn.midjourney.com/9298d762-8170-4387-8965-14e50e699b4d/0_0.png"
  },
  {
    name: "Island Hopper",
    content: "Comfortable catamaran great for island exploration",
    location: "Honolulu, HI",
    capacity: 8,
    size: 3,
    daily_price: 800,
    user_id: user,
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_1.png",
    url_img_two: "https://cdn.midjourney.com/9298d762-8170-4387-8965-14e50e699b4d/0_2.png",
    url_img_three: "https://cdn.midjourney.com/d04262af-587f-4ea3-92d1-86e7cfd8af76/0_0.png"
  },
  {
    name: "Coastal Explorer",
    content: "Traditional sailing boat perfect for peaceful voyages",
    location: "Seattle, WA",
    capacity: 4,
    size: 3,
    daily_price: 300,
    user_id: user,
    url_img: "https://cdn.midjourney.com/ed1c5235-22bb-49d3-aab4-30d802bd95f5/0_0.png",
    url_img_two: "https://cdn.midjourney.com/d04262af-587f-4ea3-92d1-86e7cfd8af76/0_1.png",
    url_img_three: "https://cdn.midjourney.com/d04262af-587f-4ea3-92d1-86e7cfd8af76/0_2.png"
  },
  {
    name: "Ocean King",
    content: "Premium yacht with full amenities and crew",
    location: "Los Angeles, CA",
    capacity: 15,
    size: 3,
    daily_price: 2000,
    user_id: user,
    url_img: "https://cdn.midjourney.com/2679368b-170d-4ab4-95d8-c0e8470abc08/0_3.png",
    url_img_two: "https://cdn.midjourney.com/73829a85-a9bf-4cd6-b375-a9e37a1af9f8/0_0.png",
    url_img_three: "https://cdn.midjourney.com/73829a85-a9bf-4cd6-b375-a9e37a1af9f8/0_1.png"
  },
  {
    name: "Bay Cruiser",
    content: "Ideal boat for bay tours and fishing trips",
    location: "San Francisco, CA",
    capacity: 6,
    size: 3,
    daily_price: 500,
    user_id: user,
    url_img: "https://cdn.midjourney.com/2679368b-170d-4ab4-95d8-c0e8470abc08/0_0.png",
    url_img_two: "https://cdn.midjourney.com/73829a85-a9bf-4cd6-b375-a9e37a1af9f8/0_2.png",
    url_img_three: "https://cdn.midjourney.com/b70e0d49-807f-4d01-b08f-952d4ebea0b3/0_1.png"
  },
  {
    name: "Caribbean Dream",
    content: "Perfect for Caribbean island hopping and snorkeling",
    location: "Key West, FL",
    capacity: 10,
    size: 3,
    daily_price: 900,
    user_id: user,
    url_img: "https://cdn.midjourney.com/36513796-6f71-43f8-9174-ed485e7508da/0_2.png",
    url_img_two: "https://cdn.midjourney.com/b70e0d49-807f-4d01-b08f-952d4ebea0b3/0_0.png",
    url_img_three: "https://cdn.midjourney.com/6585e254-3068-4054-bc4f-5ae9bcbc7d1c/0_3.png"
  },
  {
    name: "Lake Master",
    content: "Comfortable pontoon boat for lake activities",
    location: "Lake Tahoe, NV",
    capacity: 8,
    size: 3,
    daily_price: 350,
    user_id: user,
    url_img: "https://cdn.midjourney.com/7d0baeb7-f25a-4572-ad91-bb0ad978e658/0_3.png",
    url_img_two: "https://cdn.midjourney.com/b856ac15-3304-40ed-9837-c540d25cb853/0_1.png",
    url_img_three: "https://cdn.midjourney.com/6585e254-3068-4054-bc4f-5ae9bcbc7d1c/0_0.png"
  },
  {
    name: "Harbor Light",
    content: "Classic sailboat for harbor cruises",
    location: "Newport, RI",
    capacity: 4,
    size: 3,
    daily_price: 275,
    user_id: user,
    url_img: "https://cdn.midjourney.com/73829a85-a9bf-4cd6-b375-a9e37a1af9f8/0_1.png",
    url_img_two: "https://cdn.midjourney.com/19e46b7b-7c3a-491f-a29f-4fe1003f4d19/0_1.png",
    url_img_three: "https://cdn.midjourney.com/73829a85-a9bf-4cd6-b375-a9e37a1af9f8/0_0.png"
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
    url_img: boat[:url_img],
    url_img_two: boat[:url_img_two],
    url_img_three: boat[:url_img_three]
  )
end
