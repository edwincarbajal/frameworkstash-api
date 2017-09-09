# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

frameworks = ['React', 'Ruby on Rails', 'React Native']

frameworks.each do |framework|
  Framework.create!(
    title: framework,
    description: Faker::Lorem.word,
    )
end

10.times do
  Tutorial.create!(
    title: Faker::Lorem.word,
    description: Faker::Lorem.word,
    author: Faker::Lorem.word,
    url: Faker::Lorem.word,
    skill_level: Faker::Lorem.word,
    framework: Framework.all.sample
  )
end
