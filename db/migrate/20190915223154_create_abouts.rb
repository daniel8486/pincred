class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :description
      t.text :text
      t.boolean :status

      t.timestamps
    end
  end
end
