class CreateIntroduces < ActiveRecord::Migration[5.1]
  def change
    create_table :introduces do |t|
      t.text :content

      t.timestamps
    end
  end
end
