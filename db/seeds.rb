# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Framework.create!(
  title: 'React',
  description: "React allows developers to create large web-applications that use data that can change over time, without reloading the page. It aims primarily to provide speed, simplicity and scalability. React processes only user interfaces in applications"
)

Framework.create!(
  title: 'Ruby on Rails',
  description: "Ruby on Rails, or simply Rails, is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller framework, providing default structures for a database, a web service, and web pages."
)

Framework.create!(
  title: 'React Native',
  description: "React Native lets you build mobile apps using only JavaScript. It uses the same design as React, letting you compose a rich mobile UI from declarative components."
)

10.times do
  Tutorial.create!(
    title: Faker::Lorem.word,
    description: Faker::Lorem.word,
    author: Faker::Lorem.word,
    url: "http://www.google.com",
    skill_level: Faker::Lorem.word,
    framework: Framework.all.sample
  )
end
