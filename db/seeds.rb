require 'csv'
Story.destroy_all


CSV.foreach(Rails.root.join('db', 'stories.csv'), headers: true, col_sep: ";") do |row|

    Story.create( {
            max_age: row['Universe Max Age'],
            min_age: row['Universe Min Age'],
            universe_name: row['Universe Name'],
            description: row['Description'],
            title: row['Title'],
            key: row['cloudinary key'],
    } )
  end

# csv.each do |row|
#     t = Universe.new
#     t.max_age = row['Max']
#     t.min_age = row['Min']
#     t.name = row['Name']
#     t.description = row['Description']
#     t.title = row['Title']
#     t.key = row['Key']
#     puts "Creating Universe"
#     t = Universe.create!(
#     max_age: row['Max'],
#     min_age: row['Min'],
#     name: row['Name'],
#     description: row['Description'],
#     title: row['Title'],
#     key: row['Key'],
#   )
#   end

  puts "There are now #{Story.count} rows in the Universes table"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
