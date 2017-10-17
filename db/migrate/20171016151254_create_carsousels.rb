class CreateCarsousels < ActiveRecord::Migration[5.1]
  def change
    create_table :carsousels do |t|
      t.integer :no
      t.string :file

      t.timestamps
    end
  end
end
