class CreateStrataAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :strata_admins, id: :uuid do |t|
      t.references :strata_plan, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :role

      t.timestamps
    end
  end
end
