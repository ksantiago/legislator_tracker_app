class UsersStatesSenators < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.integer :user_id
      t.integer :senator_id
      t.integer :state_id

      t.timestamps
    end
  end
end
