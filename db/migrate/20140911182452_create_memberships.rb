class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id, null: false
      t.integer :meetup_id, null: false
      t.string :role, null: false, default: 'member'
    end
    add_index :memberships, [:user_id, :meetup_id], unique: true
  end
end
