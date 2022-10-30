class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues, id: :uuid do |t|
      t.references :strata_plan, null: false, foreign_key: true, type: :uuid
      t.references :reporter, null: false, foreign_key: { to_table: :users },
                   type: :uuid

      t.timestamps
    end
  end
end
