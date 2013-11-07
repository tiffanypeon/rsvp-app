class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :event_id
      t.integer :guest_id
      t.boolean :status, :default => false

      t.timestamps
    end
  end
end
