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
  { title: "Trip to the Moroccan Desert", description: "Experience the magic of the Moroccan desert with camel rides, overnight stays in Berber tents, and guided desert tours.", rating: "4.9", image: "https://images.unsplash.com/photo-1677838929227-e0fc8a5885ea?q=80&w=1929&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"15-06-2024" },
  { title: "Horse Riding by the Beach in Morocco", description: "Enjoy a serene horse riding experience along the beautiful beaches of Morocco, with breathtaking views and guided tours.", rating: "4.8", image: "https://images.unsplash.com/photo-1512073995635-c7001b907e21?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"20-07-2024" },
  { title: "Sunset Yoga in Morocco", description: "Relax and rejuvenate with sunset yoga sessions in picturesque Moroccan locations, led by experienced instructors.", rating: "4.7", image: "https://images.unsplash.com/photo-1579126038374-6064e9370f0f?q=80&w=2031&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"25-08-2024" },
  { title: "Cultural Tour of Marrakech", description: "Immerse yourself in the vibrant culture of Marrakech with visits to historic sites, bustling souks, and traditional Moroccan cuisine.", rating: "4.9", image: "https://images.unsplash.com/photo-1719084198651-5ac167cb3e6e?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"15-09-2024" },
  { title: "Moroccan Cooking Class", description: "Learn the secrets of Moroccan cuisine with hands-on cooking classes, featuring local ingredients and traditional recipes.", rating: "4.8", image: "https://images.unsplash.com/photo-1643019237176-8ae0859f1123?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"30-09-2024" },
  { title: "Atlas Mountains Hiking Adventure", description: "Embark on a hiking adventure in the Atlas Mountains, exploring stunning landscapes and Berber villages.", rating: "4.7", image: "https://images.unsplash.com/photo-1598895265733-3f1d3138454a?q=80&w=2086&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"10-10-2024" },
  { title: "Essaouira Beach Retreat", description: "Relax at the beautiful beaches of Essaouira with guided tours, water sports, and cultural experiences.", rating: "4.9", image: "https://images.unsplash.com/photo-1624802751971-d425380ee247?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"20-10-2024" },
  { title: "Casablanca City Tour", description: "Discover the modern and historical highlights of Casablanca with guided city tours, including visits to the Hassan II Mosque.", rating: "4.8", image: "https://images.unsplash.com/photo-1710211653894-dca97880cd2e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"05-11-2024" },
  { title: "Fes Medina Exploration", description: "Explore the ancient medina of Fes with guided tours, learning about its rich history, architecture, and cultural heritage.", rating: "4.7", image: "https://images.unsplash.com/photo-1518979142375-743eaff7a103?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"15-11-2024" },
  { title: "Rabat Historical Tour", description: "Visit the historical sites of Rabat, including the Royal Palace, Hassan Tower, and the Kasbah of the Udayas.", rating: "4.9", image: "https://images.unsplash.com/photo-1570029604322-77c356acea7f?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", date:"25-11-2024" },
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
