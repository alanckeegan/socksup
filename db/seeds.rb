# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Listing.destroy_all
Quiz.destroy_all
Employer.destroy_all

puts 'Creating employers...'
linekers = Employer.create!(name: 'Linekers', city: 'Barcelona')
smokehouse = Employer.create!(name: 'Smokehouse', city: 'Ibiza')

puts 'Creating quizzes....'
linkersquiz = Quiz.create!()
smokehousequiz = Quiz.create!()

puts 'Creating listings...'
Listing.create!(title: 'Bartender', employer_id: linekers.id, quiz_id: linkersquiz.id)
Listing.create!(title: 'Hostess', employer_id: linekers.id, quiz_id: linkersquiz.id)
Listing.create!(title: 'PR', employer_id: linekers.id, quiz_id: linkersquiz.id)
Listing.create!(title: 'Bartender', employer_id: smokehouse.id, quiz_id: smokehousequiz.id)
Listing.create!(title: 'Waitress', employer_id: smokehouse.id, quiz_id: smokehousequiz.id)
Listing.create!(title: 'Pot wash', employer_id: smokehouse.id, quiz_id: smokehousequiz.id)

## ------- THESE ARE THE SEEDS WE CAN USE ONCE THE PHOTO COLUMN HAS BEEN MIGRATED --------------##
# Listing.create!(title: 'Bartender', employer_id: linekers, quiz_id: linkersquiz, photo: 'https://images.unsplash.com/photo-1515674213736-54d14b4285b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
# Listing.create!(title: 'Hostess', employer_id: linekers, quiz_id: linkersquiz, photo: 'https://images.unsplash.com/photo-1453614512568-c4024d13c247?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=01be54aef2c30ab337248a5bc1439602&auto=format&fit=crop&w=1789&q=80')
# Listing.create!(title: 'PR', employer_id: linekers, quiz_id: linkersquiz, photo: 'https://images.unsplash.com/photo-1525857332689-4b3110c2d3f3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=64092aab3ca44d0dd8f1314166dba348&auto=format&fit=crop&w=1256&q=80')
# Listing.create!(title: 'Bartender', employer_id: smokehouse, quiz_id: smokehousequiz, photo: 'https://images.unsplash.com/photo-1468072114808-903e572b8ead?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1332&q=80')
# Listing.create!(title: 'Waitress', employer_id: smokehouse, quiz_id: smokehousequiz, photo: 'https://images.unsplash.com/photo-1511421616335-5a9846f1afcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80')
# Listing.create!(title: 'Pot wash', employer_id: smokehouse, quiz_id: smokehousequiz, photo: 'https://images.unsplash.com/photo-1470114755716-3e1124c6c3bd?ixlib=rb-0.3.5&s=804af933165df2475beefbd57c0634db&auto=format&fit=crop&w=1588&q=80')
puts 'Finished!'
