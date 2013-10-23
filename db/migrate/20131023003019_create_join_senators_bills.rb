class CreateJoinSenatorsBills < ActiveRecord::Migration
  def change
    create_table :politics do |t|
      t.integer :senator_id
      t.integer :bill_id

      t.timestamps
    end
  end
end
