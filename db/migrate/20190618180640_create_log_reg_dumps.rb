class CreateLogRegDumps < ActiveRecord::Migration[5.1]
  def change
    create_table :log_reg_dumps do |t|
      t.json :dump, null: false
      t.timestamps
    end
  end
end
