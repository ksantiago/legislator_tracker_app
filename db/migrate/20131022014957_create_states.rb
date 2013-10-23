class CreateStates < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :states do |t|
      t.string :name

      t.timestamps
    end
  end
end
