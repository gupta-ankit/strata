# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.where(email: "test@example.com").first_or_create! do |u|
  u.id = SecureRandom.uuid
  u.password = "password"
end

strata_plan = StrataPlan.where(name: "StrataPlan123").first_or_create!
residential_unit = ResidentialUnit.where(strata_plan: strata_plan, name: "101").first_or_create!
resident = Resident.where(user: user, residential_unit: residential_unit).first_or_create!
admin = StrataAdmin.where(strata_plan: strata_plan, user: user, role: :caretaker).first_or_create!

user.confirm