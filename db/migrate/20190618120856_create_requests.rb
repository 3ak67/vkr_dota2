class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :r1, null: false
      t.integer :r2, null: false
      t.integer :r3, null: false
      t.integer :r4, null: false
      t.integer :d1, null: false
      t.integer :d2, null: false
      t.integer :d3, null: false
      t.integer :d4, null: false
      t.timestamps
    end
  end
end
