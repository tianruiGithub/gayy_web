class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title, null: false, default: ""
      t.string :img
      t.text :content
      
      t.timestamps
    end
  end
end
