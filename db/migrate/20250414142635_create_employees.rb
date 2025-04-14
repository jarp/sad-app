class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.boolean :is_active
      t.boolean :is_manager
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
