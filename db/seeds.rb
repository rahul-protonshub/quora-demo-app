# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: "test@test.com", password: "password", password_confirmation: "password")
user2 = User.create(email: "test@one.com", password: "password", password_confirmation: "password")

topic1 = Topic.find_or_create_by(description: "Travel and living", user_id: user1.id)
topic2 = Topic.find_or_create_by(description: "AI and Machine Learning", user_id: user2.id)
topic3 = Topic.find_or_create_by(description: "The Civil Rights", user_id: user1.id)

question1 = Question.create(name: "What is the fare for travelling to italy fron spain ?", user_id: user1.id, topic_id: topic1.id)
question2 = Question.create(name: "What is minimum salary hike in AI ?", user_id: user2.id, topic_id: topic2.id)
question3 = Question.create(name: "What are the basic rights of a person in there country?", user_id: user1.id, topic_id: topic3.id)
question4 = Question.create(name: "What is the fare for travelling to italy fron germany ?", user_id: user1.id, topic_id: topic1.id)
question5 = Question.create(name: "People have right to challenge government rules ?", user_id: user2.id, topic_id: topic3.id)


answer1 = Answer.create(description: "According to MMT it is approx 5000$ for 2d/3n", question_id: question1.id, user_id: user1.id)
answer2 = Answer.create(description: "Approx 50% minimum hike in AI", question_id: question2.id, user_id: user2.id)
answer3 = Answer.create(description: "Equality", question_id: question3.id, user_id: user1.id)
answer4 = Answer.create(description: "According to section 16 person can challenge anyone.", question_id: question3.id, user_id: user2.id)