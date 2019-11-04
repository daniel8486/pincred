class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :address
      t.string :phone
      t.string :email
      t.string :phone_two

      t.timestamps
    end
  end
end
