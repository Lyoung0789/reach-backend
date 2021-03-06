class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.integer :goal_id
      t.string :description
      t.string :title
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
