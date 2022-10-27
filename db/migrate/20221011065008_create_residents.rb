class CreateResidents < ActiveRecord::Migration[7.0]
  def change
    create_table :residents, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :residential_unit, null: false, foreign_key: true, type: :uuid
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
