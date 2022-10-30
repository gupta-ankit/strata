class CreateChatRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_rooms, id: :uuid do |t|
      t.references :creator, null: false, foreign_key: { to_table: :users },
                   type: :uuid

      t.timestamps
    end
  end
end
