class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false, index: true
      t.date :birthdate
      t.boolean :is_active, default: true
      t.boolean :is_manager, default: false
      t.references :department, null: true, foreign_key: true

      t.timestamps
    end
  end
end
