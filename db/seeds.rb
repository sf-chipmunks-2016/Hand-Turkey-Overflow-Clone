require 'faker'

10.times do 
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
end

30.times do 
  Question.create(question_title: Faker::Hacker.say_something_smart, question_body: Faker::Hacker.say_something_smart, user_id: rand(1..10))
end

21.times do 
  Answer.create(answer_body: Faker::Hacker.say_something_smart, user_id: rand(1..10), question_id: rand(1..30))
end