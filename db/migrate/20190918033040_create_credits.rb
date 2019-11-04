class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.string :title
      t.text :content
      t.boolean :status

      t.timestamps
    end
  end
end
