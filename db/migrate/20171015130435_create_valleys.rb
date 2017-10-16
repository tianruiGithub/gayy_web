class CreateValleys < ActiveRecord::Migration[5.1]
  def change
    create_table :valleys do |t|
      t.text :content

      t.timestamps
    end
  end
end
