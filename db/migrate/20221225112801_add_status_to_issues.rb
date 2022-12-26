class AddStatusToIssues < ActiveRecord::Migration[7.0]
  def change
    create_enum :issue_status, ["reported", "in_progress", "done"]
    add_column :issues, :status, :issue_status
    add_index :issues, :status
  end
end
