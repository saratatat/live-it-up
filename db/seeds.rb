# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Service.destroy_all
puts "Creating services database..."
require 'faker'

services = [
  { title: "Luxury Bali Vacation Package", description: "Experience the best of Bali with our all-inclusive luxury vacation package, featuring 5-star accommodations, guided tours, and exclusive activities.", rating: "4.9", image: "https://www.visionvivaah.com/blog/wp-content/uploads/2019/12/Event-Organisers-For-Dance-Parties-1024x514.jpg",date:"15-06-2024" },
  { title: "Adventure in the Swiss Alps", description: "Join us for an exhilarating adventure in the Swiss Alps, including skiing, snowboarding, and mountaineering.", rating: "4.8", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlG4gUZItbOw_w8qHKKhmZArpnVYd4WkPQwM_v9QAg8wJUE0oiDtvX2B_JzCpyv2gtsPo&usqp=CAU",date:"15-06-2024" },
  { title: "Cultural Tour of Japan", description: "Discover the rich cultural heritage of Japan with visits to historic temples, tea ceremonies, and traditional crafts.", rating: "4.7", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tH87KbkqOU798228vSpdSox82YWh8D1smEdg_8xIHJBiyJED4JdZkcLPZLHsFKKbTwk&usqp=CAU",date:"15-06-2024" },
  { title: "Safari in Kenya", description: "Embark on a thrilling safari in Kenya, with opportunities to see the Big Five and experience the Masai Mara.", rating: "4.9", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHxtYZOwBg0E_zstxDvUy1dZcX2bAU7_6z5Txu5AzyjvM3TVAwnovvi40CQ9hhzHQmNSA&usqp=CAU",date:"15-06-2024" },
  { title: "Mediterranean Cruise", description: "Relax on a luxurious Mediterranean cruise, visiting beautiful ports in Italy, Greece, and Spain.", rating: "4.8", image:"", date:"15-06-2024"},
  { title: "New York City Explorer", description: "Explore the iconic sights and sounds of New York City, including Times Square, Central Park, and Broadway shows.", rating: "4.7", image: "",date:"15-06-2024" },
  { title: "Australian Outback Adventure", description: "Experience the rugged beauty of the Australian Outback with guided tours and unique wildlife encounters.", rating: "4.6", image: "",date:"15-06-2024" },
  { title: "Romantic Paris Getaway", description: "Enjoy a romantic getaway in Paris, the City of Light, with visits to the Eiffel Tower, Louvre Museum, and Seine River cruises.", rating: "4.9", image: "",},
  { title: "Tropical Hawaiian Vacation", description: "Escape to the tropical paradise of Hawaii, with pristine beaches, volcano tours, and traditional luaus.", rating: "4.8", image: "",date:"15-06-2024" },
  { title: "Egyptian Pyramids Tour", description: "Discover the ancient wonders of Egypt with guided tours of the Pyramids, Sphinx, and Nile River cruises.", rating: "4.7", image: "",date:"15-06-2024" },
  { title: "Costa Rican Eco-Adventure", description: "Explore the natural beauty of Costa Rica with eco-friendly tours, wildlife encounters, and adventure activities.", rating: "4.8", image: "",date:"15-06-2024" },
  { title: "Scandinavian Capitals Tour", description: "Visit the vibrant capitals of Scandinavia, including Copenhagen, Oslo, and Stockholm, with guided city tours.", rating: "4.7", image: "",date:"15-06-2024" },
  { title: "Caribbean Beach Resort", description: "Relax at an all-inclusive beach resort in the Caribbean, with crystal-clear waters, water sports, and gourmet dining.", rating: "4.9", image: "",date:"15-06-2024" },
  { title: "South African Wine Tour", description: "Indulge in the fine wines of South Africa with vineyard tours, wine tastings, and gourmet food pairings.", rating: "4.6", image: "",date:"15-06-2024" },
  { title: "Great Wall of China Experience", description: "Walk along the historic Great Wall of China and explore ancient Chinese culture with guided tours.", rating: "4.7", image: "",date:"15-06-2024" },
  { title: "Icelandic Adventure", description: "Experience the natural wonders of Iceland, including glaciers, geysers, and the Northern Lights.", rating: "4.8", image: "" },
  { title: "Venetian Canal Cruise", description: "Sail through the enchanting canals of Venice on a romantic gondola ride and explore historic landmarks.", rating: "4.9", image: "",date:"15-06-2024" },
  { title: "Brazilian Carnival Experience", description: "Join the vibrant festivities of the Brazilian Carnival with street parades, samba shows, and cultural tours.", rating: "4.7", image: "",date:"15-06-2024" },
  { title: "Patagonian Expedition", description: "Embark on an adventurous expedition to Patagonia with breathtaking landscapes, hiking trails, and wildlife sightings.", rating: "4.8", image: "",date:"15-06-2024" },
  { title: "Greek Islands Hopping", description: "Discover the beauty of the Greek Islands with visits to Santorini, Mykonos, and Crete, enjoying beaches and ancient ruins.", rating: "4.9", image: "",date:"15-06-2024"},
  { title: "Canadian Rockies Tour", description: "Explore the majestic Canadian Rockies with scenic drives, hiking, and wildlife viewing in national parks.", rating: "4.8", image: "" },
  { title: "Moroccan Desert Adventure", description: "Experience the magic of the Moroccan desert with camel rides, overnight stays in Berber tents, and desert tours.", rating: "4.7", image: "", date:"15-06-2024" },
  { title: "Austrian Alpine Escape", description: "Relax in the serene Austrian Alps with spa retreats, alpine hiking, and charming mountain villages.", rating: "4.8", image: "",date:"15-06-2024" },
  { title: "Italian Culinary Tour", description: "Savor the flavors of Italy with cooking classes, wine tastings, and visits to local markets and gourmet restaurants.", rating: "4.9", image: "", date:"15-06-2024" },
  { title: "Peruvian Andes Trek", description: "Trek through the stunning landscapes of the Peruvian Andes with visits to Machu Picchu and ancient Inca sites.", rating: "4.7", image: "",date:"15-06-2024" }
]

services.each do |service|
  Service.create!(
    title: service[:title],
    description: service[:description],
    rating: service[:rating],
    image: service[:image],
    date: service[:date],
    user_id: User.last.id
  )
end
