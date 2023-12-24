# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create!(email: 'admin@admin.com', password: 'admin123')

4.times do
  Card.create!(title: Faker::Lorem.sentence(word_count: 3), description: Faker::Lorem.paragraph(sentence_count: rand(10..20)))
end

Info.create!(main_title: Faker::Lorem.sentence(word_count: 3), main_subtitle: Faker::Lorem.sentence(word_count: 3), secondary_title: Faker::Lorem.sentence(word_count: 3), secondary_subtitle: Faker::Lorem.sentence(word_count: 3), about: Faker::Lorem.paragraph(sentence_count: rand(10..20)))
