class CreateHeros < ActiveRecord::Migration[5.1]
  def change
    create_table :heros do |t|
      t.integer :hero_id, null: false
      t.string :name, null: false
      t.string :localized_name, null: false
      t.string :primary_attr, null: false
      t.string :attack_type, null: false
      t.string :roles
      t.integer :legs
      t.string :portrait
      t.timestamps
    end
  end
end