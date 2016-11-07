# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
date = Date.parse('2016-11-07')
    365.times do |i|
      date = date.next
      args = {
               title:  Faker::Hipster.sentence,
               author: Faker::Name.name,
               body:   Faker::Hipster.paragraphs(3).join,
               publication_date: date
             }
      Article.create(args)
      puts "Seeded article #{i + 1} of 365."
    end
