class CreateChatMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_messages, id: :uuid do |t|
      t.references :chat_room, null: false, foreign_key: true, type: :uuid
      t.references :author, null: false, foreign_key: {to_table: :users}, type:
        :uuid

      t.timestamps
    end
  end
end
