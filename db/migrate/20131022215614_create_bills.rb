class CreateBills < ActiveRecord::Migration
  def up
    create_table :bills do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :bills do |t|
      t.string :name

      t.timestamps
    end
  end
end
