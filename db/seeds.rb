# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Question.destroy_all
Listing.destroy_all
Quiz.destroy_all
Employer.destroy_all
User.destroy_all

puts 'Creating 4 users...'
pierre = User.create!(first_name: "Pierre", last_name: "Herve-Bazin", email: 'pierre@socksup.co.uk', password: '123456', photo: 'https://avatars2.githubusercontent.com/u/42039881?v=4')
lucas = User.create!(first_name: "Lucas", last_name: "Rocha", email: 'lucas@socksup.co.uk', password: '123456', photo: 'https://avatars1.githubusercontent.com/u/42940098?v=4')
alan = User.create!(first_name: "Alan", last_name: "Keegan", email: 'alan@socksup.co.uk', password: '123456', photo: 'https://avatars2.githubusercontent.com/u/41964244?v=4')
marina = User.create!(first_name: "Marina", last_name: "Kjaer", email: 'marina@socksup.co.uk', password: '123456', photo: 'https://avatars3.githubusercontent.com/u/38080513?v=4')

puts 'Creating 2 employers...'
nvc = Employer.create!(name: 'NVC', city: 'Barcelona', description: 'A fun local bar which offers many drinks including cocktails and has a delicious pizza kitchen', address: '334 Carrer de Roger de Flor', contact: 'nvc@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1532452119098-a3650b3c46d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
sutton = Employer.create!(name: 'Sutton', city: 'Barcelona', description: 'Everyones favourite club', address: '16, Carrer de Tuset', contact: 'sutton@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
sunsetgrill = Employer.create!(name: 'Sunset Grill',description: 'The open-sided eatery serves up high-quality grilled dishes with a stunning backdrop of the sun sinking into to Andaman Sea, all in a chic and romantic setting.', address: '16/12 Moo 6 Tambon Kamala',city: 'Phuket', contact: 'sunsetgrill@socksup.co.uk', photo: 'http://static.asiawebdirect.com/m/.imaging/1356x904/website/phuket/portals/phuket-com/homepage/phuket-magazine/top10-sunset-bars/allParagraphs/00/top10Set/03/image.jpg')
smokehouse = Employer.create!(name: 'Smokehouse',description: 'Famous restaurant located on beautiful island', address: '15 Carrer de Lepant',city: 'Ibiza', contact: 'smokehouse@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1522244451342-a41bf8a13d73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
smokehouse = Employer.create!(name: 'Smokehouse',description: 'Famous restaurant located on beautiful island', address: '15 Carrer de Lepant',city: 'Ibiza', contact: 'smokehouse@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1522244451342-a41bf8a13d73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')

puts 'Making 2 users employers...'

pierre.employer_id = linekers.id
lucas.employer_id = smokehouse.id

puts 'Creating quizzes....'
suttonquiz = Quiz.create!()
nvcquiz = Quiz.create!()
smokehousequiz = Quiz.create!()

puts 'Creating questions...'
Question.create!(question: 'Describe yourself in one word.', question_type: 'text_field', quiz_id: linkersquiz.id)
Question.create!(question: 'What is your greatest fear?', question_type: 'text_field', quiz_id: linkersquiz.id)
Question.create!(question: 'Which of these ingredients is not in a Gin Tonic?', question_type: 'multiple_choice', quiz_id: linkersquiz.id, correct_answer: 'Sand', wrong_answers: ['Gin', 'Tonic', 'Lime'])
Question.create!(question: 'What color are Jude Law\'s Eyes?', question_type: 'multiple_choice', quiz_id: linkersquiz.id, correct_answer: 'Who cares?', wrong_answers: ['Blue-green', 'Hazel', 'Blue'])
Question.create!(question: 'Who the bomb?', question_type: 'multiple_choice', quiz_id: linkersquiz.id, correct_answer: 'You the bomb', wrong_answers: ['Bomberman', 'Bombay', 'Bombastic Boys'])
Question.create!(question: 'What is your favorite song?', question_type: 'text_field', quiz_id: smokehousequiz.id)
Question.create!(question: 'How much garlic is too much garlic?', question_type: 'text_field', quiz_id: smokehousequiz.id)
Question.create!(question: 'Would you rather have fingers the size of legs, or legs the size of fingers?', question_type: 'text_field', quiz_id: smokehousequiz.id)
Question.create!(question: 'Which word best descriptes the shape of Brasilia?', question_type: 'multiple_choice', quiz_id: smokehousequiz.id, correct_answer: 'Airplane', wrong_answers: ['River', 'Turtle', 'Ellipse'])
Question.create!(question: 'What color is an airplane "black box"', question_type: 'multiple_choice', quiz_id: smokehousequiz.id, correct_answer: 'Orange', wrong_answers: ['Black', 'Grey', 'Blue'])

puts 'Creating listings...'
Listing.create!(title: 'Bartender',hours_per_week: 20, start_date: '01-12-2018'.to_datetime, end_date: '31-12-2018'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting staff, butlers, bartenders for events & private parties. Casual flexible position.',  employer_id: linekers.id, quiz_id: linkersquiz.id, photo: 'https://images.unsplash.com/photo-1515674213736-54d14b4285b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
Listing.create!(title: 'Bartender',hours_per_week: 40, start_date: '01-01-2019'.to_datetime, end_date: '31-01-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting staff, butlers, bartenders for events & private parties. Casual flexible position.',  employer_id: smokehouse.id, quiz_id: smokehousequiz.id, photo: 'https://images.unsplash.com/photo-1468072114808-903e572b8ead?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1332&q=80')
Listing.create!(title: 'Waitress',hours_per_week: 20, start_date: '01-12-2018'.to_datetime, end_date: '31-12-2018'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting staff, butlers, bartenders for events & private parties. Casual flexible position.',  employer_id: smokehouse.id, quiz_id: smokehousequiz.id, photo: 'https://images.unsplash.com/photo-1511421616335-5a9846f1afcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80')
Listing.create!(title: 'Hostess',hours_per_week: 30, start_date: '01-01-2019'.to_datetime, end_date: '31-01-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting staff, butlers, bartenders for events & private parties. Casual flexible position.',  employer_id: linekers.id, quiz_id: linkersquiz.id, photo: 'https://images.unsplash.com/photo-1453614512568-c4024d13c247?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=01be54aef2c30ab337248a5bc1439602&auto=format&fit=crop&w=1789&q=80')
Listing.create!(title: 'PR',hours_per_week: 25, start_date: '01-12-2018'.to_datetime, end_date: '31-12-2018'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting staff, butlers, bartenders for events & private parties. Casual flexible position.',  employer_id: linekers.id, quiz_id: linkersquiz.id, photo: 'https://images.unsplash.com/photo-1525857332689-4b3110c2d3f3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=64092aab3ca44d0dd8f1314166dba348&auto=format&fit=crop&w=1256&q=80')
Listing.create!(title: 'Pot wash',hours_per_week: 30, start_date: '01-01-2019'.to_datetime, end_date: '31-01-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting staff, butlers, bartenders for events & private parties. Casual flexible position.',  employer_id: smokehouse.id, quiz_id: smokehousequiz.id, photo: 'https://images.unsplash.com/photo-1470114755716-3e1124c6c3bd?ixlib=rb-0.3.5&s=804af933165df2475beefbd57c0634db&auto=format&fit=crop&w=1588&q=80')
puts 'Finished!'
