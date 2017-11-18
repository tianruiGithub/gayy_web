class CreateCarsousels < ActiveRecord::Migration[5.1]
  def change
    create_table :carsousels do |t|
      t.integer :no
      t.string :file, null: false, default: ""

      t.timestamps
    end
  end
end
