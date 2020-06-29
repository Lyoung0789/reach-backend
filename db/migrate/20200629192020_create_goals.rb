class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title 
      t.string :description 
      t.string :image_url
      t.string :category
      t.boolean :completed, default: false 
      t.timestamps
    end
  end
end
