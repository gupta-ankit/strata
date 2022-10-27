class CreateResidentialUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :residential_units, id: :uuid do |t|
      t.string :name
      t.references :strata_plan, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
