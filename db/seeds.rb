# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = []
5.times do |i|
  user = User.where(email: "test#{i}@example.com").first_or_create! do |u|
    u.id = SecureRandom.uuid
    u.password = "password"
  end
  users << user
end
user = users[0]

strata_plan = StrataPlan.where(name: "StrataPlan123").first_or_create!
residential_unit = ResidentialUnit.where(strata_plan: strata_plan, name: "101").first_or_create!
resident = Resident.where(user: user, residential_unit: residential_unit).first_or_create!
admin = StrataAdmin.where(strata_plan: strata_plan, user: user, role: :caretaker).first_or_create!
chat_room = ChatRoom.where(name: "Chat", strata_plan_id: strata_plan.id,
                           creator_id: user.id).first_or_create!
5.times do |i|
  ChatMessage.where(author: users[i], chat_room: chat_room).first_or_create! do |m|
    m.content = "Hello, World#{i}!"
  end
end

Issue.where(reporter: user, strata_plan:
  strata_plan).first_or_create! do |i|
  i.content = 'parking pipes leaking'
end

user.confirm