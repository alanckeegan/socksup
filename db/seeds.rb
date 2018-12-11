# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Message.destroy_all
Question.destroy_all
Listing.destroy_all
Quiz.destroy_all
User.destroy_all
Employer.destroy_all

puts 'Creating 4 users...'
alan = User.create!(first_name: "Alan", last_name: "Keegan", email: 'alan@socksup.co.uk', password: '123456', photo: 'https://avatars2.githubusercontent.com/u/41964244?v=4')
marina = User.create!(first_name: "Marina", last_name: "Kjaer", email: 'marina@socksup.co.uk', password: '123456', photo: 'https://avatars3.githubusercontent.com/u/38080513?v=4')
annie = User.create!(first_name: "Annie", last_name: "Gilchirst", email: 'annie@socksup.co.uk', password: '123456', photo: 'https://avatars3.githubusercontent.com/u/42188961?v=4')
jascha = User.create!(first_name: "Jascha", last_name: "Drel", email: 'jascha@socksup.co.uk', password: '123456', photo: 'https://avatars3.githubusercontent.com/u/42733581?v=4')


puts 'Creating 5 employers...'
nvc = Employer.create!(name: 'NVC', city: 'Barcelona', description: 'A fun local bar which offers many drinks including cocktails and has a delicious pizza kitchen and a pool table', address: '334 Carrer de Roger de Flor', contact: 'nvc@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1532452119098-a3650b3c46d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
sutton = Employer.create!(name: 'Sutton', city: 'Barcelona', description: 'Everyones favourite club', address: '16, Carrer de Tuset', contact: 'sutton@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
sunsetgrill = Employer.create!(name: 'Sunset Grill',description: 'The open-sided eatery serves up high-quality grilled dishes with a stunning backdrop of the sun sinking into to Andaman Sea, all in a chic and romantic setting.', address: '16 Carrer del Call',city: 'Barcelona', contact: 'sunsetgrill@socksup.co.uk', photo: 'http://static.asiawebdirect.com/m/.imaging/1356x904/website/phuket/portals/phuket-com/homepage/phuket-magazine/top10-sunset-bars/allParagraphs/00/top10Set/03/image.jpg')
harmons = Employer.create!(name: 'Harmons',description: 'Lovely cosy local irish pub which shows sports, has quiz nights, bingo and kraoke most nights', address: '4 Centro Commercial Pinaras Elviria',city: 'Marbella', contact: 'harmons@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&dpr=1&auto=format&fit=crop&w=1000&q=80&cs=tinysrgb')
zabloskis = Employer.create!(name: 'Zabloskis',description: 'Airy, old-school joint luring locals with a chill vibe, happy-hour deals, billiards & pinball.', address: '107 N 6th St, Brooklyn',city: 'New York City', contact: 'zabloskis@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1436018626274-89acd1d6ec9d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80')
cheztonton = Employer.create!(name: 'Chez Ton Ton',description: 'Airy, old-school joint luring locals with a chill vibe, happy-hour deals, billiards & pinball.', address: '16 Place Saint-Pierre',city: 'Toulouse', contact: 'cheztonton@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
bipbip = Employer.create!(name: 'Bip Bip Bar',description: 'A very informal, popular bar where famous local musicians play choro & samba music.', address: 'R. Alm. Goncalves, 50 - Loja D - Copacabana',city: 'Rio de Janeiro', contact: 'bipbipbar@socksup.co.uk', photo: 'https://images.unsplash.com/photo-1485872299829-c673f5194813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1082&q=80')

puts 'Creating 2 employer users'
pierre = User.create!(first_name: "Pierre", last_name: "Herve-Bazin", email: 'pierre@socksup.co.uk', password: '123456', photo: 'https://avatars2.githubusercontent.com/u/42039881?v=4', employer_id: sutton.id)
lucas = User.create!(first_name: "Lucas", last_name: "Rocha", email: 'lucas@socksup.co.uk', password: '123456', photo: 'https://avatars1.githubusercontent.com/u/42940098?v=4', employer_id: nvc.id)

puts 'Creating 3 quizzes....'
suttonquiz = Quiz.create!()
nvcquiz = Quiz.create!()
sunsetgrillquiz = Quiz.create!()


puts 'Creating 5 questions per quiz...'
Question.create!(question: 'Which of these ingredients is not in a Gin Tonic?', question_type: 'multiple_choice', quiz_id: suttonquiz.id, correct_answer: 'Sand', wrong_answers: ['Gin', 'Tonic', 'Lime'])
Question.create!(question: 'Which garnish would you put on a cosmopolitan?', question_type: 'multiple_choice', quiz_id: suttonquiz.id, correct_answer: 'Orange peel', wrong_answers: ['Celery', 'Pumpkin', 'Kumquat'])
Question.create!(question: 'How would you greet a new customer', question_type: 'multiple_choice', quiz_id: suttonquiz.id, correct_answer: 'Hello, what can I get for you?', wrong_answers: ['What do you want?', 'Tell me...', 'NEEXXTTT!!!'])
Question.create!(question: 'How would your friends/family describe you in 3 words?', question_type: 'text_field', quiz_id: suttonquiz.id)
Question.create!(question: 'Describe your ideal work environment in one sentence?', question_type: 'text_field', quiz_id: suttonquiz.id)
Question.create!(question: 'Which of these ingredients is not in a Gin Tonic?', question_type: 'multiple_choice', quiz_id: nvcquiz.id, correct_answer: 'Sand', wrong_answers: ['Gin', 'Tonic', 'Lime'])
Question.create!(question: 'Which garnish would you put on a cosmopolitan?', question_type: 'multiple_choice', quiz_id: nvcquiz.id, correct_answer: 'Orange peel', wrong_answers: ['Celery', 'Pumpkin', 'Kumquat'])
Question.create!(question: 'How would you greet a new customer', question_type: 'multiple_choice', quiz_id: nvcquiz.id, correct_answer: 'Hello, what can I get for you?', wrong_answers: ['What do you want?', 'Tell me...', 'NEEXXTTT!!!'])
Question.create!(question: 'How would your friends/family describe you in 3 words?', question_type: 'text_field', quiz_id: nvcquiz.id)
Question.create!(question: 'Describe your ideal work environment in one sentence?', question_type: 'text_field', quiz_id: nvcquiz.id)
Question.create!(question: 'Which of these ingredients is not in a Gin Tonic?', question_type: 'multiple_choice', quiz_id: sunsetgrillquiz.id, correct_answer: 'Sand', wrong_answers: ['Gin', 'Tonic', 'Lime'])
Question.create!(question: 'Which garnish would you put on a cosmopolitan?', question_type: 'multiple_choice', quiz_id: sunsetgrillquiz.id, correct_answer: 'Orange peel', wrong_answers: ['Celery', 'Pumpkin', 'Kumquat'])
Question.create!(question: 'How would you greet a new customer', question_type: 'multiple_choice', quiz_id: sunsetgrillquiz.id, correct_answer: 'Hello, what can I get for you?', wrong_answers: ['What do you want?', 'Tell me...', 'NEEXXTTT!!!'])
Question.create!(question: 'How would your friends/family describe you in 3 words?', question_type: 'text_field', quiz_id: sunsetgrillquiz.id)
Question.create!(question: 'Describe your ideal work environment in one sentence?', question_type: 'text_field', quiz_id: sunsetgrillquiz.id)


puts 'Creating 11 listings...'
hostesssutton = Listing.create!(title: 'Hostess',hours_per_week: 20, pay_per_hour: 10, start_date: '01-05-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented hostess for our amazing club which prides itsef in telling local coding bootcamp students they are not dressed well enough to enter. Casual flexible position.',  employer_id: sutton.id, quiz_id: suttonquiz.id, photo: 'https://images.unsplash.com/photo-1532452119098-a3650b3c46d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
waiternvc = Listing.create!(title: 'Waiter',hours_per_week: 20, pay_per_hour: 9, start_date: '01-06-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting bartenders for our cosy bar which prides itsef in serving local coding bootcamp students. Casual flexible position.',  employer_id: nvc.id, quiz_id: nvcquiz.id, photo: 'https://images.unsplash.com/photo-1516788875874-c5912cae7b43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2553&q=80')
baristanvc = Listing.create!(title: 'Barista',hours_per_week: 15, pay_per_hour: 8, start_date: '01-06-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented barrista for our cosy bar which prides itsef in serving local coding bootcamp students. Casual flexible position.',  employer_id: nvc.id, quiz_id: nvcquiz.id, photo: 'https://images.unsplash.com/photo-1507226983735-a838615193b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
pizzanvc = Listing.create!(title: 'Pizza Chef',hours_per_week: 30, pay_per_hour: 8, start_date: '01-06-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting bartenders for our cosy bar which prides itsef in serving local coding bootcamp students. Casual flexible position.',  employer_id: nvc.id, quiz_id: nvcquiz.id, photo: 'https://images.unsplash.com/photo-1511516412963-801b050c92aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
babysittersunset = Listing.create!(title: 'Babysitter',hours_per_week: 20, pay_per_hour: 10, start_date: '01-06-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented babysitter to look after our local coding bootcamp students after their long days of coding, their brians have minimal funcionality. Casual flexible position.',  employer_id: sunsetgrill.id, quiz_id: sunsetgrillquiz.id, photo: 'https://images.unsplash.com/photo-1489760176169-fd3d32805239?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80')
headbarsutton = Listing.create!(title: 'Head Barman',hours_per_week: 30, pay_per_hour: 12, start_date: '01-06-2019'.to_datetime, end_date: '01-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented head bartender for our amazing club which prides itsef in telling local coding bootcamp students they are not dressed well enough to enter. Casual flexible position.',  employer_id: sutton.id, quiz_id: suttonquiz.id, photo: 'https://www.shaker-uk.com/wp-content/uploads/2015/10/IMG_8591.jpg')
barbacksunset = Listing.create!(title: 'Bar back',hours_per_week: 35, pay_per_hour: 7, start_date: '01-05-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented hostess for our amazing club which prides itsef in telling local coding bootcamp students they are not dressed well enough to enter. Casual flexible position.',  employer_id: sunsetgrill.id, quiz_id: sunsetgrillquiz.id, photo: 'https://s3.us-east-2.amazonaws.com/tales-prod-mediabucket-1w7ck12fqo2qd/assets/images/2016/3/Qi8JAOxzBcG5_660x0_mtdhGWCw.jpg')
bartendernvc = Listing.create!(title: 'Bartender',hours_per_week: 20, pay_per_hour: 8, start_date: '05-07-2019'.to_datetime, end_date: '05-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting bartenders for our cosy bar which prides itsef in serving local coding bootcamp students. Casual flexible position.',  employer_id: nvc.id, quiz_id: nvcquiz.id, photo: 'http://libertador.edu.pe/wp-content/uploads/2015/05/1.jpg')
barbacksutton = Listing.create!(title: 'Bar back',hours_per_week: 25, pay_per_hour: 7, start_date: '01-06-2019'.to_datetime, end_date: '31-07-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented barback for our amazing club which prides itsef in telling local coding bootcamp students they are not dressed well enough to enter. Casual flexible position.',  employer_id: sutton.id, quiz_id: suttonquiz.id, photo: 'https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80')
cocktailsunset = Listing.create!(title: 'Bar/Cocktail Master',hours_per_week: 35, pay_per_hour: 12, start_date: '01-05-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented hostess for our amazing club which prides itsef in telling local coding bootcamp students they are not dressed well enough to enter. Casual flexible position.',  employer_id: sunsetgrill.id, quiz_id: sunsetgrillquiz.id, photo: 'https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1586&q=80')
bartendersunset = Listing.create!(title: 'Bartender',hours_per_week: 35, pay_per_hour: 9, start_date: '01-05-2019'.to_datetime, end_date: '31-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented bartender for our amazing restuarant which prides itsef in serving local coding bootcamp students delicious cocktails. Casual flexible position.',  employer_id: sunsetgrill.id, quiz_id: sunsetgrillquiz.id, photo: 'http://static.asiawebdirect.com/m/.imaging/1356x904/website/phuket/portals/phuket-com/homepage/phuket-magazine/top10-sunset-bars/allParagraphs/00/top10Set/03/image.jpg')
barmaidsutton = Listing.create!(title: 'Bar Maid',hours_per_week: 25, pay_per_hour: 11, start_date: '15-06-2019'.to_datetime, end_date: '15-08-2019'.to_datetime, description: 'We are looking for reliable, personable, well presented waiting bartenders for our amazing club which prides itsef in telling local coding bootcamp students they are not dressed well enough to enter. Casual flexible position.',  employer_id: sutton.id, quiz_id: suttonquiz.id, photo: 'https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')

puts 'Creating 8 submissions ...'

Submission.create!(user_id: marina.id, listing_id: hostesssutton.id, submitted: true)
Submission.create!(user_id: annie.id, listing_id: hostesssutton.id, submitted: true)
Submission.create!(user_id: alan.id, listing_id: headbarsutton.id, submitted: true)
Submission.create!(user_id: jascha.id, listing_id: headbarsutton.id, submitted: true)
Submission.create!(user_id: marina.id, listing_id: bartendernvc.id, submitted: true)
Submission.create!(user_id: jascha.id, listing_id: bartendernvc.id, submitted: true)
Submission.create!(user_id: alan.id, listing_id: bartendernvc.id, submitted: true)
Submission.create!(user_id: annie.id, listing_id: bartendernvc.id, submitted: true)


puts 'Finished!'
