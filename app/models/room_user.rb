class RoomUsers < ActiveRecord::Migration[6.0]

  belongs_to :room
  belongs_to :user
end
  def change
    create_table :room_users do |t|
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end