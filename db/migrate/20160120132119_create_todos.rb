class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :startdate
      t.string :enddate
      t.integer :priority
      t.string :description
      t.string :status

      t.timestamps null: false
    end
  end
end
