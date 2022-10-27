# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_11_065415) do
# Could not dump table "residential_units" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "residents" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "strata_admins" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "strata_plans" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "users" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  add_foreign_key "residential_units", "strata_plans"
  add_foreign_key "residents", "residential_units"
  add_foreign_key "residents", "users"
  add_foreign_key "strata_admins", "strata_plans"
  add_foreign_key "strata_admins", "users"
end
